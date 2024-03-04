clc;
clear;
string=input('','s');   %输入函数名

if strcmp(string,'answer_me')   %如果是answer_me函数
    datain=input('','s'); %输入问题
end
    
if strcmp(string,'fibonacci')    %如果是fibonacci函数
    datain=input(''); %输入待输出斐波那契数的序号    
end

function_test(string,datain);   %调用函数测试函数