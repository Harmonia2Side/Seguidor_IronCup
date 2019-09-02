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
  if (leu_chegada == 2)
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
  if (leu_curva == 3)
    return 1;
  else
    return 0;
}


void confereSaiuDaLinha(unsigned int linePosition) {
  if (linePosition == 0 || linePosition == (NUM_SENSORS-1)*1000) {
    saiu++;
    if (saiu > 150) {
      freia();
      delay(99999);
    }
  }
  else
    saiu = 0;
}
