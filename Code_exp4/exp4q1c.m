a=2;
t=[0:1/120:5-(1/120)];
Fs=120
y=sin(2*(pi)*15*a*t)
for k=[1:5]
    L=120*k
    f=Fs*(0:L-1)/L
    figure;
    stem(f,abs(fft(y,L)/L))
    xlabel('Frequency (Hz)')
    ylabel('Amplitude')
    title(['DFT of sinusoid signal with ', num2str(L),' samples'])
end

