clc;    close all;  clear;

%Generate Unit Step Signlal

time_negative=-4;   time_positive=4;
n=time_negative:1:time_positive;
index_t=0;

for ii=n
    index_t=index_t+1;

    if ii==0 || ii>0
        u=1;
    else
        u=0;
    end
    n(2,index_t)=u;
end

figure(1)
%plot(n(1,:),n(2,:),'b*');
stem(n(1,:),n(2,:),'b*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('Unit Step Signal');
grid on

%Reflected Part

n_ref=time_negative:1:time_positive;
ind=0;
ind_ref=(time_positive*2)+1;

for ii=n_ref
    ind=ind+1;
    n_ref(2,ind)=n(2,ind_ref);
    ind_ref=ind_ref-1;
end

figure(2)
%plot(n_ref(1,:),n_ref(2,:),'b*');
stem(n_ref(1,:),n_ref(2,:),'b*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('Reflected Unit Step Signal');
grid on

% Generating Even-Odd Signal

even_signal = (1/2)*(n(2,:) + n_ref(2,:));

odd_signal = (1/2)*(n(2,:) - n_ref(2,:));

% Plotting Odd Signal

figure(3)
%plot(n(1,:),even_signal(1,:),'b--*');
stem(n(1,:),even_signal(1,:),'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title('  Unit Step Even Signal');
grid on

% Plotting Even Signal

figure(4)
%plot(n(1,:),odd_signal(1,:),'b--*');
stem(n(1,:),odd_signal(1,:),'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title(' Unit Step Odd Signal');
grid on

%Summation of the Even and Odd Signal

even_odd=even_signal+odd_signal;

figure(5)
%plot(n(1,:),even_odd(1,:),'b--*');
stem(n(1,:),even_odd(1,:),'b--*');
xlabel('Time(second)');
ylabel('Signal Amplitude');
title(' Summation of Even and Odd Signal');
grid on

% M.S.Ahmed


