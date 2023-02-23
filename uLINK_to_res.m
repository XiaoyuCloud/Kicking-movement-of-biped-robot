%designed by Zhang Rongge
%matlab uLINK to ROS txt
%lleg
res(i,1)=-uLINK(9).q*180/pi;
res(i,2)=uLINK(10).q*180/pi;
res(i,3)=-uLINK(11).q*180/pi;
res(i,4)=-uLINK(13).q*180/pi;
res(i,5)=-uLINK(14).q*180/pi;
%rleg
res(i,6)=-uLINK(2).q*180/pi;
res(i,7)=-uLINK(3).q*180/pi;
res(i,8)=-uLINK(4).q*180/pi;
res(i,9)=-uLINK(6).q*180/pi;
res(i,10)=uLINK(7).q*180/pi;
