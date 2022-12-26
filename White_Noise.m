function [] = White_Noise()
fs=4000;
time=2;
N=fs*time;
t=linspace(0,time,N);
a=0.1;
x=a*rand(1,N)*2-1;
sound(x,fs)
audiowrite('whitenoise.wav',x,fs);
figure
plot(t,x);
 xlabel('TIME');
 ylabel('amplitude');
 title('White Noise Label');
 xlim([0,0.01]),grid

end