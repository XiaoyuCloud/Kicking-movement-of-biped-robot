%designed by Yuan Kaidan, modified by Zhang Rongge
function path = passPath(robot, type, p_i_com, p_one_com)

% no type: uLINK
% type = 2: r_leg
% type = 3: l_leg
global com
path.x    = [];
path.y    = [];
path.z    = [];
% if myIsField(robot, 'robot')
%     path.robot = robot;
%     robot = robot.robot;
% end
if nargin == 1
    if length(robot) == 8
        l_leg_idx = FindRoute(7, robot);
        r_leg_idx = FindRoute(4, robot);
    elseif length(robot) == 24
        l_leg_idx = FindRoute(24, robot);
        r_leg_idx = FindRoute(20, robot);
    else
        l_leg_idx = FindRoute(15);
        r_leg_idx = FindRoute(8);
    end
    path.xl    = [];
    path.yl    = [];
    path.zl    = [];
    
    path.xr    = [];
    path.yr    = [];
    path.zr    = [];
    
    path.xc    = [];
    path.yc    = [];
    path.zc    = [];
    
    path.xcom   = [];
    path.ycom   = [];
    path.zcom   = [];
    %% Plot Left Leg
    
    for i = 1:length(l_leg_idx)
        path.xl = [path.xl, robot(l_leg_idx(i)).p(1)];
        path.yl = [path.yl, robot(l_leg_idx(i)).p(2)];
        path.zl = [path.zl, robot(l_leg_idx(i)).p(3)];
    end
    
    %% Connect Left and Right Leg
    if length(robot) == 8
        tmp=8;
    else
        tmp=16;
    end
    path.xc    = [robot(l_leg_idx(1)).p(1), robot(1).p(1), robot(tmp).p(1),...
        robot(1).p(1), robot(r_leg_idx(2)).p(1)];
    path.yc    = [robot(l_leg_idx(1)).p(2), robot(1).p(2), robot(tmp).p(2),...
        robot(1).p(2), robot(r_leg_idx(2)).p(2)];
    path.zc   = [robot(l_leg_idx(1)).p(3), robot(1).p(3), robot(tmp).p(3),...
        robot(1).p(3), robot(r_leg_idx(2)).p(3)];
    
    %% Plot Right Leg
    for i = 1:length(r_leg_idx)
        path.xr = [path.xr, robot(r_leg_idx(i)).p(1)];
        path.yr = [path.yr, robot(r_leg_idx(i)).p(2)];
        path.zr = [path.zr, robot(r_leg_idx(i)).p(3)];
    end
    
%     %% Plot CoM of each LINK
%     for i = 1:length(com)
%         path.xcom   = [path.xcom,com(i).c(1),nan];
%         path.ycom   = [path.ycom,com(i).c(2),nan];
%         path.zcom   = [path.zcom,com(i).c(3),nan];
%     end
    
elseif type == 2
    r_leg_idx = FindRoute(8, robot);
    %% Plot Right Leg
    for i = 1:length(r_leg_idx)
        path.x = [path.x, robot(r_leg_idx(i)).p(1)];
        path.y = [path.y, robot(r_leg_idx(i)).p(2)];
        path.z = [path.z, robot(r_leg_idx(i)).p(3)];
    end
    path.x = [path.x, robot(9).p(1)];
    path.y = [path.y, robot(9).p(2)];
    path.z = [path.z, robot(9).p(3)];
elseif type == 3
    l_leg_idx = FindRoute(15, robot);
    %% Plot Right Leg
    for i = 1:length(l_leg_idx)
        path.x = [path.x, robot(l_leg_idx(i)).p(1)];
        path.y = [path.y, robot(l_leg_idx(i)).p(2)];
        path.z = [path.z, robot(l_leg_idx(i)).p(3)];
    end
    path.x = [path.x, robot(9).p(1)];
    path.y = [path.y, robot(9).p(2)];
    path.z = [path.z, robot(9).p(3)];
elseif type == 4
    r_leg_idx = FindRoute(8,robot);
    
    %% Plot Right Leg
    for i = 1:length(r_leg_idx)
        path.x = [path.x, robot(r_leg_idx(i)).p(1)];
        path.y = [path.y, robot(r_leg_idx(i)).p(2)];
        path.z = [path.z, robot(r_leg_idx(i)).p(3)];
    end
    
    path.x = [path.x, robot(9).p(1)];
    path.y = [path.y, robot(9).p(2)];
    path.z = [path.z, robot(9).p(3)];
elseif type == 5
    %% Plot Left Leg
    l_leg_idx = FindRoute(8, robot);
    
    path.x = [path.x, robot(9).p(1)];
    path.y = [path.y, robot(9).p(2)];
    path.z = [path.z, robot(9).p(3)];
    
    for i = 1:length(l_leg_idx)
        path.x = [path.x, robot(l_leg_idx(i)).p(1)];
        path.y = [path.y, robot(l_leg_idx(i)).p(2)];
        path.z = [path.z, robot(l_leg_idx(i)).p(3)];
    end
    
elseif type == 6
    %% return CoM's
    path.xcom = [];
    path.ycom = [];
    path.zcom = [];
    
    for i = 1:length(robot)
        path.xcom = [path.xcom, robot(i).c(1),nan]; 
        path.ycom = [path.ycom, robot(i).c(2),nan];
        path.zcom = [path.zcom, robot(i).c(3),nan];
    end
elseif type == 7
    %% pass the ZMP calculated
        path.p_i_com_x = [];
        path.p_one_com_x = [];
        path.p_i_com_y = [];
        path.p_one_com_y = [];
        path.p_i_com_z = [];
        path.p_one_com_z = [];
    
        path.p_i_com_x = [path.p_i_com_x, p_i_com(1), nan];
        path.p_one_com_x = [path.p_one_com_x, p_one_com(1), nan];
        
        path.p_i_com_y = [path.p_i_com_y, p_i_com(2), nan];
        path.p_one_com_y = [path.p_one_com_y, p_one_com(2), nan];
        
        path.p_i_com_z = [path.p_i_com_z, p_i_com(3), nan];
        path.p_one_com_z = [path.p_one_com_z,p_one_com(3) nan];
    
end
end