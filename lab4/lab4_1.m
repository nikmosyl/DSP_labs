clear;

I = imread('ishodnoecvet.jpg');

subplot(4,2,1); imshow(I); title('Изображение (цветное)');
subplot(4,2,3); imshow(I(:,:,1)); title('Изображение (канал R)');
subplot(4,2,5); imshow(I(:,:,2)); title('Изображение (канал G)');
subplot(4,2,7); imshow(I(:,:,3)); title('Изображение (канал B)');

subplot(4,2,2); imhist(I); title('Гистограмма изображения (цветного)');
subplot(4,2,4); imhist(I(:,:,1)); title('Гистограмма изображения (канал R)');
subplot(4,2,6); imhist(I(:,:,2)); title('Гистограмма изображения (канал G)');
subplot(4,2,8); imhist(I(:,:,3)); title('Гистограмма изображения (канал B)');
