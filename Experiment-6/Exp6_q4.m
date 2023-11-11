% Problem 4:
fs3 = 720;
Wp3 = 10/(fs3/2);
Ws3 = 20/(fs3/2);
fs = 720;
Wp = 10/(fs/2);
Ws = 20/(fs/2);

[n,Wn] = buttord(Wp,Ws,2,40);
% n,Wn*(fs/2)

% Transfer function 
[b,a] = butter(n,Wn,"low");
% b,a

% Order and cutoff freq 
[n4,Wn4] = cheb1ord(Wp3,Ws3,-2,40);
% n,Wn*(fs/2)

% Transfer function 
[b3,a3] = cheby1(n4,2,Wn4,"low");
% b,a

% Pole-Zero plot
[z,p,k] = cheby1(n4,2,Wn4,"low");
figure;
zplane(z,p)

% Bode plot
% Bode plot 
H3 = tf(b3,a3,1/fs3);
f3 = linspace(0,50,100);
[mag3,phase3] = bode(H3,2*pi*f3);
figure;
plot(f3,db(squeeze(mag3)))
xlabel("Frequency[Hz]")
ylabel("Maginitude[dB]")
title("Bode plot")


% Impulse response
figure;
impz(b3,a3,300,300)
hold on
impz(b,a,300,300)
hold off
legend('Chebyshev','Butterworth')

% Step response
figure;
stepz(b3,a3,300,300)
hold on
stepz(b,a,300,300)
hold off
legend('Chebyshev','Butterworth')
