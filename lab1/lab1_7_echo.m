clear;
[x,Fs] = audioread('sound.wav');
a = 0.9;
d =10000;
subplot(2, 1, 1);
plot(x); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал ДО');

y = zeros(size(x));

for i = d+1 : length(x)
    y(i, 1) = x(i, 1) + a*x(i-d, 1);
    y(i, 2) = x(i, 2) + a*x(i-d, 2);
end;

subplot(2, 1, 2);
plot(y); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал ПОСЛЕ');

audiowrite('sound_echo.wav', y, Fs);