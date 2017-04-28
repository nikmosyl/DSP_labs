clear;
N=16;
fs=50;
t=-1:1/fs:1-1/fs;
T=1;

nh=(1:N)*2-1;                   %��������� ��ޣ���� ��������
y=cos(2*pi*nh'*t/T);            %������ � ���������� ��ޣ���� ��������

Am=2/pi./nh;                    
Am(2:2:end)=-Am(2:2:end);       %������������� �������������
s1=y.*repmat(Am',1,length(t));  
s2=cumsum(s1);                  %�������� ������ ��������
for k=1:N
    subplot(4,4,k)
    plot(t, s2(k,:))
end
