clc;
clear all;
close all;

I = imread("Lenna.png");

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

[m,n]=size(R);

%{
for i=1:m
   row=R(i,:);
   row_reverse=flip(row);
   Ir90R(:,i)=row_reverse;
   
   IG = G(i,:);
   IG_reverse=flip(IG);
   Ir90G(:,i)=IG_reverse;
   
   IB = B(i,:);
   IB_reverse=flip(IB);
   Ir90B(:,i)=IB_reverse;
   
end

Ir90(:,:,1) = Ir90R;
Ir90(:,:,2) = Ir90G;
Ir90(:,:,3) = Ir90B;
%}

for i=1:1:m
    row = R(i,:);
    IR_reverse = flip(row);
    Ir90r(:,m+1-i) = IR_reverse;
end


imshow(Ir90r);






