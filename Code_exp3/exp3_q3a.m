[opera, fs] = audioread("D:\Course docs\5th sem\EE386 - DSP Lab\Experiment-3\Opera.wav");
N = length(opera);
figure;
magnitude_spectrum(opera, fs)
figure;
subplot(6,2,1)
magnitude_spectrum(opera(1:N/11-1), fs)
subplot(6,2,2)
magnitude_spectrum(opera(N/11:2*N/11-1), fs)
subplot(6,2,3)
magnitude_spectrum(opera(2*N/11:3*N/11-1), fs)
subplot(6,2,4)
magnitude_spectrum(opera(3*N/11:4*N/11-1), fs)
subplot(6,2,5)
magnitude_spectrum(opera(4*N/11:5*N/11-1), fs)
subplot(6,2,6)
magnitude_spectrum(opera(5*N/11:6*N/11-1), fs)
subplot(6,2,7)
magnitude_spectrum(opera(6*N/11:7*N/11-1), fs)
subplot(6,2,8)
magnitude_spectrum(opera(7*N/11:8*N/11-1), fs)
subplot(6,2,9)
magnitude_spectrum(opera(8*N/11:9*N/11-1), fs)
subplot(6,2,10)
magnitude_spectrum(opera(9*N/11:10*N/11-1), fs)
subplot(6,2,11)
magnitude_spectrum(opera(10*N/11:N), fs)

