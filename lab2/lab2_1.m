clear;
N=10;
n=0:1:N-1;
ts=1/10000;
f1=1000;
f2=2000;
  
x1=sin(2*pi*f1*n*ts);
x2=2*sin(2*pi*f2*n*ts+pi/2);
x=x1+x2;
figure(1);
plot(x); grid on; title('х');
  
y=fft(x);
figure(2); stem(real(y)); grid on    %график действительной сотавляющей
figure(3); stem(imag(y)); grid on    %график мнимой составляющей
figure(4); stem(abs(y)); grid on     %график модуля гармоник
figure(5); stem(2*abs(y)/N); grid on %график нормированного модуля гармоник
