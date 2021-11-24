clc;
clear all;

numberOfImage=8;
rgb_img = imread('eye.jpg');
imgG = rgb2gray(rgb_img);
img = imresize(imgG,[512 512]);

[row,column] = size(img);

plot_dim = ceil(sqrt(numberOfImage));

x=1000;
y = uint8(x)
whos y


for i=1:numberOfImage
    tmp = imresize(img,[row column]);
    
    subplot(plot_dim,plot_dim,i);
    imshow(tmp);
    title(strcat(int2str(row),'X',int2str(column)));
    
    row = row/2;
    column=column/2;
end