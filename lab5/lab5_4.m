clear;

%получение сигнала N1

ts=0.001;
t=0:ts:10;
X1=randn(1, length(t));

dz=0.05;
A=1;
a(1)=1+2*dz*(2*pi*ts)+(2*pi*ts)^2;
a(2)=-2*(1+dz*(2*pi*ts));
a(3)=1;
b(1)=A*2*dz*(2*pi*ts)^2;

Y1=filter(b, a, X1);
pause(1);
%получение сигнала N2

ts=0.001;
t=0:ts:10;
X2=randn(1, length(t));

dz=0.05;
A=1;
a(1)=1+2*dz*(2*pi*ts)+(2*pi*ts)^2;
a(2)=-2*(1+dz*(2*pi*ts));
a(3)=1;
b(1)=A*2*dz*(2*pi*ts)^2;

Y2=filter(b, a, X2);


%спектральная плотность

[C, f]=psd(Y1, length(t), 1/ts);
subplot(2,1,1); stem(f(1:25), C(1:25)); grid on;

[C, f]=psd(Y2, length(t), 1/ts);
subplot(2,1,2); stem(f(1:25), C(1:25)); grid on;




