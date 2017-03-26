clear;
y = audioread('sound.wav');
sound(y);
plot(y);

pause(5);

y2 = audioread('sound2.wav');
sound(y);
figure;
plot(y2);