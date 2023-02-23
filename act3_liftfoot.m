% act1_bent;
% act2_roll;
global uLINK;
tic;
ts=0.01;
t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(4).dq=-0.4;
uLINK(5).dq=0.6;
uLINK(6).dq=-0.2;
% %lleg
% uLINK(11).dq=-0.2;
% uLINK(12).dq=0.2;
% uLINK(13).dq=0;
for i=1:40
    %calZMP;
    t=t+ts;
    ForwardVelocity(1);
    for j=2:15
        uLINK(j).q=uLINK(j).q+uLINK(j).dq*ts;
    end
    ForwardKinematics(1);
    offset=uLINK(15).p(1);
    for j=1:24
        uLINK(j).p(1)=uLINK(j).p(1)-offset;
    end
    uLINK_to_res;
    if(mod(i,10)==0)
%         figure;
%         visualize3d(passPath(uLINK));
        calZMP;
        ZMPplot;
    end
end
toc;