% Dados de entrada
X = [1^2; 2^2; 3^2; 4^2; 5^2];  % Valores de x^2
Y = [1.8; 2.7; 3.4; 3.8; 3.9];  % Valores de y

% a) Constru��o da matriz de projeto, vetor de observa��es e vetor de par�metros desconhecidos
A = [X ones(size(X))];
b = Y;

% b) C�lculo do vetor de par�metros desconhecidos usando m�nimos quadrados
B = inv(A' * A) * A' * b;

% Valores preditos pela curva de m�nimos quadrados
x_values = 1:0.1:25;
y_values = B(1) * x_values.^2 + B(2);

% Imprimir os resultados
disp("Par�metros B:");
disp(B);

% Plotar o gr�fico dos pontos de dados e da curva de m�nimos quadrados
scatter(X, Y, 'filled', 'MarkerFaceColor', 'b');
hold on;
plot(x_values, y_values, 'r', 'LineWidth', 2);
xlabel('x^2');
ylabel('y');
title('Curva de M�nimos Quadrados');
legend('Pontos de Dados', 'Curva de M�nimos Quadrados');
grid on;

