clc;
close all;
clear all;
global alpha bigX
alpha = 3;
ans1 = newton('junk',[0.25;1;0]);
bigX = [ans1;alpha]
alpha = 2.98;
a = ans1;
y=newton('junk',a);
bigX = [bigX,[y;alpha]] 
continuation('junk',400);
figure(1)
plot(bigX(4,:),bigX(1,:))
xlabel('epsilon')
ylabel('delta')
hold on;
axis([-1,1,-1,1])
plot(0,0.25,'r*')
% xx=bigX;
% hold on;
bigX = []
alpha = -3;
ans1 = newton('junk',[0.25;1;0]);
bigX = [ans1;alpha]
alpha = -2.98;
a = ans1;
y=newton('junk',a);
bigX = [bigX,[y;alpha]] 
continuation('junk',400);
%figure(1)
plot(bigX(4,:),bigX(1,:),'g')
xlabel('epsilon')
ylabel('delta')
axis([-3,3,-3,1.5])

