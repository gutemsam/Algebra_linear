% Dados do problema
x = [1; 2; 3];
y = [6; 15; 28];

% Montagem do sistema linear
A = [ones(size(x)), x, x.^2];
B = y;

% Resolu��o do sistema pelo escalonamento
Ab = [A, B];
rrefAb = rref(Ab);
coef = rrefAb(:, end);

% Defini��o da fun��o polinomial
p = @(t) coef(1) + coef(2)*t + coef(3)*t.^2;

% Plot dos pontos dados e do polin�mio interpolador
plot(x, y, 'bo')
hold on
t = linspace(min(x), max(x), 100);
plot(t, p(t), 'r')
xlabel('x')
ylabel('y')
legend('Pontos dados', 'Polin�mio interpolador')
