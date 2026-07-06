clc;
clear all;

f=[255 224 220 255; 120 132 132 124; 0 10 100 56; 230 221 210 201]
[row,col]=size(f);

disp("Non-centred DFT transform");
fft2(f)

for x=1:1:row
    for y=1:1:col
        g(x,y)=f(x,y)*(-1).^(x+y);
    endfor
endfor
disp("Centered DFT Transform");
G=fft2(g)
imagesc(log(1+abs(G)))