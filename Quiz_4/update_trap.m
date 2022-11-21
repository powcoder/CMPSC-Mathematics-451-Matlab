    function new_int=update_trap(f,a,b,n,old_int)
%   
%   function new_int=update_trap(f,a,n,old_int)
%    Update function for the trapezoid rule spacing h
%    to spacing h/2 
%
%   Input parameters
%    f --function handle
%     a -- left integration limit
%     h -- previous mesh spacing 
%     n-- number of points minus one
%     oldint -- trapezoid integral for spacing h
%
    h=(b-a)/n;
    midpoints=a+h/2:h:b-h/2;
    new_int=0.5*(old_int+ h*sum(feval(f,midpoints)));
    