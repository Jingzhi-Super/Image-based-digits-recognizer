function [length] =inklength(points)
% calculate the path length
l=sqrt((points(1:end-1,1)-points(2:end,1)).^2+...
    (points(1:end-1,2)-points(2:end,2)).^2);
length=l;
end