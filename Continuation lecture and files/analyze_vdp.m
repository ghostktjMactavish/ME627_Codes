clear all;
clc;

options = odeset('AbsTol',1e-8,'RelTol',1e-8);


%% Continuation for 60 steps
global alpha bigX;
alpha=0;
bigX=[];
y=newton('vdp_junk',[2;0;0;0;0;1]);
bigX=[bigX, [y;alpha]];
alpha=0.02;
y=newton('vdp_junk',[2;0;0;0;0;1]);
bigX=[bigX, [y;alpha]];
continuation('vdp_junk',60);

%% ODE solution for eps=1.1 for 60 steps
[t,q]=ode45('vdp',[0,60],[0.07;0],options);
%final solution from continuation
a=bigX(:,end);
tau=a(6)*t;
x = a(1)*sin(tau)+a(2)*sin(2*tau)+a(3)*cos(2*tau)+a(4)*sin(3*tau)+a(5)*cos(3*tau);

figure(1)
plot(t,q(:,1),t-2.6,x);
grid

xlabel('t')
ylabel('x')
title('VDP Harmonic Balance (Original vs HB) epsilon='+string(a(end)))
legend('ODE','HB')

figure(2)
plot(t,q);
grid

xlabel('t')
ylabel('x')
title('VDP ODE solution 60 steps with epsilon=1.1');
legend('x','xdot')
%% Harmonic Balance for epsilon =1.1

alpha=1.1;
y=newton('vdp_junk',[2.0225;0;0;0.1241;-0.2548;0.9308]);
bigX=[bigX, [y;alpha]];
a=bigX(:,end);
tau=a(6)*t;
x = a(1)*sin(tau)+a(2)*sin(2*tau)+a(3)*cos(2*tau)+a(4)*sin(3*tau)+a(5)*cos(3*tau);

figure(3)
plot(t,q(:,1),'Color','r','linewidth',1.5);
hold on
plot(t-2.3, x,'Color','k','linewidth',1.5);
grid
xlabel('t')
ylabel('x')
title('VDP Harmonic Balance (Original vs HB) epsilon='+string(a(end)))
legend('ODE','HB')
