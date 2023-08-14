pi=3.13159;

[s,Fs]=audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment_1\speech.wav");
y=s*cos(2*pi*1000/10000);
t=linspace(0,length(s)/Fs,length(s))
figure;
plot(t,s)
xlabel('n')
ylabel('s(n)')
figure;
plot(t,y)
xlabel('n')
ylabel('y(n)')
N=1000;
f=linspace(0,Fs,N);
Sfft=abs(fft(s,N));
Yfft=abs(fft(y,N));
figure;
plot(f(1:N),Sfft(1:N));
xlabel('Frequency')
ylabel('Amplitude')
legend({'s(t)'})
figure;
plot(f(1:N),Yfft(1:N));
xlabel('Frequency')
ylabel('Amplitude')
legend({'y(t)'})