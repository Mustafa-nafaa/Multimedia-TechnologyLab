clc;clear all;close all;
n=2;
img = imread('Lenna.png');
img=rgb2gray(img);
for i=1:n:size(img,1)
 for j=1:n:size(img,2)
     for k=0:n-1
         for l=0:n-1
             im(i+k,j+l)=img(i,j);
         end
     end
 end
end
subplot(1,2,1);imshow(uint8(img));title('Original Image');
subplot(1,2,2);imshow(uint8(im));title('Sampled Image');