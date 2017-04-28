Fs = 1;
ts = 0: 1/Fs : 29;

x1 = cos(2*pi*ts/10);
x2 = [x1 x1];
x3 = [x1 x1 x1];

N = 2048;

X1 = abs(fft(x1,N));                    %FFT ot X ispolzya 64 otcheta, ostalnoe zabei 0s
X2 = abs(fft(x2,N));
X3 = abs(fft(x3,N));

F = [0 : N-1]*Fs/N;                  %poluchaem massiv dannix 

subplot(3,1,1);
plot(F,X1); grid on;
title('3 perioda');

subplot(3,1,2);
plot(F,X2); grid on;
title('6 periodov');

subplot(3,1,3);
plot(F,X3); grid on;
title('9 periodov');