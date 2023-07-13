clc
clear

t = [10, 20, 30, 40, 50]';
N = [15000, 215000, 335000, 480000, 770000]';

% Constru��o da matriz A
A = [t, ones(size(t))];

% C�lculo dos coeficientes usando m�nimos quadrados
coefficients = inv(A' * A) * A' * log(N);

% Extra��o dos coeficientes
N0 = exp(coefficients(2));
lambda = coefficients(1);

% Fun��o para o c�lculo do modelo exponencial
N_calc = @(t) N0 * exp(lambda * t);

% Valores para plotagem
t_plot = linspace(min(t), max(t), 100);
N_plot = N_calc(t_plot);

% Plotagem dos pontos de dados e da curva ajustada
plot(t, N, 'ro', 'MarkerSize', 8, 'LineWidth', 1.5);
hold on;
plot(t_plot, N_plot, 'b-', 'LineWidth', 1.5);
xlabel('Tempo (minutos)');
ylabel('N�mero de Bact�rias');
title('Crescimento de Bact�rias');
legend('Pontos de Dados', 'Curva Ajustada');
grid on;
hold off;

% Previs�o do n�mero de bact�rias em t = 60 minutos
N_pred = N_calc(60);
fprintf('Previs�o do n�mero de bact�rias em t = 60 minutos: %.2f\n', N_pred);

