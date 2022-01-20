clear
clc

A = [3 4 3;1 5 -1;6 3 7];
b = [10;7;15];
n = max(size(A));
 for j=2:n
     for i=j:n
        m = A(i,j-1)/A(j-1,j-1);
        A(i,:) = A(i,:) - A(j-1,:)*m;
        b(i) = b(i) - m*b(j-1);
     end
 end
 x = zeros(n,1);
 x(n) = b(n)/A(n,n);
 
 for j=n-1:-1:1
   x(j) = (b(j)-A(j,j+1:n)*x(j+1:n))/A(j,j);
 end
 
 disp(x)