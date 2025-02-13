clc; clear; close all;

t = 0:0.01:10;


function y = x(t)
   
    y = 2.5 * sin((2 * pi )/5 * t); 
end

plot(t, x(t));
grid on;
xlabel('Time (t)');
ylabel('x(t)');
title('Sinusoidal Signal');
