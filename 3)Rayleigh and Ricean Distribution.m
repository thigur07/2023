clc;
clear all;
close all;
% to plot rayleigh-ricean PDF
r=0:0.001:10;
A=1;
p=0.2;%sigma
Pr=((r/p^2).*(exp(-r.^2/2.*p^2)));
Pd=((r/p^2).*(e-((r.^2)+(A^2))/2.*(p^2)));
subplot(1,1,1)
plot(r,Pr);
xlabel("recieved signal voltage level");
ylabel("probability dessity function");
title("Rayleigh and ricean pdf");
hold on;
plot(r,Pd);
xlabel("recieved signal voltage level");
ylabel("probability dessity function");
title("Rayleigh and ricean pdf");
text(3,312,'rayleigh pdf')
text(3,104,'ricean pdf')
