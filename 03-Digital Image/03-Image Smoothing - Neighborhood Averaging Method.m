%%%%%%%%%%%%%%%
%%请不要改动
warning('off','all');
graphics_toolkit('gnuplot')
pkg load image
%%%%%%%%%%%%%%%%%%
figure(1)
%%%%%%%%% Begin %%%%%%%%%
F=imread('./img/moon_bw.tif');
N=ndims(F);
if N>2
  F=rgb2gray(F);
end;
F=im2double(F);
Fn=imnoise(F,'salt & pepper',0.02);
figure(1)
h=fspecial('average',3);
G=imfilter(Fn,h);
subplot(1,2,1);
imshow(Fn);
subplot(1,2,2);
imshow(G);


%%%%%%%%% End %%%%%%%%%
sa=pwd;
print(1,'-djpeg','./pictures/step1/picture1.jpg');
run('./task1/test1.m');
system('python3  ./task1/test1py.py');