a = 2;
pi=3.14159;
t=[0:0.001:1/a];
f1= a*cos(2*pi*5*a*t);
f2=(a/2)*cos(2*pi*6*a*t);
f3=(a/4)*cos(2*pi*10*a*t);
f4=f1+f2+f3;
figure;

plot(t,f4)
title('Summation of three cosine functions')
legend('f4')
xlabel('Time')
ylabel('Amplitude')
