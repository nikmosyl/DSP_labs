clear;

Fs = 32000;

ts = 0 : 1/Fs : 0.001 - 1/Fs;
N = length(ts);

a2 =0.075;
f2 = 9500;

%%%%%%%%%%%%%%%%%% 1

x1 = sin(2*pi*8000*ts)+a2*sin(2*pi*f2*ts);   %signal s pomehoi a2 f2
X1 = abs(fft(x1));                           %bistroe preobrazovanie Fyrie

subplot (3,1,1);
stem(X1); grid on;

%%%%%%%%%%%%%%%%% 2

x2 = sin(2*pi*8500*ts)+a2*sin(2*pi*f2*ts);   
X2 = abs(fft(x2));                           

subplot (3,1,2);
stem(X1); grid on;

%%%%%%%%%%%%%%%% 3

x3 = sin(2*pi*8750*ts)+a2*sin(2*pi*f2*ts);   
X3 = abs(fft(x3));                          

subplot (3,1,3);
stem(X1); grid on;
