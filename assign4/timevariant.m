n = -10:10;  % Assuming a range of values for n
k = 2;  % Time shift value

x = randn(size(n));  % Example input signal, you can replace it with any signal

% System operation
y = x(end:-1:1);

% Time-shifted input
x_shifted = circshift(x, [0, k]);

% Corresponding time-shifted output
y_shifted = circshift(y, [0, k]);

% Plotting
subplot(2,1,1);
stem(n, x, 'r', 'LineWidth', 2);
title('Input Signal x(n)');
xlabel('n');
ylabel('Amplitude');

subplot(2,1,2);
stem(n, y, 'b', 'LineWidth', 2);
hold on;
stem(n, y_shifted, 'g', 'LineWidth', 2, 'Marker', 'x');
hold off;
legend('Original Output y(n)', 'Shifted Output y(n-k)');
title('Output Signal y(n) = x(-n)');
xlabel('n');
ylabel('Amplitude');

