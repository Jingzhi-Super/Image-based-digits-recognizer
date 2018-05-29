function [Tsc] = Tanimoto(na,nb,nab,n00)
% Tanomoto coefficient
TAB=nab/(na+nb-nab);
TcAB=n00/(na+nb-2*nab+n00);
alpha=0.75-0.25*(na+nb)/(2*48*48);
Tsc=alpha*TAB+(1-alpha)*TcAB;
  
end

