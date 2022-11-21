diary
disp('Results for pi function')
[int1,err1,ier1]=romberg(@pifunc,0,1,1e-14)
disp(' ')
disp('Deviation from MATLAB value for pi')
actual_err1= int1-pi
disp(' ')
disp('Results for logarithm function')
[int2,err2,ier2]=romberg(@logderiv,1,exp(1),1e-14)
disp(' ')
disp('Difference from one' )
actual_err2=1-int2
disp(' ')
disp('Results for erf(1)')
[int3,err3,ier3]=romberg(@erfderiv,0,1,1e-14)
disp(' ')
disp('Difference from MATLAB value for erf(1)')
actual_err3=erf(1)-int3
disp(' ')
disp('Results for erf(3)')
[int4,err4,ier4]=romberg(@erfderiv,0,3,1e-14)
disp(' ')
disp('Difference from MATLAB value for erf(3)')
actual_err4=erf(3)-int4
diary off