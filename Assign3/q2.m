clc;
close all;
clear all;
global epsilon;
epsilon = 0.1;
%avg_sin(0.1,2);
op = odeset('reltol',1e-7,'abstol',1e-9);
x = 0.01;
%x = linspace(0.1,1,2);
eps = linspace(0.01,0.1,2);
figure(1)
for k=x
    for epsilon=eps
        [t,y]=ode45('avg_sin',[0,100],k,op);
        hold on;
        plot(t,y,'DisplayName','eps='+string(epsilon));
        avg = mean(y.*sin(t+y));
        davg = epsilon*avg;
        plot(t,davg,'k','HandleVisibility','off');
    end
end

%et = x*exp(-0.12*cos(t));
%plot(t,et,'-k','linewidth',2,'DisplayName','x0*exp(-0.1*cos(t))');
hold off;
xlabel('t')
ylabel('x')
legend
% figure(2)
% for epsilon=eps
%        et = x*exp(-epsilon*cos(t));
%        plot(t,et,'linewidth',1,'DisplayName','x0*exp('+string(epsilon)+'*cos(t))');
%        hold on;
% end
% hold off;
% xlabel('t')
% ylabel('x')
% legend
% axis([0,10,-0.01,0.02]);
% axis 'auto'