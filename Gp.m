function zplus = Gp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Unknown hybrid system 2 (Exercise 9)
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Gp.m
%--------------------------------------------------------------------------

% Definition of state
z1 = z(1);
z2 = z(2);

% Definition of zplus
zplus = [3/4*z1; 1/4*z1];

end