clc
close all;
clear all;

% formats lisibles, ground truth
% path='D:\Image\Project\Formats Lisibles 2022-2023 (1)\Ground truth - png'
% files=dir([path '*.jpg']);
% im=imread([path files(1).name]);

addpath("Formats Lisibles 2022-2023 (1)\Ground truth - png\")
addpath("Formats Lisibles 2022-2023 (1)\Source Images - bmp\")

%% fond noir, objets blancs
%% image truth
I1 = imread('In_1.bmp');
%figure, imshow(I1);

%% image test binarisée
I2 = imread('In_1.png');
%BW = im2bw(I2)
%figure, imshow(I2);

%% union
union = imfuse(I1,I2);
figure, imshow(union);

%% intersection
% n = 200
% for ligne = 1 : n
%     for colonne = 1 : n
%         while()
%         if(I1(ligne,colonne) = I2(ligne,colonne))

inter = bitand(I1,I2);
figure, imshow(inter);

%% IOU 
pic = im2double(union);
pic2 = im2double(inter);
IOU = pic2./pic;

%%
%D = imabsdiff()