% Definir tamanho das matrizes J e K
m = 6;  % n�mero de linhas de J e A
n1 = 4; % n�mero de colunas de J
n2 = 7; % n�mero de colunas de K

% Gerar matriz J com valores inteiros aleat�rios
J = randi([-10, 10], m, n1);

% Gerar matriz K com valores inteiros aleat�rios
K = randi([-10, 10], n1, n2);

% Calcular a matriz A como o produto de J por K
A = J * K;

% Verificar o rank da matriz A
rank_A = rank(A);

% Exibir a matriz A e seu rank
A
rank_A