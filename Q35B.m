# Definir a matriz A
A = [7 -9 -4 5 3 -3 -7; -4 6 7 -2 -6 -5 5; 5 -7 -6 5 -6 2 8; -3 5 8 -1 -7 -4 8; 6 -8 -5 4 4 9 3]

# Encontrar uma base para o núcleo de A^t
null_space = null(A')

# Definir a matriz M com as colunas do null Space de A^t
M = null_space'

# Construir as matrizes S e T
R = A'
S = [R null_space]
C = A
T = [C M]

# Verificar se as matrizes S e T são quadradas
disp(size(S))
disp(size(T))

# Verificar se as matrizes S e T são invertíveis
disp(det(S))
disp(det(T))

# Ambas as matrizes S e T são quadradas e invertíveis
