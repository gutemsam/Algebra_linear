clc
clear

t = [1960:10:2000]';
P = [12600 14000 16100 19100 23200]';

A = [t.^2, t, ones(size(t))];

x = inv(A'*A) * A' * P;

a = x(1);
b = x(2);
c = x(3);

t_plot = 1960:1:2010; % Intervalo de anos para o gráfico
P_plot = a*t_plot.^2 + b*t_plot + c; % População estimada para cada ano

fprintf('A população estimada para o ano de 2010 é de aproximadamente: %.0f\n', a*2010^2 + b*2010 + c);

plot(t, P, 'o', 'MarkerSize', 8, 'LineWidth', 1.5);
hold on;
plot(t_plot, P_plot, 'r-', 'LineWidth', 1.5);
xlabel('Ano');
ylabel('População');
title('População da Cidade ao Longo do Tempo');
legend('Dados', 'Curva Ajustada');
grid on;
hold off;

