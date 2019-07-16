function [C fs] = AddSilenceBeg(time)
%Add Silence in the end of the stereo wav file, time in Seconds
%

[filename,path]=uigetfile({'*.wav'},'Get File','MultiSelect', 'on');
InitSound=wavread(filename);
fs=65536;
m=time/1000;
n=m*fs;
B=zeros(n,2);
C=vertcat(B,InitSound);

nome=['Sil' filename];

wavwrite(C,fs,nome);