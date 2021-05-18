function continuation(fun,N)

global bigX continuation_function

continuation_function=fun;

for n=1:N
    xg=2*bigX(:,end)-bigX(:,end-1);
    xg=newton('continuation_side',xg);
    bigX=[bigX,xg];
end
