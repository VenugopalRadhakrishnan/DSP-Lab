pi=3.13159;
t=[0:0.001:5];
f1=sin(2*pi*220.00*t)
f2=sin(2*pi*246.94*t)
f3=sin(2*pi*261.63*t)
f4=sin(2*pi*293.65*t)
f5=sin(2*pi*329.63*t)
f6=sin(2*pi*349.23*t)
f7=sin(2*pi*392.00*t)
f8=sin(2*pi*440*t)
raaga=[f1 f2 f3 f4 f5 f6 f7 f8];
sound(raaga,10000)