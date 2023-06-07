clc;
clear all;
close all;

I = imread("Lenna.png");
im = I;

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);


imR = I(:,:,1);
imG = I(:,:,2);
imB = I(:,:,3);

g = 50;


for i=1:1:2048
    for j=1:1:2048
        if R(i,j)+g<256
            R(i,j) = R(i,j)+g;
        elseif  R(i,j)+g>255  
                R(i,j) = 255;
        end
        
        if G(i,j)+g<256
            G(i,j) = G(i,j)+g;
        elseif  G(i,j)+g>255  
                G(i,j) = 255;
        end
        
        if B(i,j)+g<256
            B(i,j) = B(i,j)+g;
        elseif  B(i,j)+g>255  
                B(i,j) = 255;
        end
    end
end

for i=1:1:2048
    for j=1:1:2048
        if imR(i,j)-g>0
            imR(i,j) = imR(i,j)-g;
        elseif  imR(i,j)-g<0  
                imR(i,j) = 0;
        end
        
        if imG(i,j)-g>0
            imG(i,j) = imG(i,j)-g;
        elseif  imG(i,j)-g<0  
                imG(i,j) = 0;
        end
        
        if imB(i,j)-g>0
            imB(i,j) = imB(i,j)-g;
        elseif  imB(i,j)-g<0  
                imB(i,j) = 0;
        end
    end
end

image(:,:,1) = R;
image(:,:,2) = G;
image(:,:,3) = B;

imagee(:,:,1) = imR;
imagee(:,:,2) = imG;
imagee(:,:,3) = imB;


subplot(1,2,1),imshow(imagee);
subplot(1,2,2),imshow(image);

