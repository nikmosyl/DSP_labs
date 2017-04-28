clear;

Fs = 32000;

ts = 0 : 1/Fs : 0.001 - 1/Fs;
N = length(ts);

a2 = 0.075;
f2 = 9500;
%%%%%%%%%%%%%%%%%%%%%%1

x1 = sin(2*pi*8000*ts)+a2*sin(2*pi*f2*ts);   %signal s pomehoi a2 f2
X1 = abs(fft(x1));                           %bistroe preobrazovanie Fyrie

plot(ts,x1); grid on;

figure;
subplot (3,2,1);
stem(X1); grid on

x1w = x1.*hanning(N)';
X1w = abs(fft(x1w));

subplot (3,2,2);
stem(X1w); grid on

%%%%%%%%%%%%%%%%%%%%%%%%2

x2 = sin(2*pi*8500*ts)+a2*sin(2*pi*f2*ts);   %signal s pomehoi a2 f2
X2 = abs(fft(x2));                           %bistroe preobrazovanie Fyrie

subplot (3,2,3);
stem(X2); grid on

x2w = x2.*hanning(N)';
X2w = abs(fft(x2w));

subplot (3,2,4);
stem(X2w); grid on

%%%%%%%%%%%%%%%%%%%%%%%%3

x3 = sin(2*pi*8750*ts)+a2*sin(2*pi*f2*ts);   %signal s pomehoi a2 f2
X3 = abs(fft(x3));                           %bistroe preobrazovanie Fyrie

subplot (3,2,5);
stem(X3); grid on

x3w = x3.*hanning(N)';
X3w = abs(fft(x3w));

subplot (3,2,6);
stem(X3w); grid on