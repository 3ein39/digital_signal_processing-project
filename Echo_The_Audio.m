function [] = Echo_The_Audio(a)
[y,fs]=audioread(a);
impulse=[1,zeros(1,0.4*fs),0.5,zeros(1,0.4*fs),0.25];

x=y(:,1); %1D vector form

echo=conv(x,impulse);
figure
 subplot(3,1,1);
 plot(y);
 title('original signal');
 
 subplot(3,1,2);
plot(impulse);
 title('impulse respons');
 
 subplot(3,1,3);
 plot(echo);
 title('echo');

sound(echo,fs);
end
