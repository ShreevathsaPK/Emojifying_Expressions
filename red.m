function v=red(u)% one ppixel with three rgb values
    if(u(1)>=150 && u(1)<=255)%R
            v(1)=255;
    else
        v(1)=u(1);
    end
    if(u(2)>=150 && u(2)<=255)%G
            v(2)=0;
    else
        v(2)=u(2);
    end
    if(u(3)>=50 && u(3)<=100)%B
            v(3)=0;
    else
        v(3)=0;%u(3);
    end
    
end