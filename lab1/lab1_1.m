fs1 = 1100;
fs2 = 2000;
fs3 = 10000;

f = 500;

T = 0.01;

t1 = 0:1/fs1:T;
t2 = 0:1/fs2:T;
t3 = 0:1/fs3:T;

y1 = sin(2*pi*f*t1);
y2 = sin(2*pi*f*t2);
y3 = sin(2*pi*f*t3);

plot(t1,y1,'-r',t2,y2,'-g',t3,y3,'-b')
grid on
xlabel('Время');
ylabel('Амплитуда');
title('Сигнал');


