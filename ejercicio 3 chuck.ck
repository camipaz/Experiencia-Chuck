  Impulse imp => ResonZ filt => NRev rev => dac;
                    0.10 => rev.mix;
                    600.0 => filt.Q => filt.gain;
                    while (1) {
                      Std.mtof(Math.random2(60, 84)) =>
                      filt.freq; 1.0 => imp.next;
                      100 :: ms => now;
                    }