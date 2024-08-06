function [ output ] = salt_pepper_rgb( img,ps,pr )
[m n l]=size(img);
output=zeros(m,n,l);
output(:,:,1)=salt_pepper(img(:,:,1),ps,pr);
output(:,:,2)=salt_pepper(img(:,:,2),ps,pr);
output(:,:,3)=salt_pepper(img(:,:,3),ps,pr);
%output=cat(3,output1,output2,output3);
output=uint8(output);
imshow(output);

end

