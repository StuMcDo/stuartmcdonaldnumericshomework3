f = @(x)  x.^2.*exp(-x)
R = [0.5*(-0.7745966692+1) 0.5*(1) 0.5*(0.7745966692+1)]
s = (0.5555555556*f(R(1,1))+0.8888888889*f(R(1,2))+0.5555555556*f(R(1,3)))/2