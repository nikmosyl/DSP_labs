function A = lab1_2(f)
    t=0:1/f:10;
    
    t1=0:1/f:3;
    A(1:length(t1))=sin(5*pi*t1);
    
    t2=(3+1/f):1/f:6;
    A(length(t1)+1:length(t1)+length(t2))=3+sin(10*pi*t2);
    
    t3=(6+1/f):1/f:10;
    A((length(t1)+length(t2)+1):(length(t1)+length(t2)+length(t3)))=3*sin(10*pi*t3);
    
    plot(t,A);
    grid on;
    xlabel('Время');
    ylabel('Амплитуда');
    title('Сигнал');
end