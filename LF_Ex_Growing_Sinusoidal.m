clc; close; clear all;

%Exponentially Growing Sinusoidal Signal
%x(t)=A*exp(a*t)*sin(2*pi*f*t)+phi);

A=60; a=6; phi=0;  f=10;  n=[];

fs=1000; %Sampling frequency
ts=1/fs;

time_negative=0;    time_positive=1;    
n=time_negative:ts:time_positive;
index_t=0;

for t=n
    index_t=index_t+1;
    n(2,index_t)=A*exp(a*t)*sin((2*pi*f*t)+phi);
end

figure(1)
plot(n(1,:),n(2,:),'b*');
%stem(n(1,:),n(2,:),'b*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('Exponentially Growing Sinusoidal Signal');
grid on
