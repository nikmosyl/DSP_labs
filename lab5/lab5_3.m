clear;

%получение сигнала 1

ts=0.001;
t=0:ts:10;
X=randn(1, length(t));

dz=0.05;
A=1;
a(1)=1+2*dz*(2*pi*ts)+(2*pi*ts)^2;
a(2)=-2*(1+dz*(2*pi*ts));
a(3)=1;
b(1)=A*2*dz*(2*pi*ts)^2;

Y=filter(b, a, X);

%получение сигнала N2

ts=0.001;
t=0:ts:10;
X=randn(1, length(t));

dz=0.05;
A=1;
a(1)=1+2*dz*(2*pi*ts)+(2*pi*ts)^2;
a(2)=-2*(1+dz*(2*pi*ts));
a(3)=1;
b(1)=A*2*dz*(2*pi*ts)^2;

Y=filter(b, a, X);

subplot(2,1,1); plot(t,Y); title('Cлучайная последовательность N2'); grid on;

%спектральный анализ сигнала N2

N=length(Y);
fy=fftshift(fft(Y)); 
f=-N/2:1:(N/2-1);
Yf=abs(fy)/(N/2);
subplot(2,1,2); stem(f,Yf); title('Спектр случайной последовательности N2 после ФНЧ'); grid on;


