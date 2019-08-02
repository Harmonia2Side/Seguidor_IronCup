#define NUM_SENSORS             8    // number of sensors used
#define NUM_SAMPLES_PER_SENSOR  4    // samples per sensor reading
#define VELMIN                  75   // velocidade minima
#define VELMAX                  160  // velocidade maxima

int sensor[NUM_SENSORS] = {A7, A6, A5, A4, A3, A2, A1, A0};   //sensores de linha
const int motorEsq[3] = {11, 10, 9};  // {dig, dig, pwm}
const int motorDir[3] = {5, 4, 3};    // {dig, dig, pwm}
const int pin_chegada = 2;            // sensor de linha de chegada
const int pin_curva = 0;//COLOCAR PINO              // sensor de curva

int values[NUM_SENSORS];              // leituras atuais dos sensores
int calibratedMIN[NUM_SENSORS];       // valores de calibracao
int calibratedMAX[NUM_SENSORS];       // ^

int saiu = 0;                         // indica se o robo nao esta na linha
int leu_chegada = 0;                  // qtd de vezes SEGUIDAS que o sensor de chegada leu preto
int leu_curva = 0;                    // qtd de vezes SEGUIDAS que o sensor de curva leu preto
int passou_chegada = 0;               // qtd de vezes que passou a marcacao de chegada

int velEsq, velDir;
int reduz = 0;                        // contador para deixar a velocidade reduzida
int lastValue;                        // ultima posicao da linha lida
unsigned int last_proportional = 0;

//Variáveis de Contagem de pulsos
const byte encoderPinA = 2;
const byte encoderPinB = 3;
volatile long int nPulsosA = 0;
volatile long int nPulsosB = 0;

//Variáveis de temporização:
long int N_OVF = 65535L;                  //número máximo de pulsos contados pelo timer (16 bits)
long int tAlvo = 1000L;                      //tempo a se cronometrar, em segundos
long int FREQ_CLK = 16000000L;          //frequencia do clock
long int PRESC = 1024L;                   //Valor do prescaler
long int nAlvo = N_OVF -  (FREQ_CLK / PRESC) * ((float)tAlvo / 1000); //número de pulsos a se cronometrar

//Variáveis para cálculo de velocidade
volatile int velA = 0;
volatile int velB = 0;
const int nDentes = 10;
const float Diametro = 2.33;//em cm
const float kRoda = (1000 * PI*Diametro) / (nDentes*tAlvo); //tAlvo em ms

//********************************************************************

void setup() {

  setPinos();
  encoder_init();
  calibracao();
  posCalibracao();
  delay(500);

}

void loop() {

  int linePosition = readLine();

  confereChegada();

  int erro = PID(linePosition);

  if (erro < 0)
    velEsq = VELMAX + erro;
  else
    velDir = VELMAX - erro;

  if (confereCurva())
    reduz = 50;             //tempo para velo cidade ficar reduzida
  if(reduz > 0)
    reduzVelocidade();

  anda(velEsq, velDir);

  confereSaiuDaLinha(linePosition);
}

//********************************************************************

void setPinos() {
  pinMode(pin_chegada, INPUT);
  pinMode(pin_curva, INPUT);
  for (int i = 0; i < 3; i++) {
    pinMode(motorEsq[i], OUTPUT);
    pinMode(motorDir[i], OUTPUT);
  }
  para();
}

void encoder_init(){
  attachInterrupt(digitalPinToInterrupt(encoderPinA), countEncoderA, RISING);
  attachInterrupt(digitalPinToInterrupt(encoderPinB), countEncoderB, RISING);

  // initialize timer1
  TCCR1A = 0;
  TCCR1B = 0;

  TCNT1 = nAlvo;            // preload timer 65536-16MHz/PRESC/?Hz
  TCCR1B &= B11111000; //zera os tres ultimos bits
  TCCR1B |= B00000101; //prescaler = 1024
  TIMSK1 |= (1 << TOIE1);   // enable timer overflow interrupt
}
void countEncoderA() {
  nPulsosA++;
}
void countEncoderB() {
  nPulsosB++;
}
ISR(TIMER1_OVF_vect) {
  velA = nPulsosA * kRoda;
  velB = nPulsosB * kRoda;

  nPulsosA = 0;
  nPulsosB = 0;

  TCNT1 = nAlvo;            // preload timer
}

void calibracao() {
  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMIN[i] = 999;
    calibratedMAX[i] = 0;
  }
  for (int i = 0; i < 6; i++)
  {
    if (i % 2 == 0)
      anda(VELMIN, -VELMIN - 5);
    else
      anda(-VELMIN - 5, VELMIN);
    for (int j = 0; j < 15 ; j++) {
      calibrate();
    }
  }
}

//le os sensores e compara com os valores maximos e minimos
//essa funcao eh rodada varias vezes na calibracao
void calibrate() {
  for (int k = 0; k < 10; k++) {
    int value;
    int soma;
    for (int j = 0; j < NUM_SENSORS; j++) {
      value = analogRead(sensor[j]);

      if (value > calibratedMAX[j])
        calibratedMAX[j] = value;
      if (value < calibratedMIN[j])
        calibratedMIN[j] = value;
    }
    delay(8);
  }
}

//le os sensores e calcula a posicao da linha
int readLine()
{
  int linePosition = 0, on_line = 0;
  long int value;
  unsigned long avg = 0; // this is for the weighted total, which is long before division
  unsigned long sum = 0; // this is for the denominator which is <= 64000

  for (int j = 0; j < NUM_SENSORS; j++) {
    int samples = 0;
    for (int i = 0; i < NUM_SAMPLES_PER_SENSOR; i++) {
      value = analogRead(sensor[j]);
      samples += value;
    }
    value = samples / NUM_SAMPLES_PER_SENSOR;
    //calcula o valor de acordo com a calibracao
    value = ((value - calibratedMIN[j]) * 1000) / (calibratedMAX[j] - calibratedMIN[j]);
    values[j] = value;
    if (values[j] < 5) values[j] = 0;
    // keep track of whether we see the line at all
    if (value > 200) {
      on_line = 1;
    }
    // only average in values that are above a noise threshold
    if (value > 50) {
      avg += (long)(value) * 1000 * j;
      sum += value;
    }
  }
  if (!on_line)
  {
    // If it last read to the left of center, return 0.
    if (lastValue < (NUM_SENSORS - 1) * 1000 / 2)
      return 0;
    // If it last read to the right of center, return the max.
    else
      return (NUM_SENSORS - 1) * 1000;
  }
  lastValue = avg / sum;
  return lastValue;
}

void confereChegada() {
  if (digitalRead(pin_chegada)) {
    if (!saiu && !leu_curva)
      leu_chegada++;
  } else {
    leu_chegada = 0;
    return;
  }
  if (leu_chegada == 7)
    passou_chegada++;
  if (passou_chegada == 2) {
    freia();
    delay(99999); //aqui tem que colocar os 10 segundos
    passou_chegada = 0;
  }
}

int confereCurva() {
  if (digitalRead(pin_curva)) {
    if (!saiu && !leu_chegada) //verifica se esta seguindo a linha
      leu_curva++;
  } else
    leu_curva = 0;
  if (leu_curva == 7)
    return 1;
  else
    return 0;
}

void confereSaiuDaLinha(unsigned int linePosition) {
  if (linePosition == 0 || linePosition == 7000) {
    saiu++;
    if (saiu > 150) {
      freia();
      delay(99999);
    }
  }
  else
    saiu = 0;
}

void freia() {
  digitalWrite(motorEsq[0], LOW);
  digitalWrite(motorEsq[1], HIGH);
  analogWrite(motorEsq[2], 100);
  digitalWrite(motorDir[0], LOW);
  digitalWrite(motorDir[1], HIGH);
  analogWrite(motorDir[2], 100);
  delay(50);
  para();
}

void reduzVelocidade() {
  if(reduz > 30){
    velD = 0;
    velE = 0;
  }
  else{
    velD -= (reduz*2);
    velE -= (reduz*2);
  }
  reduz--;
}

int PID(unsigned int linePosition) {
  int proportional = (int)linePosition - 3500;
  int derivative = proportional - last_proportional;
  last_proportional = proportional;
  int erro = proportional * 2 / 21 + derivative * 5 / 8;
  if (erro > VELMAX)
    return VELMAX;
  if (erro < -VELMAX)
    return -VELMAX;
  return erro;
}

//acionamento dos motores
void anda(int velE, int velD)
{
  if (velE >= 40) {
    digitalWrite(motorEsq[0], HIGH);
    digitalWrite(motorEsq[1], LOW);
    analogWrite(motorEsq[2], velE);
  } else if (velE >= 0 && velE < 40) {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], 180 + 4 * velE);
  } else {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], -velE);
  }
  if (velD >= 40) {
    digitalWrite(motorDir[0], HIGH);
    digitalWrite(motorDir[1], LOW);
    analogWrite(motorDir[2], (int)(1.09 * velD));
  } else if (velD >= 0 && velD < 40) {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], (int)(1.09 * (180 + 4 * velD)));
  } else {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], (int)(1.09 * (-velD)));
  }
}

//desliga os motores
void para()
{
  digitalWrite(motorEsq[0], LOW);
  digitalWrite(motorEsq[1], LOW);
  analogWrite(motorEsq[2], 0);


  digitalWrite(motorDir[0], LOW);
  digitalWrite(motorDir[1], LOW);
  analogWrite(motorDir[2], 0);
}

//procurar a linha e centralizar apos a calibracao
void posCalibracao() {

  unsigned int linePosition;

  while (linePosition < 3450 || linePosition > 3550) {
    linePosition = readLine();
    int erro = (int)(linePosition - 3500) / 2;
    if (erro > VELMIN) erro = VELMIN + 5;
    if (erro < -VELMIN) erro = -VELMIN - 5;
    anda(erro, -erro);
  }
  para();

}

//printa os valores de calibracao
void printaCalibracao() {
  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMIN[i]);
    Serial.print(' ');
  }
  Serial.println();

  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMAX[i]);
    Serial.print(' ');
  }
  Serial.println();
  Serial.println();
}