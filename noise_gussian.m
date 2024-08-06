function [ new_img ] = noise_gussian( img,seq,m )
img=double(img);
[h w l]=size(img);
for i=1:255
    num_of_pix=round(((exp(-((i-m)^2/(2*seq*seq))))/(sqrt(2*3.14*seq*seq)))*w*h);
    for j=1:num_of_pix
       row=ceil(rand(1,1)*h);
       colom=ceil(rand(1,1)*w);
       img(row,colom)=255;
    end
end
for k=1:1
    mn=min(min(img(:,:,k)));
    mx=max(max(img(:,:,k)));
    new_img(:,:,k)=((img(:,:,k)-mn)/(mx-mn))*255;
end
new_img=uint8(new_img);

    
end

