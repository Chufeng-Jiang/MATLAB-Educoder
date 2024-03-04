%已知变量x和数学函数f,g，用fg和gf分别表示f(f(x))和g(f(x))
pkg load symbolic
% ********** Begin ********** % 
syms x;
f=x*sin(x)/(sqrt(x^2-2)*(x+5));
g=tan(x);
fg=subs(f,x,g);
gf=subs(g,x,f);

% ********** End ********** % 

disp(fg)
disp(gf)