% Пример, демонстрирующий улучшение результатов ДПФ
% путём дополнения нулями
clear;

Fs = 1;
ts = 0:1/Fs:29;
N = length(ts);
x = cos(2*pi*1*ts/10);

N1 = 32;
N2 = 128;
N3 = 512;

Xn1 = fft(x,N);
figure(1); stem(Xn1);
Xn2 = fft(x,100);
figure(2); stem(Xn2);
Xin1 = ifft(Xn1);
figure(3); stem(Xin1);
Xin2 = ifft(Xn2);
figure(4); stem(Xin2);

figure;

X1 = 2*abs(fft(x,N1))/N;
X2 = 2*abs(fft(x,N2))/N;
X3 = 2*abs(fft(x,N3))/N;

F1 = [0 : N1-1]*Fs/N1;
F2 = [0 : N2-1]*Fs/N2;
F3 = [0 : N3-1]*Fs/N3;

subplot(3,1,1)
plot(F1,X1,'-x'),title('N = 32'),axis([0 1 0 2])
subplot(3,1,2)
plot(F2,X2,'-x'),title('N = 128'),axis([0 1 0 2])
subplot(3,1,3)
plot(F3,X3,'-x'),title('N = 512'),axis([0 1 0 2])
