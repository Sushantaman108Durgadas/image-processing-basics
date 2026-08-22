clc;
clear all;

%Pseudo Image
f=[3 4 5 4; 1 3 4 3; 2 4 5 6; 4 5 6 7]
[row,col]=size(f);

%Transformation :- g(x,y) = L-1 - f(x,y);
%Here, L=8;
%This is manual definition of L
L=8;
%One can actually use other ways to directly count the L without declaring it directly
%Skip this part for prac%
%{
max_val=int32(max(max(f)));
count=0;
while max_val > 0
    max_val=idivide(max_val,2);
    count++;
end
L=2.^count;
%}


for x=1:1:row
    for y=1:1:col
        g(x,y)=L-1-f(x,y);
        
    endfor
endfor

g
