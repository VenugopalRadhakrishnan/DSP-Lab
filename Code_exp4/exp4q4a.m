z = readmatrix('Exp4Data2.txt');

h = hamming(500);

figure;
plot(h)
title("Hamming window")
xlabel("Samples")
ylabel("Magnitude")

z1 = z.*(h)';
Z = fft(z1,10000);
fs = 1;
f= 0:fs/(length(Z)-1):fs;

figure;
plot(f,abs(Z)/length(z))
title("Amplitude spectrum with Hamming window")
xlabel("Normalised Frequency(Hz)")
ylabel("Normalised Magnitude")