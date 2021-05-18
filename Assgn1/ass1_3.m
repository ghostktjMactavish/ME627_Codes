clc;
clear;
format long;
digits(30);
A = eye(5);
for i = 1:5
    for j=1:5
        A(i,j)=sin(i)*cos(j);
    end
end
 
[V,d]=eig(A);
V
d