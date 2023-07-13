clc
clear

a_values = [32, 31.9, 31.8, 32.1, 32.2];

for i = 1:length(a_values)
    a = a_values(i);

    A = [-6, 28, 21; 4, -15, -12; -8, a, 25];

    % Cálculo do polinômio característico
    p = poly(A);

    % Cálculo dos autovalores
    eigenvalues = eig(A);

    % Plotagem do gráfico do polinômio característico
    r = linspace(0, 4, 100);
    p_r = polyval(p, r);

    plot(r, p_r, 'LineWidth', 1.5);
    hold on;
end

xlabel('r');
ylabel('p(r)');
title('Gráfico do Polinômio Característico');
legend('a = 32', 'a = 31.9', 'a = 31.8', 'a = 32.1', 'a = 32.2');
grid on;
hold off;

