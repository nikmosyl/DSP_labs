clear;
Fs = 5000;
ts = 0 : 1/Fs : 0.001-1/Fs;
N = length(ts);
f1=1000;
f2=2000;
  
x1=sin(2*pi*f1*ts);
x2=2*sin(2*pi*f2*ts+pi/2);
x=x1+x2;

%���� ���ޣ� �����
X = 0;
for n = 1 : N
    X = X + x(n)*(cos(2*pi*(n-1)/N)-j*sin(2*pi*(n-1)/N));
end

figure;
subplot(2,1,1); stem(real(X)); grid on; title('�������������� �����');
subplot(2,1,2); stem(imag(X)); grid on; title('������ �����');

% ��� ���ޣ��
X = zeros(N,1);
for m = 1 : N
    for n = 1 : N
        X(m) = X(m) + x(n)*(cos(2*pi*(n-1)*(m-1)/N)-j*sin(2*pi*(n-1)*(m-1)/N));
    end
end
figure;
subplot(2,1,1); stem(real(X)); grid on; title('�������������� �����');
subplot(2,1,2); stem(imag(X)); grid on; title('������ �����');
figure;
stem(abs(X)); grid on; title('���������');

Xm = 2*abs(X)/N;
figure;
stem(Xm); grid on; title('���������� ���������');

f = zeros(N,1);
for i = 1 : N
    f(i) = (i-1)*Fs/N;
end
figure;
stem(f, Xm); grid on; title('���������� ��������� � �������');

phi = angle(X)*180/pi;  %phi = atan2(imag(X),real(X))*180/pi;
figure;
stem(f, phi); grid on; title('����');

