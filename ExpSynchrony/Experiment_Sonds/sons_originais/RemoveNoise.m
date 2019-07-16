function [C fs] = RemoveNoise()
%Add Silence in the end of the stereo wav file, time in Seconds
%
[filename,path]=uigetfile({'*.wav'},'Get File','MultiSelect', 'on');
InitSound=wavread(filename);
fs=65536;

[a,b]=max(InitSound);
c=min(b);
d=InitSound(c:length(InitSound),:);
nome=['RemNoise ' filename];

wavwrite(d,fs,nome);