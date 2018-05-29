function [distance] = Hausdorff(A,B,k)
% the kth Hausdorff distance between two point sets A and B
hab=zeros(size(A,1),1);
for i=1:size(A,1)
    hab(i)=min(sqrt((A(i,1)-B(:,1)).^2+(A(i,2)-B(:,2)).^2));
end
hab=sortrows(hab);
i=floor(numel(hab)*(100-k)/100);
distance=hab(i);


end

