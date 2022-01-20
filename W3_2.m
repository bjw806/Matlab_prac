clear all
clc

A = [1 1;3 3];
B = [1 2;3 6];
C = [1 2;3 6.01];
D = [1 2;3 3];

disp(cond(A,2))
disp(cond(B,2))
disp(cond(C,2))
disp(cond(D,2))
