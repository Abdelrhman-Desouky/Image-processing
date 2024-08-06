function [ output ] = noise_gussian_rgb( img,seg,a )
[m n l]=size(img);
output=zeros(m,n,l);
output(:,:,1)=noise_gussian(img(:,:,1),seg,a);
output(:,:,2)=noise_gussian(img(:,:,2),seg,a);
output(:,:,3)=noise_gussian(img(:,:,3),seg,a);
%output=cat(3,output1,output2,output3);
output=uint8(output);
imshow(output);

end

