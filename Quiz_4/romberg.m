     function [int,err,ier]=romberg(f,a,b,eps1)
%
%  function [int,err,ier]= romberg(f,a,b,eps1)
%   Input variables
%      f- function handle--should point to function to be integrated
%      a,b --limits of integration
%      eps1 -- tolerance for termination
%
%  Output variables
%     int-- final integral by Romberg algorithm
%     err -- Error estimate--difference between last 
%        two Romberg approximations
%     ier --0 -- if integration converges in less than 10 levels
%       of extrapolation; 1-- if there is a failure to converge
%   
     intvec=zeros(11,1); coef=[4;zeros(9,1)]; 
%
%  Set up arrays for integrals and extrapolation coefficients
%  Note -- you could do this with a little more efficiency
%  by setting these coefficients within the while loop, but
%  that would not save you much
%
     for k = 2:10
         coef(k)=4*coef(k-1);
     end;
       
%
%  Set initial value for h and n
%  Call trapezoid routine to compute it
% 
     n=4; 
     intvec(1)=trap(f,a,b,n);
%
%   Set up extrapolation loop
% 
     k=1;  err=1; ier=0;
     while err > eps1 & k <= 10
       newval=update_trap(f,a,b,n,intvec(1));
%
%  Notice that I can do the extrapolations 
%  with just one vector and a temporary variable
%
       for i=1:k
	       temp=intvec(i);
	       intvec(i)=newval;
	       newval=(coef(i)*newval - temp)/(coef(i)-1);
       end;
       intvec(k+1)= newval;
       err=abs(temp-newval);
       k=k+1;  n=2*n;
     end;
     int=intvec(k);
     ier=err > eps1;
          