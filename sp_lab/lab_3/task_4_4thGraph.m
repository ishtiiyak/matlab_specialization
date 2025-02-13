clc; clear; close all;
t = 0:0.01:8;
function y = x(t)
   
    y = cos(pi/8*t); 
end
function y = y(t)
   
    y = cos(15*pi/8*t); 
end


plot(t, x(t),'LineWidth', 1)
grid on;
xlabel('Time (t)');
ylabel('x(t)');
title('Sinusoidal Signal');




hold on;
plot(t, y(t),'LineWidth', 1)
grid on;

