clc;clear all;close all; 
% step1   reaad  image  
%img = imread ('normal/1.bmp');
%img = imread ('abnormal/11.bmp');
[filename,user_canceled] = imgetfile()

img  = imread (filename);
%% enhnacment 
imgmed= medfilt2(img);
%% Segementation
img_seg=im2bw(imgmed,0.5);
SE=strel('disk',7,4);
img_seg=imopen(img_seg,SE);
%% feature   extraction
feature  =  get_feature(img_seg);
%% classifcation
load('ANNmodel.mat')
y = round(net(feature'));
%% plot  and   print
subplot(131); imshow(img) ;  title ('Orginal image')
subplot(132); imshow(imgmed) ;  title ('image  enhncment')
subplot(133); imshow(img_seg) ;  title ('image segmentation')
disp(['Contrast= '  , num2str(feature(1)) ])
disp(['Correlation= '  , num2str(feature(2)) ])
disp(['Energy= '  , num2str(feature(3)) ])
disp(['Homogeneity= '  , num2str(feature(4)) ])
if y==1
   disp('the classifaction is normal image')
else
   disp('the classifaction is abnormal image')
end