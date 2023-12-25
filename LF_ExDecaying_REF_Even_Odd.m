clc;    close all;  clear;

%Exponentially Decaying Sinusoidal Signal

A=60;   a=5;   f=10;

ts=0.01;

n=-1:ts:1;

ind=0;

for ii=n
    ind=ind+1;

    if ii>=0 

    n(2,ind)=A*exp(-a*ii)*sin(2*pi*ii*f);

    else

       n(2,ind)=0;

    end
end

figure(1)
plot(n(1,:),n(2,:),'b--')
title('Exponential damp signal')
xlabel('time index')
ylabel('Amplitude')
grid on;

% Reflected Part

ind1=0;

for t=n(1,:)

    ind1=ind1+1;

    n(3,ind1)=n(2,ind);
    ind=ind-1;

end

figure(2)
plot(n(1,:),n(3,:),'b--')
title('Exponential damp reversed signal')
xlabel('time index')
ylabel('Amplitude')

%Even Part

ind1=0;

for ii=n(1,:)

    ind1=ind1+1;

    n(4,ind1)=(n(3,ind1)+n(2,ind1))/2;

end

figure(3)
plot(n(1,:),n(4,:),'b--');
title('Exponential damp even signal');
xlabel('time index');
ylabel('Amplitude');
grid on

% Odd Part

ind1=0;

for ii=n(1,:)

    ind1=ind1+1;

    n(5,ind1)=((n(2,ind1)-n(3,ind1)))/2;
end

figure(4)
plot(n(1,:),n(5,:),'b--')
title('Exponential damp odd signal')
xlabel('time index')
ylabel('Amplitude')
grid on

% Summation of Even and Odd Signal

ind1=0;

for ii=n(1,:)

    ind1=ind1+1;
    n(6,ind1)=n(4,ind1)+n(5,ind1);

end

figure(5)
plot(n(1,:),n(6,:),'b--');
title('Exponential damp regain signal');
xlabel('time index');
ylabel('Amplitude');
grid on
