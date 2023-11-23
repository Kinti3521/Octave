% Given sequences
A = [1 3 2 5];
B = [3 -2 4 -3];

% Linear combination
alpha = 2;
beta = -1;
linear_combination = alpha * A + beta * B;

% Circular combination
shift_amount = 2;  % Circular shift by 2 positions
circular_combination = circshift(A, shift_amount) + circshift(B, shift_amount);

% Display results
disp('Linear Combination:');
disp(linear_combination);

disp('Circular Combination:');
disp(circular_combination);

