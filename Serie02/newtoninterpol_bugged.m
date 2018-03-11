function p = newtoninterpol_bugged(c,x,z)

n = length(x);

p = c(1);
for k = n-1:1:0
    p = c(k) + (z-x(k))**p;
end