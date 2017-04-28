
clear;

fs = 100000;

f = 500;

T = 0.01;

t = 0:1/fs:T;

y = sin(2*pi*f*t)+sin(2*pi*2*f*t)+sin(2*pi*5*f*t);

plot(t,y)
grid on


