fp=input('enter the passing freq:');
fstop=input('enter the stopping freq:');
fsp=input('enter the sampling freq value:');
n=input('enter the order of the filter:');
w1=2*fp/fsp;
w2=2*fstop/fsp;
%low pass filter
A=fir1(n,w1,'Low');
%freqz(A,1,512,fsp);
[h,w]=freqz(A,1,512,fsp);
mag=20*log10(abs(h));
subplot(4,1,1);
plot(w,mag);
title('Gain vs Frequency of Low-pass Filter');
%high pass filter
A=fir1(n,w2,'high');
%freqz(A,1,512,fsp);
[h,w]=freqz(A,1,512,fsp);
mag=20*log10(abs(h));
subplot(4,1,2);
plot(w,mag);
title('Gain vs Frequency of High-pass Filter');
%band pass filter
wn=[w1,w2];
A=fir1(n,wn,'bandpass');
%freqz(A,1,512,fsp);
[h,w]=freqz(A,1,512,fsp);
mag=20*log10(abs(h));
subplot(4,1,3);
plot(w,mag);
title('Gain vs Frequency of Band-pass Filter');
%band stop filter
A=fir1(n,wn,'stop');
%freqz(A,1,512,fsp);
[h,w]=freqz(A,1,512,fsp);
mag=20*log10(abs(h));
subplot(4,1,4);
plot(w,mag);title('Gain vs Frequency of Band-stop Filter');%title of graph

