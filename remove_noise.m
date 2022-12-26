function [  ] = remove_noise( )
[y,fs]=audioread('with_noise.wav');
[y2]=audioread('noise.wav');
figure
subplot(2,2,1)
plot(y)
xlabel('time');
ylabel('amplitude');
title('with noise');
x=y-y2;
subplot(2,1,2);
plot(x);
xlabel('time');
ylabel('amplitude');
title('without noise');
sound(x,fs);
audiowrite('without_noise.wav',x,fs);
end