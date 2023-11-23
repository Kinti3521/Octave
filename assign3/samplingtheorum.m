t=-15:.01:15;
T=4;
fm=1/T;
x=cos(2*pi*fm*t);
subplot(2,2,1);
plot(t,x);
xlabel('time'); ylabel('x(t)')
grid;
n1=-2:1:2
fs1=1.6*fm;
fs2=2*fm;
fs3=8*fm;
x1=cos(2*pi*fm/fs1*n1);
subplot(2,2,2);
stem(n1,x1);
xlabel('time');ylabel('x(n)')

hold on
subplot(2,2,2);
plot(n1,x1)
grid;
n2=-5:1:5;
x2=cos(2*pi*fm/fs2*n2);
subplot(2,2,3);
stem(n2,x2);
xlabel('time');ylabel('x(n)')
hold on
subplot(2,2,3);
plot(n2,x2)
grid;
n3=-10:1:10;
x3=cos(2*pi*fm/fs3*n3);
subplot(2,2,4);
stem(n3,x3);
xlabel('time');ylabel('x(n)')
hold on
subplot(2,2,4);
plot(n3,x3)
grid;

