function p_2 = approx_sin_2(z)

x = [0, pi/4, pi/2, 3*pi/4, pi, 5*pi/4, 3*pi/2, 7*pi/4];
y = [0, sqrt(2)/2, 1, sqrt(2)/2, 0, -sqrt(2)/2, -1, -sqrt(2)/2];

p_2 = lagrangeinterpol(y, x, z);

end