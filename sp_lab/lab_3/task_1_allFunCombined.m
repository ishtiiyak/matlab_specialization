clc; clear; close all;

% Define functions
function y = u(t)
    y = (t >= 0); 
end

function y = r(t)
    y = t .* (t > 0);
end


t = 0:0.01:10;

y = 0 * u(t) + (2 * (r(t-2) - r(t-4))) + 0*(u(t-6)) + -1*(u(t-6))  + 0* u(t-8) + -3*(u(t-8)) ;

plot(t, y, 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('y(t)');
axis([0 10 0 5])
