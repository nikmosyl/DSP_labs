Fs = 1;
ts = 0: 1/Fs : 29;

x = cos(2*pi*ts/10);

N1 = 64;
N2 = 128;
N3 = 256;

X1 = abs(fft(x,N1));                    %FFT ot X ispolzya 64 otcheta, ostalnoe zabei 0s
X2 = abs(fft(x,N2));
X3 = abs(fft(x,N3));

F1 = [0 : N1-1]*Fs/N1;                  %poluchaem massiv dannix 
F2 = [0 : N2-1]*Fs/N2;
F3 = [0 : N3-1]*Fs/N3;

subplot(3,1,1);
plot(F1,x1); grid on;
title('N=64');

subplot(3,1,2);
plot(F2,x2); grid on;
title('N=128');

subplot(3,1,3);
plot(F3,x3); grid on;
title('N=256');