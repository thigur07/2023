clc;
clear;
#calculation for N and Q
i=[1 1 2 1]
j=[1 2 2 3]
N=i.^2+i.*j.+j.^2
Q=sqrt(3*N)

#average case
for n=2:1:4
   avg_SIdb=10*(log10(1./(6*(Q.^-n))))
   #worst case
   worst_SIdb=10*(log10(0.5./((Q.^-n+(Q+1).^-n+(Q-1).^-n))))
   plot(N,avg_SIdb,N,worst_SIdb);
   xlabel('cluster')
   ylabel('S/I ratio')
   text(8,7,'n=2')
   text(8,14,'n=3')
   text(8,21,'n=4')
   hold on;
   grid on;
   endfor
