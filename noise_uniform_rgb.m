function [ output ] = noise_uniform_rgb( img,a,b )
[m n l]=size(img);
output=zeros(m,n,l);
output(:,:,1)=noise_uniform(img(:,:,1),a,b);
output(:,:,2)=noise_uniform(img(:,:,2),a,b);
output(:,:,3)=noise_uniform(img(:,:,3),a,b);
%output=cat(3,output1,output2,output3);
output=uint8(output);
imshow(output);

end

