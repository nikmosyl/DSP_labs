clear;
N=16;
fs=50;
t=-1:1/fs:1-1/fs;
T=1;

nh=(1:N)*2-1;                   %генерация нечётных гармоник
y=cos(2*pi*nh'*t/T);            %сигнал с множеством нечётных гармоник

Am=2/pi./nh;                    
Am(2:2:end)=-Am(2:2:end);       %генерирование коэффициентов

s1=y.*repmat(Am',1,length(t)); 
s2=cumsum(s1);

s2=s2';

F=fft(s2);
Fn=2*abs(F)/N;

f = zeros(N,1);
for i = 1 : 100
    f(i) = (i-1)*fs/N;
end

figure;
for k=1:N
    subplot(4,4,k)
    stem(f,Fn(:,k)); grid on;
end
