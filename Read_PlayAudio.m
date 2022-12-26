function [] = Read_PlayAudio(y)
[x,fs]=audioread(y);
sound(x,fs)
figure
plot(x)
title(y)
xlabel('Time (seconds)')
ylabel('Amplitude')
end