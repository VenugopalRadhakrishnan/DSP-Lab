a = 1 + mod(160, 3);

[piano, fs1] = audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-3\piano2.wav");
figure;
xlabel("Frequency")
ylabel("Magnitude")

magnitude_spectrum(piano, fs1)
title("FFT of Piano2")

[trumpet, fs2] = audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-3\trumpet2.wav");
figure;
xlabel("Frequency")
ylabel("Magnitude")

magnitude_spectrum(trumpet, fs2)
title("FFT of Trumpet2")

[violin, fs3] = audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-3\violin2.wav");
figure;
xlabel("Frequency")
ylabel("Magnitude")

magnitude_spectrum(violin, fs3)
title("FFT of Violin2")

[flute, fs4] = audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-3\flute2.wav");
figure;
xlabel("Frequency")
ylabel("Magnitude")

magnitude_spectrum(flute, fs4)
title("FFT of Flute2")