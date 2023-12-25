clc; close; clear all;

%Unit Ramp Signal

time_negative=-4;   time_positive=4;
n=time_negative:1:time_positive;
index_t=0;

for ii=n
    index_t=index_t+1;
    if ii==0 || ii>0
        u=ii;
    else
        u=0;
    end
    n(2,index_t)=u;
end

figure(1)
%plot(n(1,:),n(2,:),'b*');
%stem(n(1,:),n(2,:),'b*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('Unit Ramp Signal');
grid on

% M.S.Ahmed