A = 140;
B = 146;

fs = 200;
dt = 1/fs;

t = 0:dt:10-dt;

xa = 0.1*sin(A*pi*t) + cos(B*pi*t);

h1 = transpose(hanning(215));
y1 = fft(xa(1:215).*h1, 215);
f1 = (0:214)*fs/215;
N1 = length(y1);

figure;
plot(f1, abs(y1/N1))
title("Magnitude of DFT of 215 samples after windowing");
xlabel("Frequency (Hz)");
ylabel("Magnitude");

h2 = transpose(hanning(415));
y2 = fft(xa(1:415).*h2, 415);
f2 = (0:414)*fs/415;
N2 = length(y2);

figure;
plot(f2, abs(y2/N2))
title("Magnitude of DFT of 415 samples after windowing");
xlabel("Frequency (Hz)");
ylabel("Magnitude");

h3 = transpose(hanning(1115));
y3 = fft(xa(1:1115).*h3, 1115);
f3 = (0:1114)*fs/1115;
N3 = length(y3);

figure;
plot(f3, abs(y3/N3))
title("Magnitude of DFT of 1115 samples after windowing");
xlabel("Frequency (Hz)");
ylabel("Magnitude");

h4 = transpose(hanning(1515));
y4 = fft(xa(1:1515).*h4, 1515);
f4 = (0:1514)*fs/1515;
N4 = length(y4);

figure;
plot(f4, abs(y4/N4))
title("Magnitude of DFT of 1515 samples after windowing");
xlabel("Frequency (Hz)");
ylabel("Magnitude");

h5 = transpose(hanning(1915));
y5 = fft(xa(1:1915).*h5, 1915);
f5 = (0:1914)*fs/1915;
N5 = length(y5);

figure;
plot(f5, abs(y5/N5))
title("Magnitude of DFT of 1915 samples after windowing");
xlabel("Frequency (Hz)");
ylabel("Normalized");

