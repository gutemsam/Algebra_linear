clc
clear

% Coeficientes da curva cúbica de mínimos quadrados
B0 = -25.028;
B1 = 79.792;
B2 = -48.523;
B3 = 6.096;

% Tempo para estimar a velocidade
t = 4.5;

% Cálculo da velocidade estimada
velocidade = B1 + 2 * B2 * t + 3 * B3 * t^2;

disp(['Velocidade estimada em t = 4.5 segundos: ', num2str(velocidade)]);

% Plot do ponto estimado da velocidade
plot(t, velocidade, 'ro', 'MarkerSize', 8, 'LineWidth', 2);

xlabel('Tempo (segundos)');
ylabel('Velocidade (unidades)');
title('Velocidade estimada em t = 4.5 segundos');
grid on;

