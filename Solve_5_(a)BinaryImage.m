image = imread('objects.jpg');

dim = 11;
s_element = ones(dim,dim);

eroted_img = imerode(image,s_element);
dilated_img = imdilate(image,s_element);

subplot(2,2,1);
imshow(image);
title('Original Image');


subplot(2,2,2);
imshow(eroted_img);
title('After Erosion');



subplot(2,2,3);
imshow(dilated_img);
title('After Dilation');

