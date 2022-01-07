function RemovingNoise(ImgIn)
rgb=1;
img=imread(ImgIn);
N=imnoise(img,0.03);
mf=once(3.3)/9;
noise_free=imfilter(n,mf);
subploat(2.2.1),imshow(img);
suplpat(2.2.2),imshow(N);
subploat(2.2.3),imshow(noise_free);