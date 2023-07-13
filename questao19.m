clc
clear

t = [10, 20, 30, 40, 50]';
N = [15000, 215000, 335000, 480000, 770000]';

% Construção da matriz A
A = [t, ones(size(t))];

% Cálculo dos coeficientes usando mínimos quadrados
coefficients = inv(A' * A) * A' * log(N);

% Extração dos coeficientes
N0 = exp(coefficients(2));
lambda = coefficients(1);

% Função para o cálculo do modelo exponencial
N_calc = @(t) N0 * exp(lambda * t);

% Valores para plotagem
t_plot = linspace(min(t), max(t), 100);
N_plot = N_calc(t_plot);

% Plotagem dos pontos de dados e da curva ajustada
plot(t, N, 'ro', 'MarkerSize', 8, 'LineWidth', 1.5);
hold on;
plot(t_plot, N_plot, 'b-', 'LineWidth', 1.5);
xlabel('Tempo (minutos)');
ylabel('Número de Bactérias');
title('Crescimento de Bactérias');
legend('Pontos de Dados', 'Curva Ajustada');
grid on;
hold off;

% Previsão do número de bactérias em t = 60 minutos
N_pred = N_calc(60);
fprintf('Previsão do número de bactérias em t = 60 minutos: %.2f\n', N_pred);

