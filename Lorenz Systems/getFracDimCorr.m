E = corrdim(X(:,1:5000)');
E=sort(E);
ne=size(E,1);
n=[1:ne]./ne;
plot(log(E),log(n));
xlabel('log(n)')
ylabel('log(dist)')
grid on
%x=ginput(2)
%p=polyfit(x(:,1),x(:,2),1)