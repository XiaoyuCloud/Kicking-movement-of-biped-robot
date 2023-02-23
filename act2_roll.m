% act1_bent;
global uLINK;
global uLINK2;
uLINK2=uLINK;
left=uLINK2(15).p;
right=uLINK2(8).p;
tic;
ts=0.01;
t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(3).dq=-0.36;
uLINK(7).dq=0.36;
%lleg
uLINK(10).dq=-0.36;
uLINK(14).dq=0.36;
for i=1:100
    %calZMP;
    t=t+ts;
    ForwardVelocity(1);
    for j=2:15
        uLINK(j).q=uLINK(j).q+uLINK(j).dq*ts;
    end
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
            uLINK(j).p=uLINK(j).p-offset;
        end
    end
    if(right_flag==1)
        offset=uLINK(15).p-right;
        for j=1:24
            uLINK(j).p=uLINK(j).p-offset;
        end
    end
    uLINK_to_res;
    if(mod(i,10)==0)
%           if(uLINK(21).p(3)~=uLINK(23).p(3))
%             [uLINK2]=roll_offset(uLINK2,left);
%           end
%         figure;
%         visualize3d(passPath(uLINK2));
        calZMP;
        ZMPplot;
    end
end
toc;