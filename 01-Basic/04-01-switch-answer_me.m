%%%%%	answer_me.m   %%%%%
clc;
clear;

question=input('','s'); %输入问题
answer='';

%%%%%%%%%% begin %%%%%%%%%
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

%%%%%%%%% end %%%%%%%%%%%%

