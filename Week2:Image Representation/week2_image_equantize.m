clc;clear all; close all 
Image = imread('peppers.png');
grayImage=  rgb2gray(Image);
subplot(2, 4, 1);imshow(grayImage, []); title('Original Gray Scale Image')
for  level =2:8
thresh = multithresh(grayImage,level)
quantizedImage = imquantize(grayImage, thresh);
subplot(2, 4, level);imshow((quantizedImage),[]); title(['quantized with level '  num2str(level) ]);
end