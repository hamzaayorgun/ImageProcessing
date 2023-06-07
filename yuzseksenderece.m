 clc;
clear all;
close all;

% Görüntüyü 180 derece çevirme

I = imread("Lenna.png");

IRR = I(:,:,1);
%{
%İlk yöntem.

I180 = I(end:-1:1,:,:);

imshow(I180);
%}

% İkinci yöntem.
%{
for i=2048:-1:1
    I180(i,:,:) = I(2048-i+1,:,:);
end

imshow(I180); 
%}

%Üçüncü yöntem.
%{
for i=1:1:2048
    I180(2048-i+1,:,:) = I(i,:,:);
end
%}

% imshow(I180);


