function y = echos(x,T, delay, atten)
%adds an echo to a signal x
%y(t) = x(t) + atten*x(t-delay)
%inputs: T = sample period
% delay = delay time
%atten = attenuation
%
xz= zeros(1, round(delay/T));
xe=[xz atten*x];
y = x+xe(1:length(x));