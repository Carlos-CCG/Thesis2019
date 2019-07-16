

disp('Escolher som Auralizado');
[filename,path]=uigetfile({'*.wav'},'Escolher Som Auralizado','MultiSelect', 'on');
[somA,fsA]=wavread(filename);

somAR=somA/2,4;

sound(somA, fsA);
sound(somAR, fsA);

wavwrite(somAR,fsA, ['InEar' filename]);