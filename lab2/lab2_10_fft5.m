% ��������� ����������� ���
% �� ������� �������� ��������� ������������
clear;

Fs = 110;
ts1 = 0 : 1/Fs : 10-1/Fs;
ts2 = 0 : 1/Fs : 100-1/Fs;
N1 = length(ts1);
N2 = length(ts2);
F1 = 21; % ������� �������� �������� � �������
F2 = 42;

x1 = 0.4*sin(2*pi*F2*ts1) + 0.4*sin(2*pi*(F1-0.1)*ts1) + ...
    0.5*sin(2*pi*F1*ts1) + 0.4*sin(2*pi*(F1+0.1)*ts1) + ...
    0.4*sin(2*pi*F1*2*ts1) + 0.3*sin(2*pi*F1*3*ts1) + ...
    3*randn(size(ts1)) + ...            %����� ���
    pinknoise(N1);                      %�������-���

x2 = 0.4*sin(2*pi*F2*ts2) + 0.4*sin(2*pi*(F1-0.1)*ts2) + ...
    0.5*sin(2*pi*F1*ts2) + 0.4*sin(2*pi*(F1+0.1)*ts2) + ...
    0.4*sin(2*pi*F1*2*ts2) + 0.3*sin(2*pi*F1*3*ts2) + ...
    3*randn(size(ts2)) + ...            %����� ���
    pinknoise(N2);                      %�������-���

F = [0 : N1-1]*Fs/N1;

X = abs(fft(x1))*2/N1;
figure;
subplot(2,2,1); plot(x1); grid on; title('�������� ������');
subplot(2,2,2); plot(F,X); grid on; title('��� ��������� �������');

xw = x1.*blackman(N1)';
subplot(2,2,3); plot(xw); grid on; title('���������� ����� ��������');

Xw = abs(fft(xw))*2/N1;
subplot(2,2,4); plot(F,Xw); grid on; title('��� �������, ����������� ����� ��������');

Nseg = 1000;
Xsum = zeros(1,Nseg);
for i =1 : N2/Nseg
    xtmp = x2( (i-1)*Nseg+1 : (i-1)*Nseg+Nseg ).* blackman(Nseg)';
    Xsum = Xsum + abs(fft(xtmp))*2/Nseg;   
end
Xsum = Xsum/(N2/Nseg);
Fsum = [0 : Nseg-1]*Fs/Nseg;
figure;
plot(Fsum(1:Nseg/2),Xsum(1:Nseg/2)); grid on; title('�����Σ���� ���');

