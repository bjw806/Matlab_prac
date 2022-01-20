function A = Cholesky_Factorization(A)

n = size(A);
for k=1:n
    A(k,k)=sqrt(A(k,k));
    for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
    end
    for j=k+1:n
        for i=j:n
            A(i,j)=A(i,j)-A(i,k)*A(j,k);
        end
    end
end

A = tril(A);