      function y=newton_eval(c,x,xval)
%
%     function y=newton_eval(c,x,xval)
%        Evaluates polynomial in the Newton form.
%         c- Newton coefficients from routine newton_interp
%         x- Interpolation points
%         xval - point or points at which polynomial is to be evaluated.
%
      n=length(x);
      y=(xval-x(n-1)).*c(n);
      for k=n-1:-1:2
	     y=(xval-x(k-1)).*(c(k)+y);
      end;
      y=c(1)+y;

