clear;

%получение сигналов

ts=0.001;
t=0:ts:10;
X=randn(1, length(t));
%subplot(2,1,1); plot(t, X); title('График случайной последовательнсоти'); grid on

dz=0.05;
A=1;
a(1)=1+2*dz*(2*pi*ts)+(2*pi*ts)^2;
a(2)=-2*(1+dz*(2*pi*ts));
a(3)=1;
b(1)=A*2*dz*(2*pi*ts)^2;

Y=filter(b, a, X);
%subplot(2,1,2); plot(t, Y); title('График случайной последовательности с наложением ФНЧ'); grid on;

%спектральный анализ сигналов

N=length(X); 
fy=fftshift(fft(X)); 
f=-N/2:1:(N/2-1);
Xf=abs(fy)/(N/2);
subplot(2,1,1); stem(f,Xf); title('Спектр случайной последовательности'); grid on;

N=length(Y);
fy=fftshift(fft(Y)); 
f=-N/2:1:(N/2-1);
Yf=abs(fy)/(N/2);
subplot(2,1,2); stem(f,Yf); title('Спектр случайной последовательности после ФНЧ'); grid on;


