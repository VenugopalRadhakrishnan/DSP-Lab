function magnitude_spectrum(signal, fs)
N = length(signal);
y = fft(signal);

%Finding magnitude spectrum
magnitude_spectrum = abs(y);

%Converting magnitude spectrum into decibels
magnitude_spectrum_db = db(magnitude_spectrum);

%Creating frquency axis
f = (0:N-1) * (fs/N);

%Finding fundamental frequency
[~, idx] = max(magnitude_spectrum_db);
fundamental_frequeny = f(idx);

%Plotting magnitude spectrum
plot(f, magnitude_spectrum_db);
xlim([0 1000])
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum')
grid on;

%Displaying fundamental frequency value
disp(['Fundamental frequency: ', num2str(fundamental_frequeny), 'Hz'])

end