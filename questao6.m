clc
clear

t = [5, 10, 15, 20, 25, 30]';
d = [30, 83, 126, 157, 169, 190]';

A = [t, t.^2.*exp(-0.1*t)];

x = inv(A'*A)*A'*d;

a = x(1);
b = x(2);

plot(t, d, 'o');
hold on;

t_fit = linspace(0, 35, 100);
d_fit = a * t_fit + b * t_fit.^2 .* exp(-0.1 * t_fit);

plot(t_fit, d_fit, 'LineWidth', 1.5);
xlabel('Tempo (t)');
ylabel('Distância de Queda (d)');
title('Distância de Queda em Função do Tempo');
legend('Pontos de Dados', 'Curva Ajustada');
grid on;
hold off;

