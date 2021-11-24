clear;
clc;
img = imread('eye.jpg');
img = imresize(img, [512 512]);
img = rgb2gray(img);
[m,n] = size(img);
b = 8;
xy = ceil(sqrt(b));

for  i = 1: b
    d = 2^i;
    Img = img/d;
    subplot(xy,xy,i);
    imshow(Img*d);
    title(['bit level -', int2str(9-i)]);
end