clear;

%��������� ������� N1

ts=0.001;
t=0:ts:100;
X1=square(t);

dz=0.05;

subplot(3,1,1); plot(t,X1); title('������ N1'); grid on; axis([0 50 -2 2])

pause(1);

%��������� ������� N2

ts=0.001;
t=0:ts:100;
X2=-square(t);

subplot(3,1,2); plot(t,X2); title('������ N2'); grid on; axis([0 50 -2 2])

%�������������� �������

R=xcorr(X1, X2);
tau= -10+ts : ts : 10;
lt=length(tau);
s1r=round(length(R)/2)-lt/2;
s2r=round(length(R)/2)+lt/2-1;

subplot(3,1,3); plot(tau,R(s1r:s2r)); title('������������� ������� ������� N1 � N2'); grid on;




