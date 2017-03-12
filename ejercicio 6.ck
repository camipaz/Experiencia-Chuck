TriOsc Cami;

//declarar oscilador
Cami =>dac;
//declarar variable para frecuencia 
3000=> float frecuenciaCami;
//declarar variable para frecuencia mínima y máxima
20=> float min;
200000=> float max;
Math.random2(0, 100) => int chance;
                  if (chance < 50) {
                    <<< "lower than 50">>>;
                      //elegir frecuencia aleatoria entre min y max
                      Math.random2f(min,max) => frecuenciaCami;
                      //asignando frecuencia aleatoria a mi oscilador
                      frecuenciaCami=>Cami.freq;
                      //tiempo transcurre 1 segundo
                      1:: second=>now;
                  }
                  else {
                    <<< "equal or higher than 50">>>; 
                      //definir nota oscilador
                      440=>Cami.freq;
                      //definir duración aleatoria de la nota
                      Math.random2f(min,max) ::ms=> now;
                  }
                  