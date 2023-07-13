x = [1, 2, 3];
y = [6, 15, 28];

coef = polyfit(x, y, 2);
a2 = coef(1);
a1 = coef(2);
a0 = coef(3);
p = @(t) a2*t^2 + a1*t + a0;
t = 2.5;
p_t = p(t);
% Plot dos pontos
plot(x, y, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
hold on; % Para manter o gr�fico atual e adicionar o polin�mio

% Plot do polin�mio interpolador
t = linspace(0.8, 3.2, 100); % Valores de t para plotar o polin�mio interpolador
plot(t, p(t), 'b-', 'LineWidth', 2);

% Configura��es adicionais do gr�fico
xlabel('t', 'FontSize', 12);
ylabel('p(t)', 'FontSize', 12);
title('Interpolating Polynomial', 'FontSize', 14);
legend('Data points', 'Polynomial Interpolator');
grid on;
