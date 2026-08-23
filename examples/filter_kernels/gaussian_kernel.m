clc;
clear all;

f=double(imread('ssop.jpg'));

[row,col]=size(f);

%%%%%%% Gaussian Filter %%%%%%

g=f;
sum=0;

for x=1:1:3
    for y=1:1:3
        g_mat(x,y)=exp(-((x-2).^2 + (y-2).^2));
        sum=sum+g_mat(x,y);
    endfor
endfor

g_mat=g_mat/sum;
%gmat;

for x=2:1:row-1
    for y=2:1:col-1
        g(x,y)=f(x,y)*g_mat(2,2)+f(x-1,y)*g_mat(1,2)+f(x-1,y-1)*g_mat(1,1)+f(x-1,y+1)*g_mat(1,3)+f(x,y-1)*g_mat(2,1)+f(x,y+1)*g_mat(2,3)+f(x+1,y-1)*g_mat(3,1)+f(x+1,y)*g_mat(3,2)+f(x+1,y+1)*g_mat(3,3);
    endfor
endfor


%%%%%%% Laplacian Filter %%%%%%

conv_mat=[0 -1 0; -1 4 -1; 0 -1 0];

%%%%%%% LoG Filter %%%%%%
g1=f;
for x=2:1:row-1
    for y=2:1:col-1
        g1(x,y)=g(x,y)*conv_mat(2,2)+g(x-1,y)*conv_mat(1,2)+g(x-1,y-1)*conv_mat(1,1)+g(x-1,y+1)*conv_mat(1,3)+g(x,y-1)*conv_mat(2,1)+g(x,y+1)*conv_mat(2,3)+g(x+1,y-1)*conv_mat(3,1)+g(x+1,y)*conv_mat(3,2)+g(x+1,y+1)*conv_mat(3,3);
    endfor
endfor
h=f+g1;
figure(1),imshow(uint8(f));
figure(2),imshow(uint8(g));
figure(3),imshow(uint8(g1));
figure(4),imshow(uint8(h));
