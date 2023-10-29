clc;
close all;
clear all;
gt=1;
gr=1;
Pt=500;
l=10;
d=10;
Pi=3.14;
C=3*10^8;
f=900;
lambda=C/f;

%case 1 (change in pt)
Pt1=1:1:500;
Pr=(Pt1.*gt*gr*lambda*2)./(((4*Pi)^2)*d^2.*l);
subplot(2,2,1)
hold on;
grid on;
plot(Pt1,Pr);
title('Varying transmitted power');

%case 2 (change in d)
d1=1:0.001:10;
Pr=(Pt*gt*gr*lambda*2)./(((4*Pi)^2)*d1.^2.*l);
subplot(2,2,2);
plot(d1,Pr);
title('Varying distance');
hold on;
grid on;

%case 3 (change in lambda)
lambda1=1:0.1:10;
Pr=(Pt*gt*gr*lambda1.*2)./(((4*Pi)^2)*d^2.*l);
subplot(2,2,3)
hold on;
grid on;
plot(lambda1,Pr);
title('Varying transmitted power');

%case 4 (change in length)
l1=1:0.001:10;
Pr=(Pt*gt*gr*lambda*2)./(((4*Pi)^2)*d^2.*l1)
subplot(2,2,4)
hold on;
grid on;
plot(l1,Pr);
title('Varying transmitted power');



