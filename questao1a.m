clc
clear

a=1;
b=5;
n=150000;

f = @(x) x^5
ir = intRetangular(n,a,b,f)
it = intTrapezio(n,a,b,f)

pkg load symbolic 
syms x
isimb=int(x^5,x,a,b)
 