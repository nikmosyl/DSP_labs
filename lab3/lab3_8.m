
fs = 10000;
F = 500;
T = 0.1;
t = 0:1/fs:T;
N = 1000;
f = zeros(1,N);
for i = 1 : N
    f(i) = (i-1)*fs/N;
end


A = sin(2*pi*F*t)+sin(2*pi*2*F*t)+sin(2*pi*5*F*t);

subplot (2,2,1);
plot(t,A); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал');

subplot (2,2,2);
stem(f,2*abs(fft(A,N))/N); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал');

%Сигнал после фильтрации
koef=length(Koefficient);
S=zeros(1,length(A));

for j=0:1:length(A)-koef
    for i=1:1:koef
        S(j+1) = S(j+1) + Koefficient(i)*A(i+j);
    end
end

subplot (2,2,3);
plot(t,S); grid on; xlabel('Время'); ylabel('Амплитуда'); title('Сигнал после фильтрации');

%ДПФ нового сигнала
subplot (2,2,4);
stem(f,2*abs(fft(S,N))/N); grid on; xlabel('Отсчёт'); ylabel('Амплитуда'); title('ДПФ сигнала после фильтрации');


