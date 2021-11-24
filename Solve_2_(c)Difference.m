clc;
clear;
A = imread('eye.jpg');
A = imresize(A,[512 512]);
A = rgb2gray(A);

mask = 224; %11100000 
[m,n] = size(A);

newImg = bitand(A,mask);
difference_img = imabsdiff(A,newImg)

subplot(2,2,1);
imshow(A);
title('originalImage');

subplot(2,2,2);
imshow(newImg);
title('last 3 msb image');


subplot(2,2,3);
imshow(difference_img);
title('processed');