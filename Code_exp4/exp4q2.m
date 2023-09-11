Fs=200;
t=[0:1/Fs:10-1/Fs];
A=140;
B=146;
Samples=[215,415,1115,1515,1915];
for i=1:length(Samples)
    L=Samples(i)
    x=0.1*sin(A*pi*t)+cos(B*pi*t);
    f=Fs*(0:L-1)/L;
    y=abs(fft(x,L))/L;
    figure;
    plot(f,y)
    xlabel('Frequency (Hz)')
    ylabel('Magnitude')
    title(['DFT of x(t) with ', num2str(L),' samples'])
end


