clc;
clear all;
close all;
a=[1 1 1 1; 2 2 2 2; 3 3 3 3; 4 4 4 4; 5 5 5 5; 6 6 6 6]
b=[10 10 10 10; 11 11 11 11; 12 12 12 12; 13 13 13 13; 14 14 14 14; 15 15 15 15]
[p,q]=size(a)
for i=1:p
  c=[a(i,1:q) b((7-i), 1:q)];
  disp(c)
  if(i<4)
 d=[a(i,1:q) b((i+3), i:q)];
else
 d=[a(i,1:q) b((i-3),1:q)];
 disp(d)
end
end
