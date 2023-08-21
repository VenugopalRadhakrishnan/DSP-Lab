a = 2;
pi=3.14159;
t=[0:1/(14*a):(1/a)-(1/(14*a))];
f1= a*cos(2*pi*5*a*t);
f2=(a/2)*cos(2*pi*6*a*t);
f3=(a/4)*cos(2*pi*10*a*t);
f4=f1+f2+f3;
%sampling frequency = 14a = 28hz ===> sampling time = 1/28 s
Ts=1/(14*a)
figure;
stem(f4)
title('Function sampled at 28 Hz')
xlabel('Samples')
ylabel('Amplitude')
figure;
plot(f4)
title('Function sampled at 28 Hz')
xlabel('Samples')
ylabel('Amplitude')