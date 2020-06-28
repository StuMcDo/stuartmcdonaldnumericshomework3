X = linspace(0,2,9)
f = @(x) x.^2.*exp(-x.^2)
Y = f(X)
h = 0.25
t = @(f0,f1) h./2.*(f0+f1) 
[a,l] = size(X)
I = zeros(1,l-1)

for i = 1:l-1
    I(1,i) = t(Y(1,i),Y(i+1));
end


S = sum(I)