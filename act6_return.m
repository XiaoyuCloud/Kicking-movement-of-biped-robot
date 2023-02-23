% act1_bent;
% act2_roll;
% act3_liftfoot;
% act4_liftleg;
global uLINK;
tic;
ts=0.01;
t=0;
res=zeros(2,10);

%% kick return

t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(4).dq=3;
uLINK(5).dq=6.2;
uLINK(6).dq=-9.2;
%lleg
uLINK(11).dq=1.2;
uLINK(12).dq=-1.2;
uLINK(13).dq=0;
for i=1:10
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
    if(mod(i,2)==0)
%         figure;
%         visualize3d(passPath(uLINK));
        calZMP;
        ZMPplot;
    end
end
res6_1=res;

t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(3).dq=-0.1;
uLINK(4).dq=6;
uLINK(5).dq=-3.5;
uLINK(6).dq=-2.5;
uLINK(7).dq=0.1;
%lleg
uLINK(11).dq=1.2;
uLINK(12).dq=-1.2;
uLINK(13).dq=0;
for i=1:10
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
    if(mod(i,5)==0)
%         figure;
%         visualize3d(passPath(uLINK));
        calZMP;
        ZMPplot;
    end
end
res6_2=res;

%% liftleg return
t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(3).dq=0.02;
uLINK(5).dq=-0.4;
uLINK(6).dq=0.4;
uLINK(7).dq=-0.02;
for i=1:80
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
    if(mod(i,40)==0)
%         figure;
%         visualize3d(passPath(uLINK));
        calZMP;
        ZMPplot;
    end
end
res7=res;
%% liftfoot return
t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(4).dq=0.4;
uLINK(5).dq=-0.6;
uLINK(6).dq=0.2;
for i=1:20
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
    if(mod(i,20)==0)
        %figure;
        %visualize3d(passPath(uLINK));
        calZMP;
        ZMPplot;
    end
end
res8=res;
%% roll return
t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(3).dq=0.36;
uLINK(7).dq=-0.36;
%lleg
uLINK(10).dq=0.36;
uLINK(14).dq=-0.36;
for i=1:100
    t=t+ts;
    ForwardVelocity(1);
    for j=2:15
        uLINK(j).q=uLINK(j).q+uLINK(j).dq*ts;
    end
    ForwardKinematics(1);
    cen=0-(uLINK(8).p(2)+uLINK(15).p(2))/2;
    for j=1:24
        uLINK(j).p(2)=uLINK(j).p(2)+cen;
    end
    uLINK_to_res;
    if(mod(i,10)==0)
        %figure;
        %visualize3d(passPath(uLINK));
        calZMP;
        ZMPplot;
    end
end
res9=res;
%% bent return
t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(4).dq=0.4;
uLINK(5).dq=-0.8;
uLINK(6).dq=0.4;
%lleg
uLINK(11).dq=0.4;
uLINK(12).dq=-0.8;
uLINK(13).dq=0.4;
for i=1:40
    t=t+ts;
    ForwardVelocity(1);
    for j=2:15
        uLINK(j).q=uLINK(j).q+uLINK(j).dq*ts;
    end
    ForwardKinematics(1);
    uLINK_to_res;
    if(mod(i,10)==0)
        %figure;
        %visualize3d(passPath(uLINK));
        calZMP;
        ZMPplot;
    end
end
res10=res;

toc;