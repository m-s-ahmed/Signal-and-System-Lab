clc; clear; close all;

fs=100; %Sampling Frequency
ts=1/fs;

a=1; fc_1=1;
b=1; fc_2=3;

ind=1; x=[];

for n=0:fs
    x1(ind)=a*sin(2*pi*fc_1*ts*n);
    x2(ind)=b*sin(2*pi*fc_2*ts*n);
    ind=ind+1;
end

x3=x1+x2;

%plot the discrete time signal values x1,x2 and x3

t=0:fs

%figure(1)
subplot(4,2,1);
plot(t,x1,'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('x1 signal');
grid on

%figure(2)
subplot(4,2,2);
plot(t,x2,'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('x2 signal');
grid on

%figure(3)
subplot(4,2,3);
plot(t,x3,'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('x3 signal');
grid on

%Discrete system input-output relation y= -(x/2)-Linear----- y=-(x.^2/2)
%--Non-linear

%For input x1, system response y1
y1=-(x1/2);

%figure(4)
subplot(4,2,4);
plot(t,y1,'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('y1 signal');
grid on

%For input x2, system response y2
y2=-(x2/2);

%figure(5)
subplot(4,2,5);
plot(t,y2,'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('y2 signal');
grid on

%For input x3, system respone y3
y3=-(x3/2);

%figure(6);
subplot(4,2,6);
plot(t,y3,'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('y3 signal');
grid on

%The sum of the outputs for x1 and x2
ys=y1+y2;

%figure(7)
subplot(4,2,7);
plot(t,ys,'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('ys signal');
grid on

%Checking whether the system is linear or non-linear

Linearity_check=sum(abs(y3-ys));

if Linearity_check==0
    disp('The system is Linear');
else
    disp('The system is Non-Linear');
end

% M.S.Ahmed



