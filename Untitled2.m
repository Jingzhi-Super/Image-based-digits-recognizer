clear
clc
load temp
load Inkdata
Pdata  = pixel(Inkdata);
length   = inklength(Inkdata);
[thetaR,c]  = polar(Inkdata,length);
