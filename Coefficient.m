function [Tsc,Y] = Coefficient(A,B)
% Coefficient classifier
na=size(A,1);nb=size(B,1);% here are na and nb
if na<=nb
    d=zeros(na,1);
    for i=1:na
        d(i)=min(sqrt((A(i,1)-B(:,1)).^2+(A(i,2)-B(:,2)).^2));
    end
else
    d=zeros(nb,1);
    for i=1:nb
        d(i)=min(sqrt((B(i,1)-A(:,1)).^2+(B(i,2)-A(:,2)).^2));
    end
end 
nab=numel(d(d<4.5));% here is nab

W=zeros(48*48,2);
for i=1:48
    for j=1:48
        W(48*(i-1)+j,:)=[i-1,j-1];% white pixels
    end
end
Wa=W;Wb=W;
[~,Oa,~]=intersect(Wa,A,'rows');
[~,Ob,~]=intersect(Wb,B,'rows');
Wa(Oa,:)=[];Wb(Ob,:)=[];
% [~,ia,~]=intersect(Wa,Wb,'rows');
% n00=numel(ia);
if size(Wa,1)<=size(Wb,1)
    d=zeros(size(Wa,1),1);
    for i=1:size(Wa,1)
        d(i)=min(sqrt((Wa(i,1)-Wb(:,1)).^2+(Wa(i,2)-Wb(:,2)).^2));
    end
else
    d=zeros(size(Wb,1),1);
    for i=1:size(Wb,1)
        d(i)=min(sqrt((Wb(i,1)-Wa(:,1)).^2+(Wb(i,2)-Wa(:,2)).^2));
    end
end 
n00=numel(d(d<4.5)); % here is n00
Tsc = Tanimoto(na,nb,nab,n00);
Y = Yule(na,nb,nab,n00);

end

