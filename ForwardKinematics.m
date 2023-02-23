% Fig. 2.23 Calculate forward kinematics for all joints
function ForwardKinematics(j)
global uLINK 

if j == 0 
    return; 
end
% if j == 1
%     uLINK(j).c = uLINK(j).p;
% end
if j ~= 1 && (j < 17)
    i = uLINK(j).mother;
    uLINK(j).p = uLINK(i).R * uLINK(j).b + uLINK(i).p;
    uLINK(j).R = uLINK(i).R * Rodrigues(uLINK(j).a, uLINK(j).q);
elseif j~=1 && (j >= 17)
    i = uLINK(j).mother;

    uLINK(j).R = uLINK(i).R;
    uLINK(j).p = uLINK(i).p + uLINK(i).R*uLINK(j).b;
elseif j~=1 && (j >= 21)
    i = uLINK(j).mother;

    uLINK(j).R = uLINK(i).R;
    uLINK(j).p = uLINK(i).p + uLINK(i).R*uLINK(j).b;

end
ForwardKinematics(uLINK(j).sister);
ForwardKinematics(uLINK(j).child);
