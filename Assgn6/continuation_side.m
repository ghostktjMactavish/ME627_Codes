function z=continuation_side(x)

global bigX alpha continuation_function

alpha=x(end);

z=feval(continuation_function,x(1:end-1));
Delta_S=norm(bigX(:,1)-bigX(:,2));

z=[z;norm(bigX(:,end)-x)-Delta_S];
