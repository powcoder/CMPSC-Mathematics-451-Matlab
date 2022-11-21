       function  int=trap(f,a,b,n)
%
%  function  int=trap(f,a,b,n)
%   Basic composite trapezoid rule for n points.
%   Input parameters
%     f-- function handle
%     a,b -- limits of integration
%     n -- number of mesh points 
%       i.e., mesh spacing is h=(b-a)/n;
%	  
       h=(b-a)/n;
       int=0.5*h*(feval(f,a)+feval(f,b));
       if n > 1
           interior=a+h:h:b-h;
           int=int+h*sum(feval(f,interior));
       end;
   
