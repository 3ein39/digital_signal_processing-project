function [] = Plot_signal(a)
 
[sample_data, fs] = audioread(a);

figure;
subplot(1,1,1);
plot(sample_data)
title(a)
xlabel('Time (seconds)')
ylabel('Amplitude')
end