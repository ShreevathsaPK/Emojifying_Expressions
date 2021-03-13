function new_image=angry(image)
    new_image=(zeros(227,227,3));
    count=0;
    for i=1:227
        for j=1:227
            
            new_image(i,j,:)=red(image(i,j,:));
            new_image(i,j,:)=black(new_image(i,j,:));%+0.3.*image(i,j,:);

            disp(count);
            count=count+1;
        end
    end
    %new_image=imnoise(new_image,'gaussian');
end