function p_3 = approx_sin_3(z)

x = [pi/6, pi/3, 2*pi/3, 5*pi/6, 7*pi/6, 4*pi/3, 5*pi/3, 11*pi/6];
y = [1/2, sqrt(3)/2, sqrt(3)/2,  1/2, -1/2, -sqrt(3)/2, -sqrt(3)/2, -1/2];

p_3 = lagrangeinterpol(y, x, z);

end