[opera, fs] = audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-3\Opera.wav");
N = length(opera);

spectrogram(opera(N/10:2*N/10-1))