
clear;

x = 1:1:255;
I = imread('ishodnoecvet.jpg');

brightness = filtBrightness(x);
subplot(2,3,1); plot(brightness); axis([0 255 0 255]); title('фильтр яркости');
Ibr = filtBrightness(I);
subplot(2,3,4); imshow(Ibr); title('скоректированная яркость');

contrast = filtContrast(x);
subplot(2,3,2); plot(contrast); axis([0 255 0 255]); title('фильтр контрасности');
Ico = filtContrast(I);
subplot(2,3,5); imshow(Ico); title('скоректированная контрастность');

gamma = filtGamma(x);
subplot(2,3,3); plot(gamma); axis([0 255 0 255]); title('фильтр гаммы');
Iga = filtGamma(I);
subplot(2,3,6); imshow(Iga); title('скоректированная гамма');

