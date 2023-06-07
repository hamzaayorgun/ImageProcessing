clc;
clear all;
close all;

Ic = imread("Lenna.png");

IRR = Ic(:,:,1);

[m,n] = size(IRR);

% İlk yöntem.
%%IcY = Ic(:,end:-1:1,:);

% İkinci yöntem.
%{
for i=1:2048
   IcY(:,2048-i+1,:) = Ic(:,i,:);
end
%}

% Üçüncü yöntem.
%{
for i=2048:-1:1
    IcY(:,i,:) = Ic(:,2048-i+1,:);
end
%}

imshow(IcY);
