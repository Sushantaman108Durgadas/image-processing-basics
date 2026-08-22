clc;
clear all;

f=[2 3 4 5; 4 5 6 3; 2 3 5 5; 3 4 5 2]
[row,col]=size(f);
L=8;
h=zeros(1,8)
h1=zeros(1,8)
gmax=L-1;
gmin=0;
fmax=max(max(f));
fmin=min(min(f));

for x=1:1:row
    for y=1:1:col
        temp=f(x,y);
        h(temp+1)++;
        g(x,y)=((gmax-gmin)*(f(x,y)-fmin)/(fmax-fmin))+gmin;
        temp1=round(g(x,y));
        h1(temp1+1)++;
    endfor
endfor

h
figure(1),bar(h)
g
h1
figure(2),bar(h1)
