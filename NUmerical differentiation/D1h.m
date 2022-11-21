function fprime = D1h(f,x,h)
%
%  function fprime = D1h(f,x,h)
%   Extrapolated Difference approximation to the derivative
%   Its accuracy is O(h^4) provided f has four continuous derivatives
%
fp1=diff1(f,x,h);
fp2=diff1(f,x,2*h);
fprime=(4*fp1-fp2)/3;


end

