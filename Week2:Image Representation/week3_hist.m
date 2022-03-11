clc;clear all ;close all ;
I = imread('Lenna.png');
h = imhist(I ); 
subplot(1,2,1) ;  imshow(I) ; title  ('Orginal image')
subplot(1,2,2) ;  imhist(I) ; title  ('histogram image')
