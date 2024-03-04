pkg load symbolic
a=sym([1,1]); %a(1)=a(2)=1
%Fibonacci的最高项a(120)
% ********** Begin ********** % 
n=120;
for i=3:n
    a(i)=a(i-1)+a(i-2);
end

% ********** End ********** %

disp(a(1:120))