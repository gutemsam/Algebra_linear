c = 2;  % Coeficiente para o n�mero de vezes que o plano A � repetido
d = 3;  % Coeficiente para o n�mero de vezes que o plano B � repetido
e = 4;  % Coeficiente para o n�mero de vezes que o plano C � repetido

apartamentos_3quartos = [3, 4, 5];
apartamentos_2quartos = [7, 4, 3];
apartamentos_1quarto = [8, 8, 9];

comb_linear = c * apartamentos_3quartos + d * apartamentos_2quartos + e * apartamentos_1quarto;
disp(comb_linear);