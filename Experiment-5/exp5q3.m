[y fs]=audioread( "D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-5\venugopal.wav");
yfft=fft(y,length(y));
f=linspace(0,fs,length(y));
figure;
plot(f,abs(yfft)/length(y))
xlabel("Frequency(Hz)");
ylabel("Magnitude");
title("Frequency spectrum of name");
figure;
spectrogram(y)
figure;
plot(y)
figure;
spectrogram(y,hanning(200),10,length(y),fs)

