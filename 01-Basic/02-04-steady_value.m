pkg load symbolic

x1=sym(1);
x2=x1/2+3/(2*x1);

e=10^(-14);

%求取达到e精度的稳态值steady_value和n
% ********** Begin ********** %
n=2;
while double(abs(x2-x1))>e   %符号数转数值
    n=n+1;
    x1=x2;    
    x2=x1/2+3/(2*x1);
end
steady_value=x2;

% ********** End ********** %
disp(num2str(n))
disp(steady_value)