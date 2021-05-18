clear all;
clc;
global alpha bigX;
alpha = 0;
bigX= [];
y = newton('junk',0);
bigX= [ bigX [y;alpha]];
alpha = 0.01;
y = newton('junk',0);
bigX = [bigX [y;alpha]];
continuation('junk',2143);
plot(bigX(1,:),bigX(2,:),'k','linewidth',1.5);
grid
%hold on;
%scatter(bigX(1,:),bigX(2,:),'r*');
xlabel('x');
ylabel('y');
title('Graph of Eqn : $x^{4}+0.1x^{3}+2x^{2}-x+y^{4}-0.1*y^{3}+\frac{y^2}{1+y^2}+0.1xy=100$', 'interpreter', 'latex')
%hold off;