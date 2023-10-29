clc;
clear all;
close all;
n=input('Enter the Number=');
Hn=1;
for i=0:2:n;
  H2n=[Hn Hn ; Hn -Hn];
  Hn=H2n;
end

disp(H2n);
[p,q]=size(H2n);
X=input('Enter first walsh code number :');
Y=input('Enter second walsh code number :');
H=H2n(X,1:q).*H2n(Y,1:q);
disp(H)
L=0;
for k=1
  for z=1:q
  L=L+H(k,z)
  z+1;
  end
end


disp('The addition is ');
disp(L)
if L==0;
  disp('it is Orthogonal');
else
  disp('it is not Orthogonal');
  end



