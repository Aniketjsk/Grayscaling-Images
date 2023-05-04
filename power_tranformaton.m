clc;
close all;
clear all;

x=imread("Dog.jpeg");
img=rgb2gray(x);
imd = double(x);
[m,n] = size(imd);
gamma = 1.7;
out = abs((1*imd).^gamma);
maxm = max(out(:));
minm = min(out(:));

for i=1:m
    for j=1:n
        out(i,j) = (255*out(i,j))/(maxm-minm);  
    end
end
out = uint8(out);
figure(1);
set(gcf,'Position',get(0,'ScreenSize'));
subplot(121),imshow(x),title('Original image');
subplot(122),imshow(out),title('Output of power law transform');


