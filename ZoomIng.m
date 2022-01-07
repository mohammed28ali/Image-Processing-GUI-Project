function ZoomIng(ImgIn)
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
k=1;
l=1;
for i = 1:2:2*size(img,1)-2
for j = 1:2:2*size(img,2)-2
if (rgb==1)
zoomed1(i:i+1,j:j+1)=img1(k,l);
zoomed2(i:i+1,j:j+1)=img2(k,l);
zoomed3(i:i+1,j:j+1)=img3(k,l);
l=l+1; % Column Counter for original image
else
zoomed1(i:i+1,j:j+1)=img1(k,l);
l=l+1; % Column Counter for original image
end
end
k=k+1;
l=1; %3lshan yebda2 y3d el columns mn (1) marra tanya
end
if(rgb==1)
ZoomedImage=cat(3,zoomed1,zoomed2,zoomed3);
else
ZoomedImage=zoomed1;
end
imshow(img);
figure,imshow(ZoomedImage);
impixelregion;
end