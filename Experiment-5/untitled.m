[y,Fs] = audioread("venugopal.wav");
figure(1)
plot(y)
title('Audio signal name')
xlabel("Time");
ylabel("Amplitude");
m = abs(fft(y));
F = (0:length(m)-1)*Fs/length(m);
figure(2)
plot(F,m)
title('FFT of name audio signal')
xlabel("Frequency(Hz)");
ylabel("Amplitude");
window_length = 100; % Length of the Hamming window (samples)
overlap = 10;        % Overlap between consecutive windows (samples)
window_length_2 = 150;

% Create and plot the spectrogram
figure(3);
spectrogram(y(:,2),hamming(300),150,4000,'yaxis')
title('Spectrogram of Venugopal');