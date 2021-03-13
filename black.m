function v=black(u)% one ppixel with three rgb values
    if(u(1)>=0 & u(1)<=90)%R
            v(1)=0;
    else
        v(1)=u(1);
    end
    if(u(2)>=0 & u(2)<=90)%G
            v(2)=0;
    else
        v(2)=u(2);
    end
    if(u(3)>=0 & u(3)<=90)%B
            v(3)=0;
    else
        v(3)=u(3);
    end
end