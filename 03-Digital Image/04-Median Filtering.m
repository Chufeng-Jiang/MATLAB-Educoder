%%%%%%%%%%%%%%%
%%请不要改动
warning('off','all');
graphics_toolkit('gnuplot')
pkg load image
%%%%%%%%%%%%%%%%%%
figure(1)
%%%%%%%%% Begin %%%%%%%%%
I=imread('./img/pcbxray_gray.tif');
N=ndims(I);
if N>2
  I=rgb2gray(I);
end;
F=im2double(I);
Fn=imnoise(F,'salt & pepper',0.1);
figure(1)
subplot(1,2,1);
imshow(Fn);
subplot(1,2,2);
G=medfilt2(Fn,[3,3]);
imshow(G);

%%%%%%%%% End %%%%%%%%%
sa=pwd;
print(1,'-djpeg','./pictures/step2/picture1.jpg');
run('./task2/test1.m');
system('python3  ./task2/test1py.py');