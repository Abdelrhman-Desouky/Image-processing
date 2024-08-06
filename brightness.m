function [ img ] = brightness( gray,op,threshold )
[h w]=size(gray);
img=zeros(h,w);
img=double(img);
for i=1:h
    for j=1:w
        if op==1
            img(i,j)=gray(i,j)+threshold;
        end
          if op==2
            img(i,j)=gray(i,j)*threshold;
          end
          if op==3
            img(i,j)=gray(i,j)-threshold;
          end
          if op==4
            img(i,j)=gray(i,j)/threshold;
          end
    end
end

 
img=uint8(img);
end

