%%%%%	fibonacci.m   %%%%%
clc;
clear;

num=input(''); %输入待输出斐波那契数的序号
f=zeros(1,100);

%%%%%%%%%% begin %%%%%%%%%
%%%1. 构造长度为100的斐波那契数列  %%%%
f(1)=1;
f(2)=1;
for i=3:100
    f(i)=f(i-1)+f(i-2);
end
%%%%%%%%% end %%%%%%%%%%%%

%%%  输出序号num对应的斐波那契数  %%%%
disp(num2str(f(num)));

