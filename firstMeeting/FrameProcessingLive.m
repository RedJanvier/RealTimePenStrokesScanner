
images{1}=imread('1.jpg');

cropFactor=0.95;%0.1
[outim images{1} row1 row2 col1 col2]=firstFrameFilter(images{1},cropFactor);

MyDelay=0.01;
pause(MyDelay)

ENHENCEMENTmultiplier=1.65;

for i=2:20
images{i}=imread(strcat(dec2base(i,2),'.jpg'));
images{i}=whitePaperProcessor(images{i-1},images{i}(row1:row2,col1:col2,:),ENHENCEMENTmultiplier);

imshow(images{i});

hold on
pause(MyDelay)
end