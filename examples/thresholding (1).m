clc;
clear all;

f=[2 3 4 5; 3 4 5 6; 5 6 7 6; 3 1 2 4]
r=5;
[row,col]=size(f);
L=8;
%Transformation g(x,y) = 0; if f(x,y)<r else g(x,y)=L-1

for x=1:1:row
    for y=1:1:col
        if (f(x,y)<r)
            g(x,y)=0;
        else
            g(x,y)=L-1;
        endif
    endfor
endfor

g
