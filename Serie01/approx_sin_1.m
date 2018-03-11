function p_1 = approx_sin_1(z)

x = [0, pi/2, pi, 3*pi/2, 2*pi];
y = [0, 1, 0, -1, 0];

p_1 = lagrangeinterpol(y, x, z);

end