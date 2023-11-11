% Problem 3:
% Spectrogram
[s1,f2] = audioread("instru1.wav");
figure;
spectrogram(s1,hann(256),250,512,f2,'yaxis');view(-45,65);colormap jet
title('Spectrogram (Hanning)');

% Pitch Extraction
figure;
[~,f,t,ps] = spectrogram(s1,hann(1000),900,2000,f2,'xaxis');
imagesc(t, f, 10*log10(ps));
axis xy;
ylim([100 1000]); % zoom to the fundamental frequency range
xlabel('Time in s');
ylabel('Frequency in Hz');
title('Pitch Extraction');

% Butterworth bandpass(450-600 Hz;-60,30 dB)
fs = 1500;
Wp = [450/(fs/2),600/(fs/2)];
Ws = [400/(fs/2),650/(fs/2)];

% Order and cutoff freq 
[n,Wn] = buttord(Wp,Ws,-60,30);
% n,Wn*(fs/2)

% Transfer function 
[b2,a2] = butter(abs(n),Wn,"bandpass");
w = 0:0.01:pi;
[h,freq] = freqz(b2,a2,w);
m = 20*log10(abs(h));
figure;
plot((freq/pi)*750,m)
title('Butterworth response')
ylabel('Magnitude [dB]');
xlabel('Frequency [Hz]');

% Filtering 
s1_filter = filtfilt(b2,a2,s1);
t = 0:1/length(s1):1-1/length(s1);

% Spectrogram(filtered)
figure;
spectrogram(s1_filter,hann(256),250,512,fs,'yaxis');view(-45,65);colormap jet
title('Spectrogram (Hanning)');

% Pitch Extraction(filtered) 
figure;
[~,f,t,ps] = spectrogram(s1_filter,hann(4000),3999,8000,fs,'xaxis');
imagesc(t, f, 10*log10(ps));
axis xy;
ylim([440 600]); % zoom to the fundamental frequency range
xlabel('Time in s');
ylabel('Frequency in Hz');
title('Pitch Extraction');