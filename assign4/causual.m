n = -10:10;  % Assuming a range of values for n
x = randn(size(n));  % Example input signal, you can replace it with any signal

% System operation
y = x(end:-1:1);

% Plotting
subplot(2,1,1);
stem(n, x, 'r', 'LineWidth', 2);
title('Input Signal x(n)');
xlabel('n');
ylabel('Amplitude');

subplot(2,1,2);
stem(n, y, 'b', 'LineWidth', 2);
title('Output Signal y(n) = x(-n)');
xlabel('n');
ylabel('Amplitude');

