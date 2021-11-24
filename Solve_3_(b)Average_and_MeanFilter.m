%Take grayscale image of size 512x512, add some solat and pepper noise and
%apply average and median spatial filters with 5x5 mask and observe their
%performance for noise suppression in term of PSNR

clc;
close all;
clear all;

img = imread('eye.jpg');
img = rgb2gray(img);
image = imresize(img, [512 512]);

subplot(2,3,1);
imshow(image);
title('Original Image');

image_noise = imnoise(image, 'salt & pepper',0.1);
subplot(2,3,2);
imshow(image_noise);
str = strcat('Noisy Image with PSNR = ', num2str(psnr(image_noise, image)));
title(str);

mask_dim = 3;
mask3 = ones(mask_dim,mask_dim)*(1.0/(mask_dim*mask_dim));

image_mean = imfilter(image_noise, mask3);
subplot(2,3,3);
imshow(image_mean);
str = strcat(' PSNR = ', num2str(psnr(image_mean, image)));
title(str);

mask_dim = 5;
mask5 = ones(mask_dim, mask_dim)*(1.0/(mask_dim*mask_dim));

image_mean = imfilter(image_noise, mask5);
subplot(2,3,4);
imshow(image_mean);
str = strcat(' PSNR = ', num2str(psnr(image_mean, image)));
title(str);


mask_dim = 7;
mask7 = ones(mask_dim, mask_dim)*(1.0/(mask_dim*mask_dim));

image_mean = imfilter(image_noise, mask7);
subplot(2,3,5);
imshow(image_mean);
str = strcat('PSNR = ', num2str(psnr(image_mean, image)));
title(str);


