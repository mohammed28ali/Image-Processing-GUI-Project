function UsingImHist(ImgIn)
rgb=1;
img=imread(ImgIn);
R=img(:,:,1);
try
G=img(:,:,2);
B=img(:,:,3);
catch
rgb=0;
disp('');
disp('Warning !!! Image is Grayscale not true Coloue . . . . . . . . . .')
disp('');
end
if(rgb==1)
figure, imhist(R);
figure, imhist(G);
figure, imhist(B);
else
figure, imhist(R);
end
end