clear;clc;
dbstop if error;
load temp
load Inkdata
Inkdata(:,3)=[];% time invariance
length   = inklength(Inkdata);% inklength
[thetaR,c]  = polar(Inkdata,length);% polar coordinates
score=zeros(10,4);
tic
for i=1:10% compare with each template
tpi=temp{i,2};tpo=temp{i,3};
angle(i,1)  = HandleRotate(thetaR,tpo);
data = rotateby(Inkdata,angle(i),c);
Pdata  = pixel(data);
[HAB,MHD] = Distance(Pdata,tpi,6);
[Tsc,Y] = Coefficient(Pdata,tpi);
score(i,:)=[HAB,MHD,Tsc,Y];
end
toc
score(:,1)=score(:,1)./max(score(:,1));
score(:,2)=score(:,2)./max(score(:,2));
score(:,3)=-score(:,3)+1;
score(:,4)=-score(:,4).*1/2+1/2;
result=sum(score,2);
final=find(result==min(result));% which fits best
if final==10
    final=0;
end
disp(final);



