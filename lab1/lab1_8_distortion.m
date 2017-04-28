clear;
[x, Fs] = audioread('sound.wav');
val = 0.07;

subplot(2, 1, 1);
plot(x); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал ДО');

y = x;
for i = 1:length(x)
    if y(i,1) > val
        y(i,1) = val;
    end;
    if y(i,1) < -val
        y(i,1) = -val;
    end;
    if y(i,2) > val
        y(i,2) = val;
    end;
    if y(i,2) < -val
        y(i,2) = -val;
    end;
end;
y(1,1)=0.15;
y(1,2)=-0.15;

subplot(2, 1, 2);
plot(y); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал ПОСЛЕ');

audiowrite('sound_distortion.wav', y, Fs)