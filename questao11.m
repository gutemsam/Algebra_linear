clc
clear

% Dados de entrada
theta = [0.88, 1.10, 1.42, 1.77, 2.14];
r = [3.00, 2.30, 1.65, 1.25, 1.01];

% Construção da matriz A
A = [ones(size(theta')), cos(theta')];

% Cálculo dos coeficientes da regressão linear
coeficientes = inv(A' * A) * A' * r';

% Extração dos coeficientes individuais
B = coeficientes(1);
e = coeficientes(2);

disp('Coeficientes da regressão linear:');
disp(['B = ', num2str(B)]);
disp(['e = ', num2str(e)]);

% Cálculo dos valores previstos de r
r_previsto = B + e * cos(theta');

% Plot dos dados e da regressão linear
plot(theta, r, 'o', 'MarkerSize', 8, 'LineWidth', 2);
hold on;

plot(theta, r_previsto, 'r', 'LineWidth', 2);

xlabel('Ângulo (?)');
ylabel('Posição (r)');
title('Regressão Linear para Órbita de um Cometa');
legend('Dados', 'Regressão Linear');
grid on;

