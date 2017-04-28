% Пример, демонстрирующий зависимость результатов ДПФ
% от количества периодов исследуемого сигнала
clear;

Fs = 1;
ts = 0:1/Fs:29;
Ns = length(ts);
N = 2048;

x1 = cos(2*pi*ts*1/10);     % 3 периода
x2 = [x1 x1 x1];            % 9 периодов
x3 = [x1 x1 x1 x1 x1 x1];   % 18 периодов

X1 = 2*abs(fft(x1,N))/length(x1);
X2 = 2*abs(fft(x2,N))/length(x2);
X3 = 2*abs(fft(x3,N))/length(x3);

F = [0:N-1]*Fs/N;

subplot(3,1,1)
plot(F,X1),title('3 периода'),axis([0 1 0 2])
subplot(3,1,2)
plot(F,X2),title('9 периодов'),axis([0 1 0 2])
subplot(3,1,3)
plot(F,X3),title('18 периодов'),axis([0 1 0 2])