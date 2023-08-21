a = 2;
pi=3.14159;
t=[0:0.001:1/a];
f1= a*cos(2*pi*5*a*t);
f2=(a/2)*cos(2*pi*6*a*t);
f3=(a/4)*cos(2*pi*10*a*t);
figure;
plot(t,f1,"red",t,f2,"blue",t,f3,"green")
title("Various cosine functions")
legend('f1','f2','f3')
xlabel('Time')
ylabel('Amplitude')

