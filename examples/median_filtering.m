clc;
clear all;

f=[255 255 255 255; 50 255 50 50; 150 150 10 150; 50 50 50 50]
[row,col]=size(f);
g=f;
for x=2:1:row-1
    for y=2:1:col-1
        temp=[f(x-1,y-1) f(x-1,y) f(x-1,y-1) f(x-1,y+1) f(x,y-1) f(x,y) f(x,y+1) f(x+1,y-1) f(x+1,y) f(x+1,y+1) ];
        sort(temp);
        g(x,y)=temp(5);
    endfor
endfor

g