function new_image=sad(image)
    new_image=(zeros(227,227,3));
    new_image=uint8(new_image);
    
    
    
    count=0;
    for i=1:227
        for j=1:227
            
            new_image(i,j,:)=yellow(image(i,j,:));
            %new_image(i,j,:)=black(new_image(i,j,:));%+0.3.*image(i,j,:);
            
            disp(count);
            count=count+1;
        end
    end
    tears=imread('tears.png');
    tears=imresize(tears,[227 227])
    
    detector = vision.CascadeObjectDetector('haarcascade_eye.xml');
    bbox = step(detector,image);
    detectedImg = insertObjectAnnotation(image,'rectangle',bbox,'eye region');
    %imshow(detectedImg);
    
    tears = imtranslate(tears,bbox(1,1:2)-[110 2]);
    %imshow(tears);

    
    new_image=new_image+tears;

end