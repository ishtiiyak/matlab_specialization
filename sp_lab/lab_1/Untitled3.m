x=linspace(0,2*pi,90);
y=(sin(x).^2).*cos(x);

subplot(2,1,1);
stairs(x,y,'-');
grid on
title('Stairs Graph')
xlabel('x');
ylabel('Sin(2X)cos(x)')

subplot(2,1,2);
stem(x,y,'--');
grid on
title('Stens Graph')
xlabel('x');
ylabel('Sin(2X)cos(x)')