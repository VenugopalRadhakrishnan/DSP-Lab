a = 2;
pi=3.14159;
t=[0:1/(9*a):(1/a)-(1/(9*a))];
f1= a*cos(2*pi*5*a*t);
f2=(a/2)*cos(2*pi*6*a*t);
f3=(a/4)*cos(2*pi*10*a*t);
f4=f1+f2+f3;


Fs=18
y=fft(f4)
f=Fs*(0:8)/9
z=abs(y)/9
energy=y.^2/(4.5*Fs)
figure;
subplot(2,1,1)
stem(f,z)
title('Normalised FFT of signal sampled at 18 Hz')
xlabel('Frequency')
ylabel('Magnitude')
subplot(2,1,2)
stem(f,energy)
title('Normalised Energy density spectrum of signal sampled at 18 Hz')
xlabel('Frequency')
ylabel('Magnitude')

