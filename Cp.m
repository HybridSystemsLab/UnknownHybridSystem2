function v  = Cp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Unknown hybrid system 2 (Exercise 9)
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Cp.m
%--------------------------------------------------------------------------
% Return 0 if outside of Cp, and 1 if inside Cp
%--------------------------------------------------------------------------

% Check flow condition
if ~Dp(z)
   v = 1;  % report flow
else
   v = 0;  % do not report flow
end

end