warning('off','all');
pkg load symbolic
syms a b c d

%%%%%%%%% Begin %%%%%%%%%

x=a.^2+b.^2+c.^2+d.^2;
m=a.^3-2*b.^4+c.^2-d.^2;
y=x.*m;
yfactor=factor(y);
yexpand=expand(y);
ysimplify=simplify(y);



%%%%%%%%% End %%%%%%%%%

run ./task4/test24.m