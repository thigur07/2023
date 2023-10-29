clc;
clc all;
close all;
f=900e6
t=40;  %transmitter antenna height
r=10;   %Reciever Antenn heaight
d=1:1:1000;     %distance in meters
F=(20*log10(d))+20*log10(f)-147.55;
T=(40*log10(d))+20*log10(f)+20*log10(t)+20*log(r)-147.55;
figure;
plot(d,F,'g','DisplayName','Freespace path loss')
hold on;
plot(d,T,'r','DisplayName','Two ray ground path loss');
xlabel('Distance in meters')
ylabel('Path loss in DB')
title('aeffect of diffrent propagation models in coverage  distance')
text(200,100,'Freespace path loaa');
text(200,200,'Two ray ground path loss')
legend("Freespace","two ray");
grid on;

