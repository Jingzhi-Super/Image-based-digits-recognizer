function [Y] = Yule(na,nb,nab,n00)
% Yule coefficient
Y=(nab*n00-(na-nab)*(nb-nab))/(nab*n00+(na-nab)*(nb-nab));

end

