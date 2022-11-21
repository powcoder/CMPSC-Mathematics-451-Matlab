     function c=newton_interp(x,y)
%
%    function c=newton_interp(x,y)
%      Interpolation polynomial builder. 
%      Given x=[x_1; ...;x_n], y=[y_1; y_2 ; ....; y_n]
%      yields polynomial in Newton form such that
%        p(x_i)=y_i
%
%      Can be evaluated with newton_eval.
     n=length(y);
     for k=2:n
       y(k:n)=(y(k:n)-y(k-1))./(x(k:n)-x(k-1));
     end;
     c=y;
