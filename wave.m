function varargout = wave(X, m)
% Wave Fucntion
% if no input is given, return dimensions, bounds and minimum
if (nargin == 0)
varargout{1} = 2;  % # dims
varargout{2} = [-4, -4]; % LB
varargout{3} = [+4, +4]; % UB
varargout{4} = [1, 4]; % solution
varargout{5} = 0; % function value at solution
% otherwise, output function value
else
if (nargin == 1)
m = 10;
end
d = length(X);
sum = 0;
for ii = 1:d
xi = X(ii);
new = tan(xi) * (cos(ii*xi^2/pi))^(4*m)+sin(xi);
sum  = sum + new;
sum  = sum + cos(sum);
end
varargout{1} = -sum;
end
end