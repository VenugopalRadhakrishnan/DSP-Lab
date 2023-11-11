% Problem 2:
s = load("ECG_Data.txt");
t1 = 0:1/length(s):1-1/length(s);
fs1 = 1000;

% Spectrogram
figure;
spectrogram(s,hann(300),290,800,fs1,'yaxis');view(-45,65);colormap jet
title('Spectrogram (Hanning)');

% Pitch Extraction
figure;
[~,f,t,ps] = spectrogram(s,hann(2000),1999,4000,fs1,'xaxis');colormap jet
imagesc(t, f, 10*log10(ps));
axis xy;
ylim([0 50]); % zoom to the fundamental frequency range
xlabel('Time in s');
ylabel('Frequency in Hz');

% Butterworth filter(0-30 Hz;10,-30 dB)
fs_4 = 200;
Wp = 0.5/(fs_4/2);
Ws = 30/(fs_4/2);

% Order and cutoff freq 
[n,Wn] = buttord(Wp,Ws,10,-30);
% n,Wn*(fs/2)

% Transfer function 
[b4,a4] = butter(abs(n),Wn,"low");
w = 0:0.01:pi;
[h,ph] = freqz(b4,a4,w);
m = 20*log10(abs(h));
figure;
plot((ph/pi)*100,m)
title('Butterworth response')
ylabel('Magnitude [dB]');
xlabel('Frequency [Hz]');

% Filtering 
s_filter = filtfilt(b4,a4,s);
figure;
plot(t1,s)
figure;
plot(t1,s_filter)

legend("Original","Filtered")