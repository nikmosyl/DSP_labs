clear;
[x, Fs] = audioread('sound.wav');

subplot(2, 1, 1);    
plot(x(:, 1)); grid on;
subplot(2, 1, 2);
plot(x(:, 2)); grid on;

y(:,1)=x(:,1)*2;  
y(:,2)=x(:,1)/2;
figure; plot(y); grid on;

y = flip(x);
figure;
plot(y); grid on;

y = zeros(size(x));

for i=1 : length(x(:, 1))
    y(i, 1) = x(i, 1)*sin(i/1000);
    y(i, 2) = x(i, 2)*sin(i/1000);
end

figure; plot(y); grid on;
audiowrite('sound_new.wav', y, Fs)
sound (y, Fs)