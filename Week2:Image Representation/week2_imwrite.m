clc;clear all ;close all; 
A = randi ([0 ,255]  , 256,256);
imshow(A)
imwrite (A, 'a.jpg')