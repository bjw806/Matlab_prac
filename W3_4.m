clear
clc

A = [3 4 3;1 5 -1;6 3 7];
b = [10;7;15];

X = A\b

[L,U,P] = lu(A)
