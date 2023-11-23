
Fs = 300e3;
dt = 1/Fs;
Fsig = 10e3;
Tdur = 1e-3;

tvec = 0:dt:Tdur-dt;
x = cos(2*pi*Fsig*tvec);

plot(tvec,x);

