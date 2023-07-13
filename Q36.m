% Definir tamanho das matrizes J e K
m = 6;  % número de linhas de J e A
n1 = 4; % número de colunas de J
n2 = 7; % número de colunas de K

% Gerar matriz J com valores inteiros aleatórios
J = randi([-10, 10], m, n1);

% Gerar matriz K com valores inteiros aleatórios
K = randi([-10, 10], n1, n2);

% Calcular a matriz A como o produto de J por K
A = J * K;

% Verificar o rank da matriz A
rank_A = rank(A);

% Exibir a matriz A e seu rank
A
rank_A