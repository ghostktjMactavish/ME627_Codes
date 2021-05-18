clear all;
clc;
global alpha bigX;
alpha = 0;
bigX= [];
y = newton('sreso_duff',zeros(4,1));
bigX= [ bigX,[y;alpha]];
alpha = 0.01;
y = newton('sreso_duff',zeros(4,1));
bigX = [bigX [y;alpha]];
continuation('sreso_duff',10000);
w=bigX(5,:);
A1 = sqrt(sum(bigX(1:2,:).^2));
A2 = sqrt(sum(bigX(3:4,:).^2));
figure(1);
plot(w,A1,'b');
hold on
plot(w,A2,'r');
grid
hold off;
%scatter(bigX(1,:),bigX(2,:),'r*');
xlabel('w');
ylabel('A');
title('Graph of Eqn : $x^{4}+0.1x^{3}+2x^{2}-x+y^{4}-0.1*y^{3}+\frac{y^2}{1+y^2}+0.1xy=100$', 'interpreter', 'latex')
%hold off;