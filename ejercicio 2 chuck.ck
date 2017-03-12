//declarar oscilador sinusoidal
//conectarlo al dac
SinOsc s => dac;
//definir frecuencia del oscilador
440=>s.freq;
//definir la ganancia del oscilador

//dejar que el tiempo transcurra

for(0=>int contador; contador<4; contador++)
{
    0.3:: second => now;

    1.0=> s.gain;
0.3:: second =>now;
    0.0=> s.gain;
    }