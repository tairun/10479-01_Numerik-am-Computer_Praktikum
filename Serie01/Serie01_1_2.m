clear;
clc;

sin1 = approx_sin_1(1.5);
sin2 = approx_sin_2(1.5);
sin3 = approx_sin_3(1.5);

z = 0:pi/100:2*pi;

figure(1);
hold on
title('Aufg 2 1.fig')
plot(z, approx_sin_1(z))
plot(z, approx_sin_2(z))
plot(z, approx_sin_3(z))
plot(z, sin(z))
legend('Approx 1', 'Approx 2', 'Approx 3','True Sin')
hold off


z = -pi:pi/100:3*pi;

figure(2);
hold on
title('Aufg 2 2.fig')
plot(z, approx_sin_1(z))
plot(z, approx_sin_2(z))
plot(z, approx_sin_3(z))
plot(z, sin(z))
legend('Approx 1', 'Approx 2', 'Approx 3', 'True Sin')
hold off

figure(3);
hold on
title('Aufg 2 3.fig')
plot(z, approx_sin_1(mod(z, 2*pi)))
plot(z, approx_sin_2(mod(z, 2*pi)))
plot(z, approx_sin_3(mod(z, 2*pi)))
plot(z, sin(z))
legend('Approx 1', 'Approx 2', 'Approx 3', 'True Sin')
hold off


z = -2*pi:pi/100:4*pi;

figure(4);
hold on;
title('Aufg 2 4.fig');
plot(z, approx_sin_1(mod(z, 2*pi)));
plot(z, approx_sin_2(mod(z, 2*pi)));
plot(z, approx_sin_3(mod(z, 2*pi)));
plot(z, sin(z));
legend('Approx 1', 'Approx 2', 'Approx 3', 'True Sin');
hold off;

figure(5);
title('Aufg 2 4.fig');
semilogy(z, abs(approx_sin_1(mod(z, 2*pi))-sin(z)));
hold on;
semilogy(z, abs(approx_sin_2(mod(z, 2*pi))-sin(z)));
semilogy(z, abs(approx_sin_3(mod(z, 2*pi))-sin(z)));
legend('Approx 1 Error', 'Approx 2 Error', 'Approx 3 Error');
hold off;



