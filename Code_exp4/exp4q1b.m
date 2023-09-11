a=2;
t=[0:1/120:2-(1/120)];
Fs=120;
y=sin(2*(pi)*15*a*t);
f=Fs*(0:129)/130;
figure;
stem(f,abs(fft(y,130)/130))
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('DFT of sinusoid signal of first 130 samples')
