
velocities = [0, 2, 4, 6, 8, 10];
forces = [0, 2.9, 14.8, 39.6, 74.3, 119];

# Função para construir a matriz de Vandermonde
function V = vandermonde(x, degree)
  n = length(x);
  V = ones(n, degree + 1);
  for i = 1:n
    for j = 2:(degree + 1)
      V(i, j) = x(i)^(j-1);
    end
  end
end

# Construção da matriz de Vandermonde de grau 5
V = vandermonde(velocities, 5);

# Construção da matriz ampliada e resolução do sistema linear
Amp = [V forces'];
r = rref(Amp);
coefficients = r(:, end);

# Função do polinômio interpolador
function y = interpolating_poly(x, coefficients)
  y = 0;
  degree = length(coefficients) - 1;
  for i = 1:(degree + 1)
    y = y + coefficients(i) * x^(i-1);
  end
end

# Plot dos pontos e do polinômio interpolador
t = linspace(0, 10, 100);
p = zeros(size(t));
for i = 1:length(t)
  p(i) = interpolating_poly(t(i), coefficients);
end

plot(velocities, forces, 'o', t, p);
legend('Dados', 'Polinômio Interpolador');
xlabel('Velocity (100 ft/sec)');
ylabel('Force (100 lb)');

# Estimativa da força para a velocidade de 750 ft/sec
v = 7.5;
force_estimated = interpolating_poly(v, coefficients);
disp(['Estimativa da força para a velocidade de 750 ft/sec: ', num2str(force_estimated), ' lb']);

# Tentativa de usar um polinômio de grau menor
V_cubic = vandermonde(velocities, 3);
Amp_cubic = [V_cubic forces'];
r_cubic = rref(Amp_cubic);
coefficients_cubic = r_cubic(:, end);
p_cubic = zeros(size(t));
for i = 1:length(t)
  p_cubic(i) = interpolating_poly(t(i), coefficients_cubic);
end

figure;
plot(velocities, forces, 'o', t, p_cubic);
legend('Dados', 'Polinômio de grau 3');
xlabel('Velocity (100 ft/sec)');
ylabel('Force (100 lb)');
