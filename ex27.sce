// Computer solution to active set qp exercise
clear; clc;

// import solver
exec('solve_qp.sci');

// Problem definition

P = eye(2, 2);
q = [-2; -5];
A = [-1 2; 1 2; 1 -2; -1 0; 0 -1];
b = [2 6 2 0 0]';

// active set method start
// Iteration 0

S0 = [3 5];

[x0, mu0] = solve_qp(P, q, A(S0, :), b(S0));

disp('Iteration 0');
disp(x0);
disp(mu0);
disp(A * x0 - b);

// Iteration 1

S1 = [3];

[x1, mu1] = solve_qp(P, q, A(S1, :), b(S1));

disp('Iteration 1');
disp(x1);
disp(mu1);
disp(A * x1 - b);

// Iteration 2

S2 = [];

[x2, mu2] = solve_qp(P, q, A([], :), b([]));

disp('Iteration 1');
disp(x2);
disp(mu2);
disp(A * x2 - b);
