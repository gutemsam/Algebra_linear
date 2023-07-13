clc;
clear;

for i=3:5
  J=randi(10,5,i);
  K=randi(10,i,7);
  A=J*K
  esc=rref(A)
  C=[A(:, 1:i)]
  R=[esc(1:i, :)]
  C*R
endfor