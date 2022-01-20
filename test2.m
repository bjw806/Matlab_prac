clearvas
close all
clc

x = 0
for n=1:12
    x = x + 1.5^n
end
x = sum(1.5.^n);

disp(x)