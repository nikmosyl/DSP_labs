clear;

I = imread('ishodnoecvet.jpg');

subplot(4,2,1); imshow(I); title('����������� (�������)');
subplot(4,2,3); imshow(I(:,:,1)); title('����������� (����� R)');
subplot(4,2,5); imshow(I(:,:,2)); title('����������� (����� G)');
subplot(4,2,7); imshow(I(:,:,3)); title('����������� (����� B)');

subplot(4,2,2); imhist(I); title('����������� ����������� (��������)');
subplot(4,2,4); imhist(I(:,:,1)); title('����������� ����������� (����� R)');
subplot(4,2,6); imhist(I(:,:,2)); title('����������� ����������� (����� G)');
subplot(4,2,8); imhist(I(:,:,3)); title('����������� ����������� (����� B)');
