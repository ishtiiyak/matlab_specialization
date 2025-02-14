y = @(t) (t >= 0).*(4*exp(-3*t) - 3*exp(-4*t));  

N = 0.1;
dt = 0.01;
P = zeros(1, 1000);
E = zeros(1, 1000);

for i = 1:1000
    t = 0:dt:N;
    signal_values = y(t);
    squared_magnitude = abs(signal_values).^2;
    P(i) = trapz(t, squared_magnitude)/N; 
    E(i) = trapz(t, squared_magnitude);    
    N = N + 0.1;  
end


mean_power = mean(P);
mean_energy = mean(E);

i = 1:1000;


figure;


subplot(2,1,1);
plot(i, P, 'r');
xlabel('N (Time Interval)');
ylabel('Power');
title('Signal Power vs Time Interval');
grid on;


subplot(2,1,2);
plot(i, E, 'go' );
xlabel('N (Time Interval)');
ylabel('Energy');
title('Signal Energy vs Time Interval');
grid on;


disp(['Mean Power: ', num2str(mean_power)]);
disp(['Mean Energy: ', num2str(mean_energy)]);
