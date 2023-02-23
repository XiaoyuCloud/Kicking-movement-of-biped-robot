%designed by Yuan Kaidan, modified by Zhang Rongge
function [p] = calcZMP_i_com(robot, z_offset)
g = 9.81;
Ts = robot(1).Ts;
p_x_num = 0;
p_y_num = 0;
den = 0;
for i = 2:14
    if(i==8)continue;
    x           = robot(i).c(1);
    x2          = robot(i).c_1_before(1);
    x3          = robot(i).c_2_before(1);
    x_dot   = (x-x2)/Ts;
    x_dot_old   = (x2-x3)/Ts;
    x_ddot      = (x_dot-x_dot_old)/Ts;
    
    y           = robot(i).c(2);
    y2          = robot(i).c_1_before(2);
    y3          = robot(i).c_2_before(2);
    y_dot   = (y-y2)/Ts;
    y_dot_old   = (y2-y3)/Ts;
    y_ddot  = (y_dot-y_dot_old)/Ts;
    
    z           = robot(i).c(3)             + z_offset;
    z2          = robot(i).c_1_before(3)    + z_offset;
    z3          = robot(i).c_2_before(3)    + z_offset;
    z_dot   = (z-z2)/Ts;
    z_dot_old   = (z2-z3)/Ts;
    z_ddot      = (z_dot-z_dot_old)/Ts;
    
    m = robot(i).m;
   
    p_x_num = p_x_num + m*((z_ddot + g)*x -z*x_ddot);
    p_y_num = p_y_num +  m*((z_ddot + g)*y -z*y_ddot);
    den = den + m*(z_ddot + g);
    
end
p(1) =  p_x_num/den;
p(2) =  p_y_num/den;

end