%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plot_energy_power
%              x(t) = (4*exp(-3t) - 3*exp(-4t)) * u(t).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; clc; close all;

u = @(t) (t >= 0);


x = @(t) (4*exp(-3*t) - 3*exp(-4*t)) .* u(t);


x_sq = @(t) (x(t)).^2;


maxT = 10;                 
NT   = 100;
Tvals = linspace(0.1, maxT, NT);   

Evals = zeros(size(Tvals)); 
Pvals = zeros(size(Tvals));  

for i = 1:length(Tvals)
    T_i = Tvals(i);
 
    Evals(i) = integral(x_sq, 0, T_i);
    

    Pvals(i) = Evals(i) / (2 * T_i);
end


figure('Name','Energy and Power for x(t) = (4e^{-3t}-3e^{-4t})u(t)');
subplot(2,1,1);
plot(Tvals, Evals, 'b-o','LineWidth',1.5);
xlabel('T'); ylabel('E(T)');
title('Running Energy E(T)');
grid on;

subplot(2,1,2);
plot(Tvals, Pvals, 'r-o','LineWidth',1.5);
xlabel('T'); ylabel('P(T)');
title('Running Average Power P(T) = E(T)/(2T)');
grid on;
