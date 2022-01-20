function A = Gauss_Jardon_Elimination(A,b)

AA = [A b];
n = size(AA,1);
for i=1:n
    A(i,:)=A(i,:)./A(i,i);
    for j=1:n
        if j~=i
            k=A(j,i)./A(i,i);
            A(j,:)=A(j,:)-k.*A(i,:);
        end
    end
end

x = A(:,end)