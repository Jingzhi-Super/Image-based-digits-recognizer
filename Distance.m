function [HAB,MHD] = Distance(A,B,K)
% distance classifier
% Hausdorff distance
[hab] = Hausdorff(A,B,K);
[hba] = Hausdorff(B,A,K);
HAB=max(hab,hba);
% Modified Hausdorff distance
[modab] = ModHausdorff(A,B);
[modba] = ModHausdorff(B,A);
MHD=max(modab,modba);


end

