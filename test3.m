%designed by Zhang Rongge
global uLINK;
ts=0.02;
t=0;
%rleg
uLINK(3).dq=-0.2;
uLINK(7).dq=-0.2;
%lleg
uLINK(10).dq=-0.2;
uLINK(14).dq=-0.2;
% subplot(2,5,1);
for i=1:50
    %calZMP;
    t=t+ts;
    ForwardVelocity(1);
    for j=2:15
        uLINK(j).q=uLINK(j).q+uLINK(j).dq*ts;
    end
    ForwardKinematics(1);
    %uLINK.c_2_before=uLINK.c_1_before;
    %uLINK.c_1_before=uLINK.c;
    if(mod(i,5)==0)
%         subplot(2,5,i/5);
%         test1;
        figure;
        visualize3d(passPath(uLINK));
    end
end
