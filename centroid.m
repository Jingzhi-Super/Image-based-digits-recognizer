function [center] =centroid(data,l)
% new centroid calculated by weighted segments
x=data(:,1);y=data(:,2);
length=sum(l);
xc=sum(x(1:end-1).*l)/length;
yc=sum(y(1:end-1).*l)/length;
center=[xc,yc];



end

