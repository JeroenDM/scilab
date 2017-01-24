function [x, mu] = solve_qp(P, q, A, b)
    // solve a quadric program with linear equality constraints and P > 0
    n = size(A, 2); // number of variables
    m = size(A, 1); // number of equality constrains
    
    // construct kkt matrix
    KKT = [P A'; A zeros(m, m)];
    
    // Solve KKT system
    sol = KKT \ [ -q; b];
    
    // split primal and dual solution
    x = sol(1:n);
    mu = sol(n+1 : $);
endfunction
