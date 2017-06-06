clear;

%��������� ������� N1

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
subplot(4,1,1); plot(t,Y1); title('������ N1'); grid on; 

pause(1);
%��������� ������� N2

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
subplot(4,1,2); plot(t,Y2); title('������ N2'); grid on; 

%������������������ �������

R=xcorr(Y1);
tau= -10+ts : ts : 10;
lt=length(tau);
s1r=round(length(R)/2)-lt/2;
s2r=round(length(R)/2)+lt/2-1;

subplot(4,1,3); plot(tau,R(s1r:s2r)); title('����������������� ������� ������ N1'); grid on;

R=xcorr(Y2);
s1r=round(length(R)/2)-lt/2;
s2r=round(length(R)/2)+lt/2-1;
subplot(4,1,4); plot(tau,R(s1r:s2r)); title('����������������� ������� ������ N2'); grid on;




