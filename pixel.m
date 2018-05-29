function [result] =pixel(data)
X=data(:,1)-min(data(:,1));Y=data(:,2)-min(data(:,2));
H=max(Y);
L=max(X);
d=abs(H-L)/2;
if H>L
    X2=(X+d/2)/(L+d)*47;
    Y2=Y/H*47;
else
    Y2=(Y+d/2)/(H+d)*47;
    X2=X/L*47;
end
X3=round(X2); Y3=round(Y2);
result=[X3,Y3];
result=unique(result,'rows');
% No repeated points in each set


end

