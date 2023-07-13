clc
clear

% Dados de entrada
theta = [0.88, 1.10, 1.42, 1.77, 2.14];
r = [3.00, 2.30, 1.65, 1.25, 1.01];

% Constru��o da matriz A
A = [ones(size(theta')), cos(theta')];

% C�lculo dos coeficientes da regress�o linear
coeficientes = inv(A' * A) * A' * r';

% Extra��o dos coeficientes individuais
B = coeficientes(1);
e = coeficientes(2);

disp('Coeficientes da regress�o linear:');
disp(['B = ', num2str(B)]);
disp(['e = ', num2str(e)]);

% C�lculo dos valores previstos de r
r_previsto = B + e * cos(theta');

% Plot dos dados e da regress�o linear
plot(theta, r, 'o', 'MarkerSize', 8, 'LineWidth', 2);
hold on;

plot(theta, r_previsto, 'r', 'LineWidth', 2);

xlabel('�ngulo (?)');
ylabel('Posi��o (r)');
title('Regress�o Linear para �rbita de um Cometa');
legend('Dados', 'Regress�o Linear');
grid on;

