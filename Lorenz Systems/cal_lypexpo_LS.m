clc;
clear all;
close all;

z=ALE_LS(1000);
z=abs(z); z=log(z); n=[1:1000];
figure(1)
plot(n,cumsum(z(1,:))./n,n,cumsum(z(2,:))./n,n,cumsum(z(3,:))./n);
grid on
xlabel('n')
ylabel('Cummulative Sum')
figure(2)
plot(n,sum(z,1));
