% function v=blue(u)% one ppixel with three rgb values
%     if(u(1)>=240 && u(1)<=255 && u(2)>=240 && u(2)<=255 && u(3)>=240 && u(3)<=255)%R
%             v=[135 255 255];
%     else
%         v=u;
%     end    
% end
 
function v=blue(u)% one ppixel with three rgb values
    if((u(1)>=210) && (u(1)<=255))%R
            v(1)=0;
    else
        v(1)=0;
    end
    if((u(2)>=210) && u(2)<=255)%G
            v(2)=0;
    else
        v(2)=0;
    end
    if((u(3)>=210) && (u(3)<=255))%B
            v(3)=255;
    else
        v(3)=u(3);
    end
    
   
end