function v=yellow(u)% one ppixel with three rgb values
    if(u(1)>=130 & u(1)<=255)%R %190
            v(1)=255;
    else
        v(1)=u(1);
    end
    if(u(2)>=100 & u(2)<=255)%G %160
            v(2)=255;
    else
        v(2)=u(2);
    end
    if(u(3)>=20 & u(3)<=130)%B %80
            v(3)=0;
    else
        v(3)=u(3);
    end
end