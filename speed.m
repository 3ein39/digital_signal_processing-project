function [] = speed(name,n)
[x,fs]=audioread(name);
sound(x,n*fs);
figure
subplot(1,2,1)
plot(x)
title(name)
xlabel('Time (seconds)')
ylabel('Amplitude')
subplot(1,2,2)
t = linspace(0,length(x)/(n*fs),length(x));
plot(t,x);
title('after')
xlabel('Time (seconds)')
ylabel('Amplitude')
end