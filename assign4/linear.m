n = -10:10;  % Assuming a range of values for n
% Generate two random input signals
x1 = randn(size(n));
x2 = randn(size(n));
% System operation for each input
y1 = x1(end:-1:1);
y2 = x2(end:-1:1);
% Superposition test
superposition_lhs = y1 + y2;
superposition_rhs = x1(end:-1:1) + x2(end:-1:1);
% Check if the system is linear
is_linear = isequal(superposition_lhs, superposition_rhs);
% Plotting
subplot(3,1,1);
stem(n, x1, 'r', 'LineWidth', 2);
title('Input Signal x1(n)');
xlabel('n');
ylabel('Amplitude');
subplot(3,1,2);
stem(n, x2, 'b', 'LineWidth', 2);
title('Input Signal x2(n)');
xlabel('n');
ylabel('Amplitude');
subplot(3,1,3);
stem(n, superposition_lhs, 'g', 'LineWidth', 2);
hold on;
stem(n, superposition_rhs, 'm', 'LineWidth', 2);
hold off;
title('Superposition Test');
xlabel('n');
ylabel('Amplitude');
legend('Y1(n) + Y2(n)', 'X1(-n) + X2(-n)', 'Location', 'NorthWest');
disp(['Is the system linear? ' num2str(is_linear)]);
