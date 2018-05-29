function [newpoints] = rotateby(points,theta,c)
% rotate by any angles

% centroid
x=c(1);
y=c(2);

newpoints=zeros(size(points));
j=1;
for i=1:size(points,1)
    qx=(points(i,1)-x)*cos(theta)-(points(i,2)-y)*sin(theta)+x;
    qy=(points(i,1)-x)*sin(theta)+(points(i,2)-y)*cos(theta)+y;
    newpoints(j,:)=[qx,qy];
    j=j+1;
end

end