clear;

I = imread('ishodnoe.jpg');

subplot(3,2,1); imshow(I); title('�������� �����������');
subplot(3,2,2); imhist(I); title('����������� ��������� �����������');
subplot(3,2,3); imshow(histeq(I)); title('������������� �����������');
subplot(3,2,4); imhist(histeq(I)); title('����������� �������������� �����������');

Itr(:,:,1)=I(:,:,1)';
Itr(:,:,2)=I(:,:,2)';
Itr(:,:,3)=I(:,:,3)';

Jtr = [Itr(:,1:end/2-1,:)+100 Itr(:,end/2:end,:)-100];

J(:,:,1)=Jtr(:,:,1)';
J(:,:,2)=Jtr(:,:,2)';
J(:,:,3)=Jtr(:,:,3)';

subplot(3,2,5); imshow(J); title('��������� � ������ �������');

Iinv = max(I(:))-I;

subplot(3,2,6); imshow(Iinv); title('��������������� �����������');


