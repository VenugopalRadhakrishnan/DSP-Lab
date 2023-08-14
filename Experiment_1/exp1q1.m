a = 2;
pi=3.14159;
t = [-1:0.001:1];

y1=sin(20*pi*a*t)
y2=cos(5*pi*a*t+(pi/4));
y3=exp(-2*a*t);
y4=exp(-0.25*a*t).*sin(20*pi*t);
figure;
plot(t,y1,'red')
xlabel('t')
ylabel('y1')
figure;
plot(t,y2,'blue')
xlabel('t')
ylabel('y2')

figure;
plot(t,y3,'black')
xlabel('t')
ylabel('y3')

figure;
plot(t,y4,'green')
xlabel('t')
ylabel('y4')

