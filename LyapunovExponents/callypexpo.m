clc;
clear all;
close all;

z=BLE(1000);
z=abs(z); z=log(z); n=[1:1000];
figure(1)
plot(n,cumsum(z(1,:))./n,n,cumsum(z(2,:))./n);
figure(2)
plot(n,sum(z));
