clc;
clear;

% Dados coletados após 4 horas
t = [0, 1, 2, 3, 4];
P = [1.0, 1.8, 3.3, 6.0, 11.0];

% Ajuste da curva quadrática de mínimos quadrados
A = [ones(size(t))' t' t'.^2];
B = log(P)';
X = A \ B;
a = exp(X(1));
beta = X(2);

% Estimativa da população após 5 horas
t_estimado = 5;
P_estimado = a * t_estimado + beta * t_estimado^2;

% Plot dos dados e da curva ajustada
t_plot = 0:0.1:5;
P_plot = a * t_plot + beta * t_plot.^2;

plot(t, P, 'o', 'MarkerSize', 8, 'LineWidth', 1.5);
hold on;
plot(t_plot, P_plot, 'r-', 'LineWidth', 2);
plot(t_estimado, P_estimado, 'bo', 'MarkerSize', 8, 'LineWidth', 1.5);

% Legendas e rótulos dos eixos
legend('Dados', 'Curva ajustada', 'Estimativa (5 horas)', 'Location', 'northeast');
xlabel('Tempo (horas)');
ylabel('População de bactérias');

% Exibição do resultado estimado
fprintf('A população estimada de bactérias após 5 horas é de aproximadamente: %.3f\n', P_estimado);

