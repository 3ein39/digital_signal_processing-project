function [] = ECGsignal(n)
load (n)

max_rr_interval = max(diff(ecg));


rate = 60/max_rr_interval;
h = msgbox(['The result is ' num2str(rate)]);

  t=1:44604;
 figure(1);
 plot(t,ecg,'b');
 xlabel('time');
 ylabel('amp');
  grid on;
title('ECG signal');

end