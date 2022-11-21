function fprime = diff1(f,x,h)
%
%  function fprime = diff(f,x,h)
% 
%  First order difference approximation to f'(x)
%  fprime= f[x-h,x+h]=(f(x+h)-f(x-h))/(2h)
%   Its accuracy is O(h^2)
%
fprime= (feval(f,x+h)-feval(f,x-h))/(2*h);

end

