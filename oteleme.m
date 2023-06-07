clc;
clear all;
close all;

I = imread("Lenna.png");

R = I(:,:,1);

[m,n,k] = size(I);


a = 2048-300;
b = 2048-300;

for i=1:1:m
    
        if i<=a
        im(m-i+1,:,:) = I(a-i+1,:,:);
        end
end

for i=1:1:n
    
        if i<=b
        image(:,n-i+1,:) = im(:,b-i+1,:);
        end
end


subplot(1,2,1),imshow(R);
subplot(1,2,2),imshow(image);