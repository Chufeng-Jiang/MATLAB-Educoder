%%%%%%%%%%%%%%%%%%
%请不要修改
warning('off','all');
graphics_toolkit('gnuplot')

%%%%%%%%%%%%%%%%%%

figure (1)
subplot(1,2,1);

%%%%%%%%% Begin %%%%%%%%%
m1=-16:0.5:16;  % 在-16到16之间以0.5为步长创建一个向量m1
m2=-10:0.5:10;  % 在-10到10之间以0.5为步长创建一个向量m2
[x,y]=meshgrid(m1,m2); % 创建一个二维网格，其中x是m1的复制，y是m2的复制
z=sin(sqrt(x.^2+y.^2)); % 计算z的值，z是x和y的平方和的平方根的正弦值
mesh(x,y,z);    % 创建一个三维网格线图，其中x和y是网格的位置，z是网格的高度

%%%%%%%%% End %%%%%%%%%

subplot(1,2,2);

%%%%%%%%% Begin %%%%%%%%%

ezplot('x^3+y^3-4*x*y+1/6'); % 使用ezplot函数绘制函数'x^3+y^3-4*x*y+1/6'的图形

%%%%%%%%% End %%%%%%%%%
%画图显示部分，请不要修改
sa=pwd;
print(1,'-djpeg','./picture/step2/picture2.jpg');
run('./task2/test2.m');
system('python3  ./task2/test2py.py');