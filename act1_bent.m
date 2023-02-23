%designed by Zhang Rongge
%bent
tic;
clear;
parameter_robot;
global uLINK;
res=zeros(2,10);
ts=0.01;
t=0;
%rleg
uLINK(4).dq=-0.4;
uLINK(5).dq=0.8;
uLINK(6).dq=-0.4;
%lleg
uLINK(11).dq=-0.4;
uLINK(12).dq=0.8;
uLINK(13).dq=-0.4;
for i=1:40
    %calZMP;
    t=t+ts;
    ForwardVelocity(1);
    for j=2:15
        uLINK(j).q=uLINK(j).q+uLINK(j).dq*ts;
    end
    ForwardKinematics(1);
    uLINK_to_res;
    %uLINK.c_2_before=uLINK.c_1_before;
    %uLINK.c_1_before=uLINK.c;
    if(mod(i,20)==0)
%         figure;
%         visualize3d(passPath(uLINK));
        calZMP;
        ZMPplot;
    end
end
toc;
