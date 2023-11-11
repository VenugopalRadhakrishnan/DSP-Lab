
a = 2; 
F_i = 2 + 2*a;
Ts = 1/100;
t = 0:Ts:10-Ts;
F = F_i + 9/10*t;
x = sin(2*pi*F.*t);

figure;
plot(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Chirp Signal');

figure;
X = fft(x, length(x));
f = linspace(0, 1/Ts,length(x));
plot(f, abs(X)/length(f));
ylabel('Frequency (Hz)');
xlabel('Magnitude');
title('Frequency Spectrum of Chirp Signal');
figure;
stem(f,abs(X)/length(f));
ylabel('Frequency (Hz)');
xlabel('Magnitude');
title('DFT of Chirp Signal');


% figure;
% spectrogram(x, hamming(100), 10, 1000, 100);
% xlim([0 25]);
% ylabel('Time (s)');
% xlabel('Frequency (Hz)');
% title('Spectrogram of Chirp Signal using Hamming window of length 100');
% 
% figure;
% spectrogram(x, hamming(150), 10, 1000, 100);
% xlim([0 25]);
% ylabel('Time (s)');
% xlabel('Frequency (Hz)');
% title('Spectrogram of Chirp Signal using Hamming window of length 150');
% 
% figure;
% spectrogram(x, hamming(200), 10, 1024, 100);
% xlim([0 25]);
% ylabel('Time (s)');
% xlabel('Frequency (Hz)');
% title('Spectrogram of Chirp Signal using Hamming window of length 200');
% 
% figure;
% spectrogram(x, hanning(200), 10, 1000, 100);
% xlim([0 25]);
% ylabel('Time (s)');
% xlabel('Frequency (Hz)');
% title('Spectrogram of Chirp Signal using Hanning window of length 200');
% 
% figure;
% spectrogram(x, hanning(100), 10, 1000, 100);
% xlim([0 25]);
% ylabel('Time (s)');
% xlabel('Frequency (Hz)');
% title('Spectrogram of Chirp Signal using Hanning window of length 100');
% 
% figure;
% spectrogram(x, blackman(100), 10, 1000, 100);
% xlim([0 25]);
% ylabel('Time (s)');
% xlabel('Frequency (Hz)');
% title('Spectrogram of Chirp Signal using Blackman window of length 100');
% figure;
% spectrogram(x, blackman(200), 10, 1000, 100);
% xlim([0 25]);
% ylabel('Time (s)');
% xlabel('Frequency (Hz)');
% title('Spectrogram of Chirp Signal using Blackman window of length 200');
