function fp2 = diff2(f,x,h)
%
%   function fp2 = diff2(f,x,h)
%   O(h^2) approximation to f''(x) 
%   given by the second order difference
%   fp2=2*f[x+h,x,x-h]
%   It assume the existance of four continuous derivatives
%
fp2=(feval(f,x+h)-2*feval(f,x)+feval(f,x-h))/h^2;


end

