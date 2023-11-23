
rp=input('enter passband ripple value');
rs=input('enter stopband ripple value');
fp=input('enter passband freq value');
fs=input('enter stopband freq value');
fsp=input('enter sampling freq value');
w1=2*fp/fsp;
w2=2*fs/fsp;
[n,wn]=buttord(w1,w2,rp,rs);
[b,a]=butter(n,wn,'low');
[h,w]=freqz(b,a,512,fsp);
mag=20*log(abs(h));
subplot(4,1,1);
plot(w,mag);
title('gain vs frequency of low pass filter');
%high pass
[b,a]=butter(n,wn,'high');
[h,w]=freqz(b,a,512,fsp);
mag=20*log(abs(h));
subplot(4,1,2);
plot(w,mag);
title('gain vs frequency of high-pass filter');
%band pass
[n]=buttord(w1,w2,rp,rs);
wn=[w1,w2];
[b,a]=butter(n,wn,'bandpass');
[h,w]=freqz(b,a,512,fsp);
mag=20*log(abs(h));
subplot(4,1,3);
plot(w,mag);
title('gain vs frequency of band-pass filter');
%band stop
[n]=buttord(w1,w2,rp,rs);
[b,a]=butter(n,wn,'stop');[h,w]=freqz(b,a,512,fsp);
mag=20*log(abs(h));
subplot(4,1,4);
plot(w,mag);
title('gain vs frequency of band-stop filter');

