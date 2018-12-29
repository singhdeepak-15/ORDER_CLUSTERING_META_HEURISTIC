clc
clear
Np = 10;
Nd = 3;
Nt = 10;
xMin = 1;
xMax = 178;
vMin = -3;
vMax = 3;
load wine.txt
org = wine;
[man,st,gb] = PSO(Np, Nd, Nt, xMin, xMax, vMin, vMax,org);
% GAencode(Np,Nd,Nt,xMin,xMax,vMin,vMax,org);
pos = size(gb,2);

for z = 1 : size(gb,1)
    for k = 1 : pos
            di = zeros(1,length(org));
            for i = 1 : length(org)
                s = 0;
                for j = 1 : size(org,2)
                    s = s + euclid(org(gb(z,k),j),org(i,j),0,0);
                end
                di(i) = sqrt(s);
            end
            dis(k,:) = di;
    end    
    for i = 1:length(dis)
        [as,ind] = min(dis(:,i));
        cluster(i) = ind;
    end
    for i = 1 : pos
        ind = find(i == cluster);
        clen(i) = length(ind);
    end
    asc(z,:) = clen;
end