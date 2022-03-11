clc; clear all ;close all; 
RGB  =   imread  ('Lenna.png');
gray   =  rgb2gray(RGB);
figure
subplot(1,2,1) ;  imshow(RGB) ;  title ('RGB')
subplot(1,2,2) ;  imshow(gray) ;  title ('Gray')
figure ;   imshow(RGB) ;  title ('RGB')
figure ;  imshow(gray) ;  title ('Gray')