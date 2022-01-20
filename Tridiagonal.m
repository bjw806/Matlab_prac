function b = Tridiagonal(b)

matA=[
2 3 0 0;
4 5 6 0;
0 2 3 4;
0 0 4 5
];

[mm,nn]=size(matA);b=diag(matA);
a=[0; diag(matA,-1)];
c=diag(matA,+1);

nn = size(b);
d(1)=b(1);
for ii=2:nn
    m(ii)=a(ii)/d(ii-1);
    d(ii)=b(ii)-m(ii)*c(ii-1);
end

L=diag(ones(nn,1))+diag(m(2:nn),-1);
U=diag(d)+diag(c,+1);