function y = u(t)
    y = (t >= 0); 
end

function y = r(t)
    y = t .* (t > 0);
end

t = -10:0.01:20;

% Create the figure
figure;

% Plot u(t+5)
subplot(3, 2, 1);
plot(t, u(t+5), '-');
axis([-15 25 -1 2]);
xlabel('t');
ylabel('u(t+5)');
title('Unit Step u(t+5)');

% Plot r(t+5)
subplot(3, 2, 2);
plot(t, r(t+5), '--');
axis([-15 25 -5 30]);
xlabel('t');
ylabel('r(t+5)');
title('Ramp r(t+5)');

% Define the inline function for g(t)
g = @(t) exp(-t) .* cos(2 * pi * t) .* u(t);

t = -2:0.01:2;

% Plot g(t)
subplot(3, 2, 3);
plot(t, g(t), 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('g(t)');
title('g(t) = e^{-t} cos(2\pi t) u(t)');

% Plot g(-t)
subplot(3, 2, 4);
plot(t, g(-t), 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('g(-t)');
title('g(-t)');

% Plot g(-2t)
subplot(3, 2, 5);
plot(t, g(-2 * t), 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('g(-2t)');
title('g(-2t)');

% Plot g(t/2)
subplot(3, 2, 6);
plot(t, g(t / 2), 'LineWidth', 2);
grid on;
xlabel('t');
ylabel('g(t/2)');
title('g(t/2)');
