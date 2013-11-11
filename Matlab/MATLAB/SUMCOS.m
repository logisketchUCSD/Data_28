function[tt,xx] = sumcos(f,x,fs,dur)
%SUMCOS! Function to synthesize a sum of cosine waves
%usage
%xx=sumcos(f,x,fs,dur)
%f= vector of frequencies
%X = vector of complex exponentials
%fs = the sampleing rate (inHz)
%dur = total time duration of signal
%Note: if and X must be the same length
if (length(f) ~=length(X))
error('SUMCOS: f and X must be the smae length');
end
tt=0:1/fs:dur;
xx= %complete this line of code