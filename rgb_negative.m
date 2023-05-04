% reading the RGB file into the Matlab environment
close all;
clear all;
clc;
x=imread('Dog.jpeg'); 
subplot(1, 2, 1),
imshow(x);
title('Original image');
L = 2 ^ 7;
neg = (L-1)-x;
subplot(1,2,2);
imshow(neg);
title('Negative image');