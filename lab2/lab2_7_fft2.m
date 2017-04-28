
clear;
Fs = 20000;%32000;
ts = 0:1/Fs:0.005-1/Fs;
N = length(ts);
a2 = 0.075;
f2 = 9500;
f = zeros(N,1);
for i = 1 : N
    f(i) = (i-1)*Fs/N;
end

x1 = sin(2*pi*5000*ts)+a2*sin(2*pi*f2*ts);
X1 = 2*abs(fft(x1))/N;
subplot(3,2,1); stem(f,X1); grid on; title ('5000 Гц');

x2 = sin(2*pi*5500*ts)+a2*sin(2*pi*f2*ts);
X2 = 2*abs(fft(x2))/N;
subplot(3,2,3); stem(f,X2); grid on; title ('5500 Гц');

x3 = sin(2*pi*5750*ts)+a2*sin(2*pi*f2*ts);
X3 = 2*abs(fft(x3))/N;
subplot(3,2,5); stem(f,X3); grid on; title ('5750 Гц');

x1w = x1.*hanning(N)';    %0.5*(1-cos(2*pi*ts/(1-N)))
X1w = 2*abs(fft(x1w))/N;
subplot(3,2,2); stem(f,X1w); grid on; title ('5000 Гц (с окном)');

x2w = x2.*hanning(N)';
X2w = 2*abs(fft(x2w))/N;
subplot(3,2,4); stem(f,X2w); grid on; title ('5500 Гц (с окном)');

x3w = x3.*hanning(N)';
X3w = 2*abs(fft(x3w))/N;
subplot(3,2,6); stem(f,X3w); grid on; title ('5750 Гц (с окном)');

H = hanning (N);
Hs = 0.5*(1-cos(2*pi*(f/2)/(1-N)));
Hf = 2*abs(fft(H))/N;
Hsf = 2*abs(fft(Hs))/N;
figure;
subplot(2,2,1); stem(H); grid on; title ('Окно Хэннинга');
subplot(2,2,2); stem(f,Hf); grid on; title ('fft окна Хэннинга');
subplot(2,2,3); stem(Hs); grid on; title ('Окно Хэннинга формулой');
subplot(2,2,4); stem(f,Hsf); grid on; title ('fft окна Хэннинга формулой');
