clear;
N=100;
n=0:1:N-1;
f=-N/2:1:(N/2-1);
ts=1/100000;
f1=25000;
f2=25500;

x1=sin(2*pi*f1*n*ts);
y=fft(x1);
xp=fftshift(y);
a=2*abs(xp)/N;
figure(1); stem(f,a); grid on   %без растекания

x2=sin(2*pi*f2*n*ts);
y2=fft(x2);
xp2=fftshift(y2);
a2=2*abs(xp2)/N;
figure(2); stem(f,a2); grid on  %с растеканием