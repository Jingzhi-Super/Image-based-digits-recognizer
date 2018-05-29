function [distance] = ModHausdorff(A,B)
% Modified Hausdorff distance between two point sets A and B
dab=zeros(size(A,1),1);
for i=1:numel(dab)
    dab(i)=min(sqrt((A(i,1)-B(:,1)).^2+(A(i,2)-B(:,2)).^2));
end
distance=sum(dab)/numel(dab);

end

