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
h=fspecial('laplacian',0);
G=imfilter(F,h);
G1=F-G;
figure(1)
subplot(1,3,1);
imshow(F,[]);
subplot(1,3,2);
imshow(G,[]);
subplot(1,3,3);
imshow(G1,[]);


%%%%%%%%% End %%%%%%%%%
sa=pwd;
print(1,'-djpeg','./pictures/step4/picture1.jpg');
run('./task4/test1.m');
system('python3  ./task4/test1py.py');