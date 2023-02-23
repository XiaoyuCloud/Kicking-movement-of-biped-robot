%designed by Yuan Kaidan, modified by Zhang Rongge
function visualize3d(robot, type)

% type = 1 only i_com , type = 2 only one_com, type = 3 both
%% 3D View
% if myIsField(robot,'robot')
%     path = robot;
%     robot = robot.robot;
%     swing_ref = robot.swing_ref;
%     p_ref = robot.pref;
%     X_ref = robot.Xref;
%     t     = robot.t;
%     com   = robot.com;
%     %     one_com = [path.xcom; path.ycom; path.zcom];
%     com_path = passPath(com, 6);
%     
%     path.xcom = com_path.xcom;
%     path.ycom = com_path.ycom;
%     path.zcom = com_path.zcom;
%     
%     p_com = passPath(com, 7, robot.p_i_com, robot.p_one_com);
%     path.p_i_com_x = p_com.p_i_com_x ;
%     path.p_one_com_x = p_com.p_one_com_x ;
%     
%     path.p_i_com_y =  p_com.p_i_com_y ;
%     path.p_one_com_y =  p_com.p_one_com_y ;
%     
%     path.p_i_com_z =  p_com.p_i_com_z ;
%     path.p_one_com_z =  p_com.p_one_com_z ;
% else
%     path = robot;
% end
path = robot;
subplot(1,3,1)
hPlotl = plot3(0,0,0,'g-o');
axis equal;
% % if myIsField(robot,'robot')
% %     title(['3D-View. Time:' num2str(t) '(green: left, blue: right)']);
% else
%     title('3D-View (green: left, blue: right)')
% end
title('3D-View (green: left, blue: right)')
hold on
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
grid on;
set(hPlotl,...
    'XData',path.xl(1:end-4),...
    'YData',path.yl(1:end-4),...
    'ZData',path.zl(1:end-4)...
    );
hPlotFl = plot3(0,0,0,'g->');
set(hPlotFl,...
    'XData',path.xl(end-4:end),...
    'YData',path.yl(end-4:end),...
    'ZData',path.zl(end-4:end)...
    );
axis equal;

hPlotc = plot3(0,0,0,'r-o');
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
grid on;
set(hPlotc,...
    'XData',path.xc,...
    'YData',path.yc,...
    'ZData',path.zc...
    );
axis equal;

hPlotr = plot3(0,0,0,'b-o');
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
grid on;
set(hPlotr,...
    'XData',path.xr(1:end-4),...
    'YData',path.yr(1:end-4),...
    'ZData',path.zr(1:end-4)...
    );
axis equal;
hPlotFr = plot3(0,0,0,'b->');
set(hPlotFr,...
    'XData',path.xr(end-4:end),...
    'YData',path.yr(end-4:end),...
    'ZData',path.zr(end-4:end)...
    );
axis equal;
hPlot_CoM = plot3(0,0,0,'bs');
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
grid on;
set(hPlot_CoM,...
    'XData',path.xcom,...
    'YData',path.ycom,...
    'ZData',path.zcom...
    );
axis equal;


% legend('Left','Center','Right','CoM')

% if myIsField(robot,'robot')
%     plot3(p_ref(1),p_ref(2),p_ref(3),'x')
%     plot3(X_ref(1),X_ref(2),X_ref(3) ,'x')
%     plot3(swing_ref(1),swing_ref(2),swing_ref(3),'x')
%     
%     if ~(type == 2)
%     hPlot_p_i_com = plot3(0,0,0,'mv');
%     xlabel('x-axis')
%     ylabel('y-axis')
%     zlabel('z-axis')
%     grid on;
%     set(hPlot_p_i_com,...
%         'XData',path.p_i_com_x,...
%         'YData',path.p_i_com_y,...
%         'ZData',path.p_i_com_z...
%         );
%     axis equal;
%     end
%     
%     if ~(type == 1)
%     hPlot_p_one_com = plot3(0,0,0,'cv');
%     xlabel('x-axis')
%     ylabel('y-axis')
%     zlabel('z-axis')
%     grid on;
%     set(hPlot_p_one_com,...
%         'XData',path.p_one_com_x,...
%         'YData',path.p_one_com_y,...
%         'ZData',path.p_one_com_z...
%         );
%     axis equal;
%     end
%     % legend('Left','Center','Right','CoM (concentrated)','Multiple CoM',...
%     %     'actual ZMP (one point/CoM)','actual ZMP (multiple CoM)','p_{ref}','X_{ref}','swing_{ref}')
% end


%% X-Z View
subplot(1,3,2)
hPlotl = plot(0,0,'g-o');
title('X-Z View')
hold on
% if myIsField(robot,'robot')
%     plot(p_ref(1),p_ref(3),'x')
%     plot(X_ref(1),X_ref(3) ,'x')
%     plot(swing_ref(1),swing_ref(3),'x')
%     
%     if ~(type == 2)
%     hPlot_p_i_com = plot(0,0,'mv');
%     xlabel('x-axis')
%     ylabel('z-axis')
%     grid on;
%     set(hPlot_p_i_com,...
%         'XData',path.p_i_com_x,...
%         'YData',path.p_i_com_z...
%         );
%     axis equal;
%     end
%     
%     if ~(type == 1)
%     hPlot_p_one_com = plot(0,0,'cv');
%     xlabel('x-axis')
%     ylabel('z-axis')
%     grid on;
%     set(hPlot_p_one_com,...
%         'XData',path.p_one_com_x,...
%         'YData',path.p_one_com_z...
%         );
%     axis equal;
%     end
% end
xlabel('x-axis')
ylabel('z-axis')
grid on;
set(hPlotl,...
    'XData',path.xl,...
    'YData',path.zl...
    );
axis equal;

hPlotc = plot(0,0,'r-o');
xlabel('x-axis')
ylabel('z-axis')
grid on;
set(hPlotc,...
    'XData',path.xc,...
    'YData',path.zc...
    );
axis equal;

hPlotr = plot(0,0,'b-o');
xlabel('x-axis')
ylabel('z-axis')
grid on;
set(hPlotr,...
    'XData',path.xr,...
    'YData',path.zr...
    );
axis equal;
    
  
%% Y-Z View
subplot(1,3,3)
hPlotl = plot(0,0,'g-o');
title('Y-Z View')
hold on
% if myIsField(robot,'robot')
%     plot(p_ref(2),p_ref(3),'x')
%     plot(X_ref(2),X_ref(3) ,'x')
%     plot(swing_ref(2),swing_ref(3),'x')
%     
%      if ~(type == 2)
%     hPlot_p_i_com = plot(0,0,'mv');
%     xlabel('y-axis')
%     ylabel('z-axis')
%     grid on;
%     set(hPlot_p_i_com,...
%         'XData',path.p_i_com_y,...
%         'YData',path.p_i_com_z...
%         );
%     axis equal;
%     end
%     
%     if ~(type == 1)
%     hPlot_p_one_com = plot(0,0,'cv');
%     xlabel('y-axis')
%     ylabel('z-axis')
%     grid on;
%     set(hPlot_p_one_com,...
%         'XData',path.p_one_com_y,...
%         'YData',path.p_one_com_z...
%         );
%     axis equal;
%     end
% end
xlabel('y-axis')
ylabel('z-axis')
grid on;
set(hPlotl,...
    'XData',path.yl,...
    'YData',path.zl...
    );
axis equal;
hPlotFl = plot(0,0,'g->');
set(hPlotFl,...
    'XData',path.yl(end-4:end),...
    'YData',path.zl(end-4:end)...
    );
axis equal;

hPlotc = plot(0,0,'r-o');
xlabel('y-axis')
ylabel('z-axis')
grid on;
set(hPlotc,...
    'XData',path.yc,...
    'YData',path.zc...
    );
axis equal;

hPlotr = plot(0,0,'b-o');
xlabel('y-axis')
ylabel('z-axis')
grid on;
set(hPlotr,...
    'XData',path.yr,...
    'YData',path.zr...
    );
axis equal;
hPlotFr = plot(0,0,'b->');
set(hPlotFr,...
    'XData',path.yr(end-4:end),...
    'YData',path.zr(end-4:end)...
    );
axis equal;

end