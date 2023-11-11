% Problem 1:
fs = 720;
Wp = 10/(fs/2);
Ws = 20/(fs/2);

% Order and cutoff freq 
[n,Wn] = buttord(Wp,Ws,2,40);
% n,Wn*(fs/2)

% Transfer function 
[b,a] = butter(n,Wn,"low");
% b,a

% Pole-Zero plot
[z,p,k] = butter(n,Wn,"low");
figure;
zplane(z,p)

% Bode plot 
% Bode plot 
H = tf(b,a,1/fs);
f = linspace(0,50,100);
[mag,phase] = bode(H,2*pi*f);
figure;
plot(f,db(squeeze(mag)))
xlabel("Frequency[Hz]")
ylabel("Maginitude[dB]")
title("Bode plot")

% Impulse response
figure;
impz(b,a,300,300)

% Step response
figure;
stepz(b,a,300,300)