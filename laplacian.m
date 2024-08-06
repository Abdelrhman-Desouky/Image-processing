function[output] = laplacian(img)
img = double(img);
[m n]=size(img);
c=3; d=3;
p=m+c-1; q=n+d-1;
output =zeros(p,q);
output(1:m ,1:n)=img;
hp=zeros(p,q); %filter matrix
hp(1,1)=-4 ; hp(2,1)=1; hp(1,2)=1;
hp(p,1)=1; hp(1,q)=1;

output=fft2(double(output),p,q);
hp=fft2(double(hp),p,q);
h = fftshift(hp);
f1 = abs(h);
f1 = log(f1+1);
f1=mat2gray(f1,[0 1]);

gp = output .* hp;
gp2 =ifft(gp);
gp2=real(gp2);
g = gp2(1:m , 1:n);

re= g;
re=double(img) - re ;
figure ,imshow(uint8(re));

end