clc; close; clear all;
%Exponentially Decaying Sinusoidal Signal
%x(t)=A*exp(-a*t)*sin((2*pi*f*t)+phi);

fs=1000;   %sampling frequency
ts=1/fs;

A=60;   a=6;  f=10;  phi=0;  n=[];

time_start=0;   time_end=1;
n=time_start:ts:time_end;
index_t=0;

for t=n
    index_t=index_t+1;
    n(2,index_t)=A*exp(-a*t)*sin((2*pi*f*t)+phi);
end

figure(1)
plot(n(1,:),n(2,:),'b*');
%stem(n(1,:),n(2,:),'b*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('Exponentially Decaying Sinusoidal Signal');
grid on

