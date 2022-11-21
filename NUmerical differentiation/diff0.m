function fprime = diff0(f,x,h)
%
%   Classic first order difference
%
%   fprime= f[x+h,x]=(f(x+h)-f(x))/h
%   Its accuracy is O(h)
%
fprime=(feval(f,x+h)-feval(f,x))/h;


end

