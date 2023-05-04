%Color image to gray Scale image.
clear all;
close all;
clc;

x=imread('apple2.jpg');
subplot(2,1,1);
imshow(x);
title('Original image');
 y=rgb2gray(x);
 subplot(2,1,2);
 imshow(y);
 title('grayscale image');
 