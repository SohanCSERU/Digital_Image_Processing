clc;
clear all;

rgb_img = imread('eye.jpg');
imgGray = rgb2gray(rgb_img);

img = imresize(imgGray,[512,512]);
[m,n] = size(img);

%k = input('Enter Decresing Times\n');
k=9;
plot_dimention = ceil(sqrt(k));

for i=1:k
         subplot(plot_dimention,plot_dimention,i);
        img = imresize(img,0.5);
        imshow(img);
        title(strcat(int2str(m),'X',int2str(n)));
        
        m = m/2;
        n = n/2;
end

