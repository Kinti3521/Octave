
x = 0:pi/4:2*pi;
v = sin(x);
xq = 0:pi/16:2*pi;
%figure
%vq1 = interp1(x,v,xq);
%vq1 = interp1(x,v,xq);
%plot(x,v,'o',xq,vq1,':.');
%xlim([0 2*pi]);
%title('(Default) Linear Interpolation');
figure
vq2 = interp1(x,v,xq,'spline');
plot(x,v,'o',xq,vq2,':.');
xlim([0 2*pi]);
t = 0:.00025:1; % Time vector
x = sin(2*pi*30*t) + sin(2*pi*60*t);
y = decimate(x,4);
stem(x(1:120)), axis([0 120 -2 2]) % Original signal

figure
stem(y(1:30)) % Decimated signal

