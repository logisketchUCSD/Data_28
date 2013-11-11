function x = sinegen(f,fs,tdur)
%
% generates a sine wave, plots ten cycles, and plays the tone
%for tdur seconds
%
%inputs; frequency f Hz
%sample frequency fs Hz
%duration tdur s
%
t=0:1/fs:tdur;
x = sin(2*pi*f*t);
tplot = 0:1/fs:10/f;
xplot=x(1:length(tplot));
plot(tplot, xplot);
xlabel('time(s)')
str= sprintf('Ten cycles of %g Hz sine wave',f);
title(str)
sound(x)