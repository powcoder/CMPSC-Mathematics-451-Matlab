function fp2 = D12(f,x,h)
%
%   fp2 is an O(h^4) approximation to f''(x)
%   It assumes the existance of four continuous derivatives
%
%   function fp2 = D12(f,x,h)
%  
fp12=diff2(f,x,h);
fp22=diff2(f,x,2*h);
fp2=(4*fp12-fp22)/3;


end

