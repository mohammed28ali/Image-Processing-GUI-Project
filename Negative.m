function Negative(ImgIn)
rgb=1;
img=imread(ImgIn);
img1=img(:,:,1);
try
img2=img(:,:,2);
img3=img(:,:,3);
catch
rgb=0;
disp('');
disp('Warning !!! Image is Grayscale not true Coloue . . . . . . . . . .')
disp('');
end
for i = 1:size(img,1)
for j = 1:size(img,2)
if(rgb==1)
img(i,j,1:3)= 255-img(i,j,1:3);
else
img(i,j)= 255-img(i,j);
end
end
end
imtool(img);
%imtool(imneg)
End