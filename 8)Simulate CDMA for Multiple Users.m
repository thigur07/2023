%generate sprreading codes
user1=[1,-1,1,-1]
user2=[-1,-1,1,1]

%generate data signals
data1=randi([0,1],1,length(user1))*2-1
data2=randi([0,1],1,length(user2))*2-1

%spread data signals
spread1=user1.*data1
spread2=user2.*data2

%combine the spread signals
transmitted_signal=spread1+spread2

%demodulation
R1=transmitted_signal.*user1
R1_data=sum(R1)>0

R2=transmitted_signal.*user2
R2_data=sum(R2)>0

%display recieved data
disp(['Recieved data for user1:',num2str(R1_data)])
disp(['Recieved data for user2:',num2str(R2_data)])
