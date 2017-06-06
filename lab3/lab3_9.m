clear;

fs = 100000;
F = 1000;
T = 100;
t = 0:1/fs:T;
N = 1000;
f = zeros(1,N);
for i = 1 : N
    f(i) = (i-1)*fs/N;
end

A = sin(2*pi*F*t)+sin(2*pi*4*F*t);
    
subplot(2,1,1);plot(t,A); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал');
subplot(2,1,2);plot(f,2*abs(fft(A,N))/N); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал');