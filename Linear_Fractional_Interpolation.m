clc;
clearvars;
close all
%𝑓 𝑥 = 𝑥2 − 4 sin 𝑥 = 0
a=1;
b=2;
c=3;

fa=fnc_f(a);
fb=fnc_f(b);
fc=fnc_f(c);
disp(' x            f(x)            h');
disp('------------------------------------');
fprintf(' %1.6f   %1.6f \n',a,fa);
fprintf(' %1.6f   %1.6f \n',b,fb);
fprintf(' %1.6f   %1.6f \n',c,fc);
tol=1e-6;
ErrorValue=tol+1;

while ErrorValue > tol
    h=(a-c)*(b-c)*(fa-fb)*fc/( (a-c)*(fc-fb)*fa-(b-c)*(fc-fa)*fb );
    x=c+h; fx=fnc_f(x);
    ErrorValue=abs(x-c);
    a=b; fa=fb;
    b=c; fb=fc;
    c=x; fc=fx;
    fprintf(' %1.6f   %1.6f   %1.6f \n',c,fc,h);
end

function y=fnc_f(x)
    y=x^2-4*sin(x);
end
