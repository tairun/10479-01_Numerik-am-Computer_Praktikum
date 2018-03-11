clear;
clc;

x = [-2, -1, 1, 2];
y = [-14, 12, 4, 6];

z1 = 3;
z2 = -3;

koeff1 = lagrangekoeff(y)
p1 = lagrangeinterpol(y, x, z1)
p2 = lagrangeinterpol(y, x, z2)