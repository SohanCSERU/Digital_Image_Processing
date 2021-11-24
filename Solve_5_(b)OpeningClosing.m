I = imread('objects.jpg'); 

dim =11;
s_element = ones(dim,dim); 


opened_img = imopen(image,s_element);
closed_img = imclose(image,s_element);


subplot(2, 3, 1),  
imshow(I); 
title('Original image'); 


subplot(2,2,2);
imshow(opened_img);
title('After Opening');


subplot(2,2,3);
imshow(closed_img);
title('After Closing');