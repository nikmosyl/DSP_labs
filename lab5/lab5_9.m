clear;

image = imread('pole.jpg');

imageGray = rgb2gray(image);
tank = imread('tank2.jpg');
tankGray = rgb2gray(tank);
Corr = normxcorr2(tankGray, imageGray); figure(1);
srf = surf(Corr);
set(srf,'LineStyle', 'none');

% Поиск индекса максимального элемента
[maxVal, maxIndex] = max (abs(Corr(:)));

% преобразует номер элемента массива в индекс
[max_Y, max_X] = ind2sub(size(Corr),maxIndex);

figure(2); imshow(image);
rectangle('Position',[(max_X-30) (max_Y-30) 35 35], 'LineWidth', 3, 'EdgeColor', 'b')
 