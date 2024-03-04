%%%%%	goals.m   %%%%%

student_goals=[95,90,87;89,93,88;83,95,97]; %3名学生各自的三门成绩
course_credit=[2,4,5];  %三门课程各自的学分

%%%%%%%%%% begin %%%%%%%%%
%%%1. 按要求算出每一名同学的学分绩  %%%%
total_credit=sum(course_credit);    %总学分
student_average=student_goals*course_credit'/total_credit;  %学分绩,\'学分转置

%%%2.寻找学分绩最高的学生的编号及其学分绩
[score num]=max(student_average);   %寻找最大学分绩的学生编号及学分绩

%%%3. 用disp函数以字符串形式（num2str函数）分两行输出该编号及学分绩%%%
disp(num2str(num));
disp(num2str(score));



%%%%%%%%% end %%%%%%%%%%%%