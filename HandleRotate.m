function [angle] = HandleRotate(A,B)
% Handling roration by comparing two point sets in different angles
% A does the rotation while B keeps still
distance=zeros(40,1);j=1;
still=A;
% A(:,2)=A(:,2)*10;
for i=0:0.05*pi:1.95*pi
    A(:,1)=A(:,1)+i;
    A(A(:,1)>pi)=A(A(:,1)>pi)-2*pi;
%     A=pixel(A);
    WMAB = WeightModHausdorff(A,B);
    WMBA = WeightModHausdorff(B,A);
    distance(j)=max(WMAB,WMBA);
    j=j+1;
    A=still;
end
angle=(find(distance==min(distance),1)-1)*0.05*pi;% the best angle
    
end

