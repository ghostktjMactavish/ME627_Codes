l =size(bigX);
[m,i] = min(bigX,[],2); %min x coordinate
pmtr = 0;
area = 0;
j = 1;
cur_pt = bigX(:,j);
while j < l(2)
    nxt_pt = bigX(:,rem(j,l(2))+1);
    dr = norm(cur_pt-nxt_pt);
    pmtr = pmtr+dr;
    area = area + 0.5*norm(cross([cur_pt;0],[nxt_pt;0]));
    cur_pt = nxt_pt;
    %if j == i(1) %crossed the leftmost pt
    %    break
    %end
    j=j+1;
end