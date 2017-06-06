clear;

%��������� ��������

ts=0.001;
t=0:ts:10;
X=randn(1, length(t));
%subplot(2,1,1); plot(t, X); title('������ ��������� ������������������'); grid on

dz=0.05;
A=1;
a(1)=1+2*dz*(2*pi*ts)+(2*pi*ts)^2;
a(2)=-2*(1+dz*(2*pi*ts));
a(3)=1;
b(1)=A*2*dz*(2*pi*ts)^2;

Y=filter(b, a, X);
%subplot(2,1,2); plot(t, Y); title('������ ��������� ������������������ � ���������� ���'); grid on;

%������������ ������ ��������

N=length(X); 
fy=fftshift(fft(X)); 
f=-N/2:1:(N/2-1);
Xf=abs(fy)/(N/2);
subplot(2,1,1); stem(f,Xf); title('������ ��������� ������������������'); grid on;

N=length(Y);
fy=fftshift(fft(Y)); 
f=-N/2:1:(N/2-1);
Yf=abs(fy)/(N/2);
subplot(2,1,2); stem(f,Yf); title('������ ��������� ������������������ ����� ���'); grid on;


