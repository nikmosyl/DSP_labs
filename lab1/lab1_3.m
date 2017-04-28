clear;
y = audioread('sound.wav');

subplot(2,1,1);
plot(y(:,1))
grid on;
title('Канал 1')

subplot(2,1,2);
plot(y(:,2))
grid on;
title('Канал 2')