#Probablity of delay
clc;
clear all;
close all;
A=0.1:0.1:100;
B=0
for C=[1,2,5,10,50,100]
  a=(A.^C)/(factorial (C));
  for K=0:1:C;
    B=B+((A.^K)/(factorial(K)));
  endfor
 Pr=a./B;
  loglog(A,Pr);
  hold on;
  grid on;
  axis([0.1 100 0.01 1])
endfor
xlabel("Traffic Intensity");
ylabel("Probablity of call blocking");

