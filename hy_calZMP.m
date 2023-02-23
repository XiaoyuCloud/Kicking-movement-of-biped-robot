global uLINK;
global uLINK2;
i=1;
parameter_robot;
[m,n]=size(hy1);
for i=1:m
    left=uLINK2(15).p;
    right=uLINK2(8).p;
    %lleg
    uLINK(9).q=-hy1(i,1)/180*pi;
    uLINK(10).q=hy1(i,2)/180*pi;
    uLINK(11).q=-hy1(i,3)/180*pi;
    uLINK(13).q=-hy1(i,4)/180*pi;
    uLINK(12).q=-uLINK(11).q-uLINK(13).q;
    uLINK(14).q=-hy1(i,5)/180*pi;
    %rleg
    uLINK(2).q=-hy1(i,6)/180*pi;
    uLINK(3).q=-hy1(i,7)/180*pi;
    uLINK(4).q=-hy1(i,8)/180*pi;
    uLINK(6).q=-hy1(i,9)/180*pi;
    uLINK(5).q=-uLINK(4).q-uLINK(6).q;
    uLINK(7).q=hy1(i,10)/180*pi;
    ForwardKinematics(1);
    right_flag=0;
    left_flag=0;
    if(uLINK(15).p(3)>uLINK(8).p(3))
        right_flag=1;
    else
        left_flag=1;
    end
    if(left_flag==1)
        offset=uLINK(15).p-left;
        for j=1:24
            uLINK2(j).p=uLINK(j).p-offset;
        end
        if(uLINK(21).p(3)~=uLINK(23).p(3))
            [uLINK2]=roll_offset(uLINK2,left);
        end
    end
    if(right_flag==1)
        offset=uLINK(15).p-right;
        for j=1:24
            uLINK2(j).p=uLINK(j).p-offset;
        end
        if(uLINK(21).p(3)~=uLINK(23).p(3))
            [uLINK2]=roll_offset(uLINK2,right);
        end
    end
    
    if(mod(i,50)==0)
        figure;
        visualize3d(passPath(uLINK));
%         calZMP;
%         ZMPplot;
    end
end

