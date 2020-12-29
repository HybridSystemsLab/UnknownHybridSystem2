%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: Unknown hybrid system 2 (Exercise 9)
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: run.m
% Set of simulation files created and edited by 
% Ricardo Sanfelice
%--------------------------------------------------------------------------

% set of initial conditions 1
z0 = [ 2; -1];
% set of initial conditions 2
%z0 = [ 1; -1];
% set of initial conditions 3
%z0 = [ 0; -1];

global u;
u = 1;

% simulation horizon
TSPAN=[0 5];
JSPAN = [0 20];

% rule for jumps
% rule = 1 -> priority for jumps
% rule = 2 -> priority for flows
% rule = 3 -> no priority, random selection when simultaneous conditions
rule = 1;

options = odeset('RelTol',1e-6,'MaxStep',.001);

% simulate
[t,j,z] = HyEQsolver(@Fp,@Gp,@Cp,@Dp,...
    z0,TSPAN,JSPAN,rule,options,'ode23t');

z1 = z(:,1);
z2 = z(:,2);

% plot solution
figure(1)
clf
plot(z1,z2,'r*')

print -depsc -tiff -r300 UnknownSystem2