function [ bin ] = img_bin( img )
[h w l]=size(img);
bin=zeros(h,w);
for i=1:h
    for j=1:w
        if l==3
            img(i,j)=0.4*img(i,j,1)+0.2*img(i,j,2)+0.4*img(i,j,3);
        end
        if img(i,j)>127;
            bin(i,j)=1;
        end
        if img(i,j)<=127
            bin(i,j)=0;
        end
    end
end
bin=logical(bin);

end

