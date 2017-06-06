clear;

I = imread('chetkoemin.jpg');
subplot(2,4,1); imshow(I); title('Коэффициент размытия 0');
[m,n,p] = size(I);

%разные коэффициенты размытия
for nb = 1 : 1 : 3 
    
    I1 = zeros(m+2, n+2, p, 'uint8');
    I1(2:end-1,2:end-1,:) = I;
    J = zeros(m, n , p, 'uint8');
    
    b = 0.25*nb; %коэффициент размытия
    B = [1-(2*b) 1-(1*b) 1-(2*b);1-(1*b) 1-(0*b) 1-(1*b);1-(2*b) 1-(1*b) 1-(2*b) ];
    
for i = 2:1:m+1
    for j = 2:1:n+1
        Y = I1 (i-1:i+1,j-1:j+1,:);
        for k = 1:3
            Y1(k) = (   (double(Y(1,:,k)) * B(:,1)) + ...
                        (double(Y(2,:,k)) * B(:,2)) + ...
                        (double(Y(3,:,k)) * B(:,3))) ./sum(sum(B));
        end
        I1(i,j,:) = Y1;
    end
end

J = I1(2:end-1, 2:end-1, :);

subplot(2,4,nb+1); imshow(J); title(['Коэффициент размытия ',num2str(b)]);

end
clear;

%несколько проходов
I = imread('chetkoemin.jpg');
subplot(2,4,5); imshow(I); title('Количество проходов: 0');
[m,n,p] = size(I);
J = I;

for nb = 1 : 1 : 3 
    
    I1 = zeros(m+2, n+2, p, 'uint8');
    I1(2:end-1,2:end-1,:) = J;
    
    b = 0.5;
    B = [1-(2*b) 1-(1*b) 1-(2*b);1-(1*b) 1-(0*b) 1-(1*b);1-(2*b) 1-(1*b) 1-(2*b) ];
    
for i = 2:1:m+1
    for j = 2:1:n+1
        Y = I1 (i-1:i+1,j-1:j+1,:);
        for k = 1:3
            Y1(k) = (   (double(Y(1,:,k)) * B(:,1)) + ...
                        (double(Y(2,:,k)) * B(:,2)) + ...
                        (double(Y(3,:,k)) * B(:,3))) ./sum(sum(B));
        end
        I1(i,j,:) = Y1;
    end
end

J = I1(2:end-1, 2:end-1, :);

subplot(2,4,nb+5); imshow(J); title(['Количество проходов: ',num2str(nb)]);

end


