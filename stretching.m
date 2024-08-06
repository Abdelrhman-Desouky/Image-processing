function [ new_img ] = stretching( old_img,new_min,new_max)
[h w l]=size(old_img);
new_rgb=zeros(h,w);
new_gray=zeros(h,w);
new_rgb=double(new_rgb);
new_gray=double(new_gray);
if l==3
    old_min1=min(min(old_img(:,:,1)));
    old_max1=max(max(old_img(:,:,1)));
    old_min2=min(min(old_img(:,:,2)));
    old_max2=max(max(old_img(:,:,2)));
    old_min3=min(min(old_img(:,:,3)));
    old_max3=max(max(old_img(:,:,3)));
else
    old_min=min(min(old_img));
    old_max=max(max(old_img));
end
for i=1:h
    for j=1:w
        if l==3
            new_rgb(i,j,1)=(((old_img(i,j,1)-old_min1)/(old_max1-old_min1))*(new_max-new_min))+new_min;
            new_rgb(i,j,2)=(((old_img(i,j,2)-old_min2)/(old_max2-old_min2))*(new_max-new_min))+new_min;
            new_rgb(i,j,3)=(((old_img(i,j,3)-old_min3)/(old_max3-old_min3))*(new_max-new_min))+new_min;
        else
            new_gray(i,j)=(((old_img(i,j)-old_min)/(old_max-old_min))*(new_max-new_min))+new_min;
        end
    end
end
if l==3
    new_img=uint8(new_rgb);
else
    new_img=uint8(new_gray);
end

