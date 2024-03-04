%%%%%%%%%%%%%%%
%%请不要改动
warning('off','all');
graphics_toolkit('gnuplot')
pkg load image
%%%%%%%%%%%%%%%%%%
figure(1)
%%%%%%%%% Begin %%%%%%%%%
I=imread('img/moon_bw.tif');
N=ndims(I);
if N>2 
  I=rgb2gray(I);
end;
I=im2double(I);
h1=[-1 0;0 1];
h2=[0 -1;1 0];
I1=imfilter(I,h1);
I2=imfilter(I,h2);
If=abs(I1)+abs(I2);
G=I+If;
figure(1)
subplot(1,3,1);
imshow(I);
subplot(1,3,2);
imshow(If);
subplot(1,3,3);
imshow(G);


%%%%%%%%% End %%%%%%%%%
sa=pwd;
print(1,'-djpeg','./pictures/step3/picture1.jpg');
run('./task3/test1.m');
system('python3  ./task3/test1py.py');