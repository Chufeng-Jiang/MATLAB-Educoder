D=str2num(input('','s'));
h=str2num(input('','s'));
x=str2num(input('','s'));
% ********** Begin ********** % 

y=h.*(x>D) +h./(D.*x).*((x<=D) & (x>=-D))-h.*(x<-D);

% ********** End ********** % 
disp(num2str(y))

