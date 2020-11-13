x = imread('Cameraman.png');
x = double(x);

A = load('A.mat');
A = A.A;
blured = conv2(x, A, 'same');

B = load('B.mat');
B = B.B;
deblured = conv2(blured, B, 'same');

AB = conv2(A, B);
figure()
plot(AB);
title("Convolution of A & B");
figure()
difference = abs(deblured - x);

subplot(2, 2, 1);
imshow(uint8(x));
title('Original');
subplot(2, 2, 2);
imshow(uint8(blured));
title('Blured');
subplot(2, 2, 3);
imshow(uint8(deblured));
title('Deblured');
subplot(2, 2, 4);
imshow((difference));
title('Difference');

figure()
subplot(4, 1, 1);
hist(x);
title('Original');
subplot(4, 1, 2);
hist(blured);
title('Blured');
subplot(4, 1, 3);
hist(deblured);
title('Deblured');
subplot(4, 1, 4);
hist(difference);
title('Difference');

t = [1, 4, 6, 4, 1];
deblurT = [0, 1, 20, 1, 0];
tDeblurT = conv2(1/16 * deblurT, 1/16 * t, 'same');
bluredT = conv2(x, 1/16 * t, 'same');
debluredT = conv2(bluredT, 1/16 * deblurT, 'same');
figure()
plot(tDeblurT(:));
title("Convolution of t and deblurT");
figure()
subplot(2, 1, 1);
imshow(uint8(bluredT));
subplot(2, 1, 2);
imshow(uint8(debluredT));

%subplot(4, 1, 1);
%plot(x);
%title('Original');
%subplot(4, 1, 2);
%plot(blured);
%title('Blured');
%subplot(4, 1, 3);
%plot(deblured);
%title('Deblured');
%subplot(4, 1, 4);
%plot(difference);
%title('Difference');