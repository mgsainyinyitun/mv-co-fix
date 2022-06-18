function [Z] = constructGraphZ(X) 
pn = 30;                  % number of neighbours for constructS_PNG
m = length(X);              % number of views
%% initialize Z0: Constructing the SIG matrices
Z0 = cell(1,m);
for i = 1:m
    [Z0{i}, ~] = InitializeSIGs(X{i}, pn, 0);
end
Z = Z0;   % Z0{1}, Z0{2}, ....


