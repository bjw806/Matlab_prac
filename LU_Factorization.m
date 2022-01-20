clear
clc

A = [3 4 3;1 5 -1;6 3 7];
n = 3;
M = A;

for k = 1:n-1
     if A(k,k) == 0 
         break;
     end
     for i = k+1;n;
         M(i,k) = A(i,k) / A(k,k);
     end
     for j = k+1;n;
         for i = k+1;n;
             A(i,j) = A(i,j) - M(i,k)*A(k,j);
         end
     end
end

disp(A)
disp(M)