clc;
clear all;

f=[2 3 4 5; 3 4 5 6; 5 6 7 8; 12 13 3 4]
[row,col]=size(f);
max_val=int32(max(max(f)));
count=0;
while max_val>0
    max_val=idivide(max_val,2);
    count++;
end
<<<<<<< HEAD
<<<<<<< HEAD

=======
=======
=======
<<<<<<< HEAD

=======
>>>>>>> origin/master
>>>>>>> origin/master
L=2.^count;
alpha=0.4;
gamma=0.4;
beta=1.6;
r1=4;
r2=12;
s1=alpha*r1;
s2=beta*(r2-r1)+s1;
for x=1:1:row
    for y=1:1:col
        if f(x,y)<r1
            g(x,y)=f(x,y)*alpha;
        elseif (f(x,y)>=r1)&&(f(x,y)<r2)
            g(x,y)=(f(x,y)-r1)*beta + s1;
        else
            g(x,y)=(f(x,y)-r2)*gamma + s2;
        endif
    endfor
endfor

round(g)
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> origin/master
>>>>>>> origin/master
>>>>>>> origin/master
