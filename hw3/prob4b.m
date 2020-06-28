X = linspace(0,2,9)
f = @(x) x.^2.*exp(-x.^2)
Y = f(X)
h = 0.25
t = @(f0,f1,f2) h./3.*(f0+4.*f1+f2) 
[a,l] = size(X)
I = zeros(1,4)
n = 1
for i = 1:4
    I(1,n) = t(Y(1,n),Y(n+1),Y(1,n+2));
    n = n+2
end


S = sum(I)