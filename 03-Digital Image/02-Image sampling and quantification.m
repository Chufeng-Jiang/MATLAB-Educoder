
figure(1);


Igra=imread('./img/rose_512.jpg'); % 读取图像文件'./img/rose_512.jpg'，并将其存储在变量Igra中
I1=imresize(Igra,[256,256],'bicubic'); % 使用双三次插值法将图像Igra调整为256x256大小，结果存储在I1中
I2=imresize(Igra,[64,64],'bicubic'); % 使用双三次插值法将图像Igra调整为64x64大小，结果存储在I2中
I3=imresize(Igra,[32,32],'bicubic'); % 使用双三次插值法将图像Igra调整为32x32大小，结果存储在I3中
I4=imresize(Igra,[4,4],'bicubic'); % 使用双三次插值法将图像Igra调整为4x4大小，结果存储在I4中
subplot(2,5,1);imshow(Igra); % 在2行5列的子图的第1个位置显示图像Igra
subplot(2,5,2);imshow(I1,[]); % 在2行5列的子图的第2个位置显示图像I1
subplot(2,5,3);imshow(I2,[]); % 在2行5列的子图的第3个位置显示图像I2
subplot(2,5,4);imshow(I3,[]); % 在2行5列的子图的第4个位置显示图像I3
subplot(2,5,5);imshow(I4,[]); % 在2行5列的子图的第5个位置显示图像I4
L1=grayslice(Igra,64); % 将图像Igra划分为64个灰度级别，结果存储在L1中
L2=grayslice(Igra,16); % 将图像Igra划分为16个灰度级别，结果存储在L2中
L3=grayslice(Igra,4); % 将图像Igra划分为4个灰度级别，结果存储在L3中
L4=grayslice(Igra,2); % 将图像Igra划分为2个灰度级别，结果存储在L4中
subplot(2,5,6);imshow(Igra); % 在2行5列的子图的第6个位置显示图像Igra
subplot(2,5,7);imshow(L1,[]); % 在2行5列的子图的第7个位置显示图像L1
subplot(2,5,8);imshow(L2,[]); % 在2行5列的子图的第8个位置显示图像L2
subplot(2,5,9);imshow(L3,[]); % 在2行5列的子图的第9个位置显示图像L3
subplot(2,5,10);imshow(L4,[]); % 在2行5列的子图的第10个位置显示图像L4

