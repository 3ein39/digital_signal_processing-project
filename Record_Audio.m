function [] = Record_Audio()
fs=15000;
time=5;

rec=audiorecorder(fs,16,1);
f = msgbox('Recording...');
% disp('Recording...');
recordblocking(rec,time);
l = msgbox('End of recording.');
% disp('End of recording.');
recdata=getaudiodata(rec);
audiowrite('DSP.wav',recdata,fs);
figure
plot(recdata)
title('rercord')
xlabel('Time (seconds)')
ylabel('Amplitude')
sound(recdata,fs);
end 
