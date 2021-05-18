clc;
clear all;
close all;
E=zeros(99,15000);
y0=rand(3,1);
op=odeset('reltol',1e-8,'abstol',1e-8);
for k=1:5000
    [t,y]=ode45('LS',linspace(0,2*pi/0.4,100),y0,op);
    y0=y(end,:)';
    E(:,3*k-2:3*k)=y(1:end-1,:);
end


%v=VideoWriter('lorenz.mp4','MPEG-4');
%open(v);

%for m=1:5
figure(1)
%plot(E(1,1:2:end),E(1,2:2:end),'.');
filename = 'mygif.gif';
%t = linspace(0,2*pi) ;
%x = sin(pi*t) ;
for n = 1:99
      plot(E(n,1:3:end),E(n,2:3:end),'r.');%E(n,3:3:end),
      xlabel('x1')
      ylabel('x2')
      axis([-35,35,-35,35])
      %zlabel('x3')
      title('Lorenz')
      drawnow
      frame = getframe(1);
      im = frame2im(frame);
      [imind,cm] = rgb2ind(im,256);
      if n == 1
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
      else
          imwrite(imind,cm,filename,'gif','WriteMode','append');
      end
end
% for k=1:99
%     plot(E(k,1:3:end),E(k,2:3:end),E(k,3:3:end),'m.');
%     xlabel('x1')
%     ylabel('x2')
%     zlabel('x3')
%     title('Lorenz')
%     %axis([-2.5,2.5,-2.5,2.5])
%     pause(0.08)
%     frame=getframe(gcf);
%     writeVideo(v,frame);
% end
%end
%close(v);