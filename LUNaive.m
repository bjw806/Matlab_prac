A = [3 4 3;1 5 -1;6 3 7];

[m,n] = size(A); %정사각 행렬이여야 한다.
L = eye(n);
U = A;
% forward elimination
for k = 1:n-1
     for i = k+1:n
        L(i,k) = U(i,k)/U(k,k);
        U(i,k) = 0;
        U(i,k+1:n) = U(i,k+1:n)-L(i,k)*U(k,k+1:n);
     end
end

disp(L)
disp(U)

