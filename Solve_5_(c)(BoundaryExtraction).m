image= imread('eye.jpg'); 

dim =11;
s_element = ones(dim,dim); 

eroted_img = imerode(image,s_element);
boundary_img = image - eroted_img;

subplot(2, 3, 1),  
imshow(image); 
title('Original image'); 


subplot(2,2,2);
imshow(eroted_img);
title('Eroted Image');


subplot(2,2,3);
imshow(boundary_img);
title('Boundary');