
x = linspace(0, 2*pi, 50);
y = (sin(x).^2) .* cos(x);

subplot(2,1,1);
stairs(x, y, '-');
grid on;
title('Stairs Plot ');
xlabel('x');
ylabel('sin^2(x)cos(x)');



subplot(2,1,2);
stem(x, y, '*');
grid on;
xlabel('x')
ylabel ('sin^2(x)')
title('plot')