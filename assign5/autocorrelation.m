%B= 3 -2 4 -3]
x= [ 3 -2 4 -3];
subplot(2,1,1);
stem(x);
subplot(2,1,2);
y=xcorr(x,x); %auto correlation
stem(y);
xlabel(' time index');
ylabel('Amplitude');

