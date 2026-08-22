clc;
clear all;

f=[255 255 255 255; 50 50 50 50; 150 150 150 150; 50 50 50 50]
[row,col]=size(f);
D0=2;
N=2;
for x=1:1:col
    for y=1:1:col
        g(x,y)=f(x,y)*(-1).^(x+y);
    endfor
endfor

F=fft2(g);

for u=1:1:row
    for v=1:1:col
        D(u,v)=sqrt((u-(row/2)).^2+(v-(col/2)).^2);
        H2(u,v)=(1/(1+(D(u,v)/D0).^(2*N)));
        H3(u,v)=exp(-D(u,v).^2/(2*D0.^2));
        if D(u,v)<=D0
            H1(u,v)=1;
        else
            H1(u,v)=0;
        endif
    endfor
endfor


G1=F.*H1; % Element Muktiplication
G2=F.*H2;
G3=F.*H3;
g1=ifft2(G1)
g2=ifft2(G2)
g3=ifft2(G3)
figure(1),imshow(uint8(f));
figure(2),imshow(uint8(abs(g1)));
figure(3),imshow(uint8(abs(g2)));
figure(4),imshow(uint8(abs(g3)));
