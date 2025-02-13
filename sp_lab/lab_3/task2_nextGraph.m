
clc; clear; close all;


function y = u(t)
    y = (t >= 0); 
end

function y = r(t)
    y = t .* (t > 0);
end



t = 0:0.01:12;

y =  0*u(t)+(1 * (r(t) - r(t-4))) + -1 *((r(t-4) - r(t-8)) )  + 2*(r(t-8)-r(t-10))    ;




plot(t, y, 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('y(t)');
axis([0 12 0 5])
