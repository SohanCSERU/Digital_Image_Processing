clc;
clear all;
close all;

img = imread('ahad.png');
img = rgb2gray(img);
img = imresize(img,[512 512]);

[m,n] = size(img);

subplot(3,1,1);
imshow(img);
title('Original Image');

%decide the threshold value from the histogram

subplot(3,1,2);
imhist(img);
title('Original Image''s Histogram');

%threshold input
%threshold = input('Enter the Threshold value = ')%200;

threshold=80;

for i=1:m
    for j=1:n
        if(img(i,j)>threshold)
            img(i,j)=255;
        else
            img(i,j)=0;
        end
    end
end
            
subplot(3,1,3);
imshow(img);
title('Threshold');


