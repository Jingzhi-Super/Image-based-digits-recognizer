function [result,c] = polar(data,l)
% turn screen coordinate into polar coordinate
c = centroid(data,l);% centroid
x=data(:,1)-c(1);y=data(:,2)-c(2);
r=sqrt(x.^2+y.^2);
length=sum(l);
r=r./length;% normalize the r axis
theta=atan2(y,x);% find the angles
result=[theta,r];

end

