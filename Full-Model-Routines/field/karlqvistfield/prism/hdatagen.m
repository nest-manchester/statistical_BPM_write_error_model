function hdatagen(phih, gapsize, polesize, d, rh, zh, a, b,t)
% xv = union(1,linspace(x1, x2, npts));
xv=1;
av = a.*sqrt(xv);
bv = b.*sqrt(xv);
tv = t.*ones(size(xv));

h1 = zeros(size(rh));
h2 = zeros(size(rh));
hv1 = zeros(length(xv),length(rh));
for i=1:length(xv)
    for j =1: length(rh)
        [h1(j) h2(j)] = hIntegral(phih, gapsize, polesize, d, rh(j), zh, av(i), bv(i), tv(i))
    end
    hv1(i,:)=h1;
    hv2(i,:)=h2;   
end

filename = 'xdata.m';
fid=fopen(filename,'w');
for i=1:length(xv)
    fprintf(fid,'%12.8f\n',xv(i));
end
fclose(fid);

filename = 'rdata.m';
fid=fopen(filename,'w');
for i=1:length(rh)
    fprintf(fid,'%12.8f\t',rh(i));
end
fprintf(fid,'\n');
fclose(fid);

filename = 'h1data.m';
fid=fopen(filename,'w');
for i=1:length(xv)
    for j=1:length(rh)
        fprintf(fid,'%-12.8f\t',hv1(i,j));
    end
    fprintf(fid,'\n');
end
fclose(fid);

filename = 'h2data.m';
fid=fopen(filename,'w');
for i=1:length(xv)
    for j=1:length(rh)
        fprintf(fid,'%12.8f\t',hv2(i,j));
    end
    fprintf(fid,'\n');
end
fclose(fid);
end