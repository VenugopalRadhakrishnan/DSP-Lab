[y fs1]=audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-5\instru2.wav");
[x fs2]=audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-5\Opera.wav");
yfft=fft(y, length(y));
f1=linspace(0,fs1,length(y))
xfft=fft(x,length(x));
f2=linspace(0,fs2,length(x));

figure;
plot(f1,abs(yfft)/length(f1))
xlabel("Frequency(Hz)");
ylabel( "Magnitude");
title( "Frequency spectrum of instru2 audio signal")

figure;
spectrogram(y,hanning(200),0,length(y),fs1)
title("Spectrogram of instru2 audio signal")

figure;
plot(f2,abs(xfft)/length(x));
xlabel("Frequency(Hz)");
ylabel("Magnitude");
title("Frequency spectrum of opera audio signal");

figure;
spectrogram(x,hanning(200),0,length(x),fs2);
xlim([0 2.5])
title("Spectrogram of opera audio signal")

