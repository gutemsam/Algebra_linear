clc
clear

% Dados de entrada
t = [0:12]';
y = [0, 8.8, 29.9, 62.0, 104.7, 159.1, 222.0, 294.5, 380.4, 471.1, 571.7, 686.8, 809.2]';

% Constru��o da matriz A
A = [ones(size(t)), t, t.^2, t.^3];

% C�lculo dos coeficientes da curva c�bica de m�nimos quadrados
coeficientes = inv(A' * A) * A' * y;

% Extra��o dos coeficientes individuais
B0 = coeficientes(1);
B1 = coeficientes(2);
B2 = coeficientes(3);
B3 = coeficientes(4);

disp('Coeficientes da curva c�bica de m�nimos quadrados:');
disp(['B0 = ', num2str(B0)]);
disp(['B1 = ', num2str(B1)]);
disp(['B2 = ', num2str(B2)]);
disp(['B3 = ', num2str(B3)]);

% Plot dos dados e da curva c�bica de m�nimos quadrados
plot(t, y, 'o', 'MarkerSize', 8, 'LineWidth', 2);
hold on;

curva = B0 + B1*t + B2*t.^2 + B3*t.^3;
plot(t, curva, 'r', 'LineWidth', 2);

xlabel('Tempo (segundos)');
ylabel('Posi��o (p�s)');
title('Ajuste de curva c�bica de m�nimos quadrados');
legend('Dados', 'Curva C�bica');
grid on;

