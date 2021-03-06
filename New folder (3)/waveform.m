clear, clc

% get a section of the sound file
files=dir('wav\*.wav');
song=strcat('wav\',files(1).name)
[x,fs] = wavread(song);
x = x(:,1);             % get the first channel
xmax = max(abs(x));     % find the maximum value
x = x/xmax;             % scalling the signal

% time & discretisation parameters
N = length(x);
t = (0:N-1)/fs;       

% plotting of the waveform

plot(t, x, 'r')
xlim([0 max(t)])
ylim([-1.1*max(abs(x)) 1.1*max(abs(x))])
grid on
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14)
xlabel('Time, s')
ylabel('Normalized amplitude')
title('The signal in the time domain')