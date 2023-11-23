%x=A= [ 1 3 2 5]
%h=B= [3 -2 4 -3]
x= [ 1 2 5 7];
xlabel(' time index');
ylabel('Amplitude');
subplot(311);
stem(x);
h= [1 3 2 5];
xlabel(' time index');
ylabel('Amplitude');
subplot(312);
stem(h);
xlabel(' time index');
ylabel('Amplitude');
subplot(313);
y = xcorr(x,h);
stem(y);
xlabel(' time index');
ylabel('Amplitude');

