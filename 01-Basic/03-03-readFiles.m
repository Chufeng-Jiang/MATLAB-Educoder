%%%%%	goals_least.m   %%%%%
clc;
clear;

student_goals=load('src/lesson3/student.mat','-ascii'); %导入所有学生的各门成绩,注意这里是绝对路径引入

%%%%%%%%%% begin %%%%%%%%%
%%%1. 按要求导入所有课程的学分src/lesson3/course_credit.mat  %%%%
course_credit=load('src/lesson3/course_credit','-ascii'); %每门课程的学分

%%%2. 按要求算出每一名同学的学分绩  %%%%
total_credit=sum(course_credit);    %总学分
student_average=student_goals*course_credit'/total_credit;  %学分绩

%%%3.寻找学分绩最低的学生的编号及其学分绩
[score num]=min(student_average);   %寻找最小学分绩的学生编号及学分绩


%%%4. 用disp函数以字符串形式（num2str函数）分两行输出该编号及学分绩%%%
disp(num2str(num));
disp(num2str(score));



%%%%%%%%% end %%%%%%%%%%%%

