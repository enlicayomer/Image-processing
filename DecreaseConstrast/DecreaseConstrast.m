%resmin yolunu verip tiff format�nda al�yoruz.
Ia=imread('RESIM-ISTANBUL.jpg');
I=rgb2gray(Ia);
%resmin orjinalini sakl�yoruz.
Io=I;
%1-1 lik tek say�da maske olu�turuyoruz.
M=ones(7,7);
%maskenin orta noktas�n� al�yoruz.
AvgMask=(size(M,1)+1)/2;
%resmin boyutlar�n� al�yoruz.
[R C]=size(I);
for x=AvgMask:R-AvgMask+1
        for y=AvgMask:C-AvgMask+1
    I(x+AvgMask,y+AvgMask)=sum(sum(Io(x-AvgMask+1:x+AvgMask-1,y-AvgMask+1:y+AvgMask-1).*M))/(AvgMask+1)^2;
    end
  end
