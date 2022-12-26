function [x] = Add_Noise(a)
[y, Fs]=audioread(a);
figure;
subplot(1,2,1);
plot(y);
xlabel('time');
ylabel('amplitude');
title('without noise');
noise=0.1*rand(length(y),1);
x=y+noise;
sound(x,Fs);
subplot(1,2,2);
plot(x);
xlabel('time');
ylabel('amplitude');
title('with noise');
audiowrite('noise.wav',noise,Fs);
audiowrite('with_noise.wav',x,Fs);
end


