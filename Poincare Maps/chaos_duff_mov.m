clc;
clear all;
close all;
E=zeros(99,10000);
y0=rand(2,1);
op=odeset('reltol',1e-8,'abstol',1e-8);
for k=1:5000
    [t,y]=ode45('duffing',linspace(0,2*pi/0.4,100),y0,op);
    y0=y(end,:)';
    E(:,2*k-1:2*k)=y(1:end-1,:);
end


v=VideoWriter('poincareF2c0_5.mp4','MPEG-4');
open(v);

for m=1:5
figure(1)
%plot(E(1,1:2:end),E(1,2:2:end),'.');
for k=1:99
    plot(E(k,1:2:end),E(k,2:2:end),'m.');
    xlabel('x1')
    ylabel('x2')
    title('Duffing Oscillator phase portrait evolving at different timesteps')
    axis([-2.5,2.5,-2.5,2.5])
    pause(0.08)
    frame=getframe(gcf);
    writeVideo(v,frame);
end
end
close(v);