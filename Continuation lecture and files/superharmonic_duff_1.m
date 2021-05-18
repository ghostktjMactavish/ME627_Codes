clear all;
clc;
global alpha bigX;
alpha = -6.000;
bigX= [];
y = newton('sreso_duff1',zeros(2,1));
bigX= [ bigX,[y;alpha]];
alpha = -5.98;
y = newton('sreso_duff1',zeros(2,1));
bigX = [bigX [y;alpha]];
continuation('sreso_duff1',20000);
Delta=bigX(3,:);
A1 = sqrt(sum(bigX(1:2,:).^2));
%A2 = bigX(2,:);
figure(1);
plot(Delta,A1,'b');
hold on
%plot(w,A2,'r');
grid
hold off;
%scatter(bigX(1,:),bigX(2,:),'r*');
xlabel('w');
ylabel('A');
title('Graph of Eqn : $x^{4}+0.1x^{3}+2x^{2}-x+y^{4}-0.1*y^{3}+\frac{y^2}{1+y^2}+0.1xy=100$', 'interpreter', 'latex')
%hold off;