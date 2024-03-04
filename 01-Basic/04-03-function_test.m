%%%%%	function_test.m   %%%%%

%%%%%构造主函数function_test
function function_test(string,datain)   %string是待执行函数名，datain是函数的输入参数
    
    if strcmp(string,'answer_me')   %如果是answer_me函数
        answer_me(datain);    %执行函数，在函数内输出回答
    end
    
    if strcmp(string,'fibonacci')   %如果是fibonacci函数
        fab=fibonacci(datain); %执行函数，返回对应于序号num的斐波那契数
        disp(num2str(fab)); %输出对应于序号num的斐波那契数
    end
    
end

%%%%%%%%%% begin %%%%%%%%%
%%%%% 1. 构造函数answer_me(question)
function answer_me(question)

%%%1. 根据不同问题进行对应回答，请参照‘编程要求’中的4句问答  %%%%
switch question     %分类讨论
    case '田鸡炖土鸡'
        answer='附近有妖气';
    case '熟读唐诗三百首'
        answer='不会吟诗我不走';
    case '天空飘来5个字'
        answer='关我什么事';
    case 'Who are you'
        answer='社会主义接班人';
    otherwise
        answer='我不认识你';
end

%%%2. 输出回答  %%%%
disp(answer);
end


%%%%% 2. 构造函数fab=fibonacci(num)
function fab=fibonacci(num)
f=zeros(1,100);
%%%1. 构造长度为100的斐波那契数列  %%%%
f(1)=1;
f(2)=1;
for i=3:100
    f(i)=f(i-1)+f(i-2);
end
fab=f(num); %返回对应于序号num的斐波那契数
end

%%%%%%%%% end %%%%%%%%%%%%