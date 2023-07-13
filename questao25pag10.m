clc;
clear;

v_kmh = [20, 40, 60, 80, 100, 120, 140, 160];
F_D = [10, 50, 109, 180, 300, 420, 565, 771];

% Conversão de km/h para m/s
v_ms = v_kmh * (1000/3600);

% Ajuste de curva
p = polyfit(v_ms, F_D, 3); % Grau 3 para ajuste cúbico
v_fit = linspace(0, max(v_ms), 100); % Faixa de velocidade para plotagem
F_D_fit = polyval(p, v_fit); % Valores ajustados

% Plot dos dados e da curva ajustada
plot(v_ms, F_D, 'o', 'MarkerSize', 8, 'LineWidth', 1.5);
hold on;
plot(v_fit, F_D_fit, 'r-', 'LineWidth', 2);

% Legendas e rótulos dos eixos
xlabel('Velocidade (m/s)');
ylabel('Força de Arrasto (N)');
title('Relação entre Velocidade e Força de Arrasto');
legend('Dados', 'Curva Ajustada');
grid on;

