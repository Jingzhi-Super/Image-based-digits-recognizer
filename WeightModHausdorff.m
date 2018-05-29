function [distance] = WeightModHausdorff(A,B)
% weighted modified Hausdorff distance
dab=zeros(size(A,1),1);
for i=1:numel(dab)
    r=A(i,2);
    dab(i)=(r^0.1)*min(sqrt((A(i,1)-B(:,1)).^2+(A(i,2)-B(:,2)).^2));
end
distance=sum(dab)/numel(dab);


end

