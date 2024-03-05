a=[4 3 2 5 5];
b=[1 7 4 9 7];

%%%%%%%%% Begin %%%%%%%%%

sconv=conv(a,b);
[sdeconv,e]=deconv(a,b);
spolyder=polyder(a,b); %求导
sdiff=diff(a,2);


%%%%%%%%% End %%%%%%%%%

run './task2/test22.m'