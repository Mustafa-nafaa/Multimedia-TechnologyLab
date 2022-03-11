clc ;clear all  ;close all;  
I = imread('ngc6543a.jpg'); 
J = imresize(I, 0.5); 
J1 = imresize(I, [256 64]); 

J2 = imread('peppers.png'); 
J3 = imresize(J2,[64 64]);

 
 subplot(131);   imshow(I);  title('Orginal')
  subplot(132);   imshow(J);  title('sclae min')
   subplot(133);   imshow(J1);  title('sclae   max ')