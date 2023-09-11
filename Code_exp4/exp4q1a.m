a=2;
t=[0:1/120:2-(1/120)];
Fs=120
y=sin(2*(pi)*15*a*t)
figure;
plot(t,y);
xlabel('Sinusoid of frequency 30Hz')
ylabel('Amplitude')
title('Sinusoid Signal')
f=Fs*(0:119)/120

figure;
stem(f,abs(fft(y,120)/120))
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('DFT of sinusoid signal')
figure;
plot(abs(fft(y)/120))