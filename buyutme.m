clc;
clear all;
close all;

I = imread('Lenna.png');
R = I(:,:,1);
[m,n]=size(R);

b=2;
Iz=zeros(b*m,b*n);
%{
for i=1:m
    for j=1:n
        Iz(b*i-1,b*j-1)=R(i,j);
        Iz(b*i-1,b*j)=R(i,j);
        Iz(b*i,b*j-1)=R(i,j);
        Iz(b*i,b*j)=R(i,j);
    end
end
Iz=uint8(Iz);
%subplot(1,2,1),imshow(R);
%subplot(1,2,2),imshow(Iz);

I=double(I);
for i=1:m-1
    for j=1:n-1
        Izp(2*i-1,2*j-1)=I(i,j);
        Izp(2*i-1,2*j)=(I(i,j)+I(i,j+1))/2;
        Izp(2*i,2*j-1)=(I(i,j)+I(i+1,j))/2;
        Izp(2*i,2*j)=(I(i,j)+I(i,j+1)+I(i+1,j)+I(i+1,j+1))/4;
    end
end
Izp=uint8(Izp);
%subplot(1,3,1),imshow(uint8(I));
%subplot(1,3,2),imshow(Iz);
%subplot(1,3,3),imshow(Izp);
%}

for i=1:2:m
    for j=1:2:n
        Izo(floor(i/2)+1,floor(j/2)+1)=(I(i,j)+I(i,j+1)+I(i+1,j)+I(i+1,j+1))/4;
    end
end
Izo=uint8(Izo);
subplot(1,2,1),imshow(uint8(I));
subplot(1,2,2),imshow(Izo);

