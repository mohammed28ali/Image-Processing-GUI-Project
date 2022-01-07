function Cropping(ImgIn)
rgb=1;
img=imread(ImgIn);
imtool(img);
xStart=input('X Start Position = ? ');
yStart=input('Y Start Position = ? ');
xEnd=input('X End Position = ? ');
yEnd=input('Y End Position = ? ');
img1=img(:,:,1);
try
img2=img(:,:,2);
img3=img(:,:,3);
catch
rgb=0;
disp('');
disp('Warning !!! Image is Grayscale not true Coloue . . . . . . . . ..')
disp('');
end
if(rgb==0)
newI=img(xStart:xEnd,yStart:yEnd);
figure,imshow(newI);
else
newI=img(xStart:xEnd,yStart:yEnd,1:3);
figure,imshow(newI);
end
end