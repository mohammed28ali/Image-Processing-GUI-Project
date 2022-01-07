function ConvAvgFilter(ImgIn)
rgb=1;
mask=[1 1 1;
1 1 1;
1 1 1];
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
for i = 1:size(img1,1)-3
for j = 1:size(img1,2)-3
if(rgb==1)
img1(i:i+2,j:j+2)=ConvImg(mask,img1(i:i+2,j:j+2)); %Applying Our Conv Function
img2(i:i+2,j:j+2)=ConvImg(mask,img2(i:i+2,j:j+2)); %Applying Our Conv Function
img3(i:i+2,j:j+2)=ConvImg(mask,img3(i:i+2,j:j+2)); %Applying Our Conv Function
else
img1(i:i+2,j:j+2)=ConvImg(mask,img1(i:i+2,j:j+2)); %Applying Our Conv Function
end
end
end
if(rgb==1)
ConvImage=cat(3,img1,img2,img3);% Cating Channels again
imshow(img);
impixelregion;
figure,imshow(ConvImage);
impixelregion;
imwrite(ConvImage,'SmoothedColorImg.bmp');
else
imshow(img);
impixelregion;
figure,imshow(img1);
impixelregion;
imwrite(img1,'SmoothedGrayImg.bmp');
end
end
%_______________________________________________________________________________________________________
%%Our Conv Function, input as 3 x 3 image block and 3 x 3 mask (Filter), output will be the block with a new center pixel
function img3X3=ConvImg(mask,img3X3)
%Equation
Total=((mask(1,1)*int16(img3X3(1,1)))+(mask(1,2)*int16(img3X3(1,2)))+(mask(1,3)*int16(img3X3(1,3)))+(mask(2,1)*int16(img3X3(2,1)))+(mask(2,2)*int16(img3X3(2,2)))+(mask(2,3)*int16(img3X3(2,3)))+(mask(3,1)*int16(img3X3(3,1)))+(mask(3,2)*int16(img3X3(3,2)))+(mask(3,3)*int16(img3X3(3,3))));
CenterPixel=Total/9;
img3X3(2,2)=CenterPixel;
end