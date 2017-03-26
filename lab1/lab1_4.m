clear;
y = audioread('sound.wav');

subplot(2,1,1);
plot(y(:,1)); grid on; title('Канал 1')

subplot(2,1,2);
plot(y(:,2)); grid on; title('Канал 2')

s1(:,1)=y(:,2);
s1(:,2)=y(:,1);

N = 16;
Fs = 8000;
audiowrite('sound2.wav', s1, Fs)

y2 = audioread('sound2.wav');
figure;
subplot(2,1,1);
plot(y2(:,1)); grid on; title('Канал 1')
subplot(2,1,2);
plot(y2(:,2)); grid on; title('Канал 1')
