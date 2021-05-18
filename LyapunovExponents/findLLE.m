clc;clear all;close all;
r=LLE(1000);
r=r(5:end);
r=log(r);
n=size(r,1);
n=[1:n]';
plot(n,cumsum(r)./n)