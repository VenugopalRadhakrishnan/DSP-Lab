whistle_recorder()
[w, fs] = audioread('whistle.wav');
figure;
plot(w)
xlabel('Time (s)');
ylabel('Amplitude');
title('Plot of whistle')

ff = 1774.6667;
tolerance = 0.05;
upper_ff = (1+tolerance) * ff;
lower_ff = (1-tolerance) * ff;

magnitude_spectrum(w, fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum of whistle')
N = length(w);
y = fft(w);
mag_spectrum = abs(y);
mag_spectrum_db = 20 * log10(mag_spectrum);
f = (0:N-1) * (fs/N);
[~, idx] = max(mag_spectrum_db);
fundamental_frequency = f(idx);

if fundamental_frequency <= upper_ff && fundamental_frequency >= lower_ff
    disp('ACCESS GRANTED')
else
    disp('ACCESS DENIED')
end
