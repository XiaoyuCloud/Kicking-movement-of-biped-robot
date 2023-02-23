%designed by Yuan Kaidan, modified by Zhang Rongge
%% Testing PrintLinkName script
% Inertia: [1/12*m*(h^2+d^2) 0 0; 0 1/12*m*(w^2+d^2) 0; 0 0 1/12*m*(w^2+h^2)];
global com
parameter_init
%% BODY
com(1).name   = 'BODY';
com(1).sister = 0;
com(1).child  = 2;
com(1).mother  = 0;
com(1).p       = [0 0 0]';
com(1).R       = eye(3);
com(1).I       = [0 0 0; 0 0 0; 0 0 0]; %maybe eye(3)
com(1).m          = 15;
com(1).c          = [0 0 0]';
com(1).c_i_dot      = [0 0 0]';
com(1).c_i_ddot     = [0 0 0]';
com(1).c_one_dot      = [0 0 0]';
com(1).c_one_ddot     = [0 0 0]';
com(1).bc         = [0 0 0]';
com(1).c_1_before = [0 0 0]';
com(1).c_2_before = [0 0 0]';
com(1).Ts = 0.1;

%% RLEG_J0
com(2).name   = 'RLEG_J0';
com(2).sister = 9;
com(2).child  = 3;
com(2).mother  = 1;
com(2).p       = [0 -robot_width/2 0]';
com(2).R       = eye(3);
% com(2).I       = [1/12*com(2).m*(h^2+d^2) 0 0; 0 1/12*com(2).m*(w^2+d^2) 0; 0 0 1/12*com(2).m*(w^2+h^2)];
com(2).m          = 0.818;
com(2).c          = [0 0 0]';
com(2).c_i_dot      = [0 0 0]';
com(2).c_i_ddot     = [0 0 0]';
com(2).c_one_dot      = [0 0 0]';
com(2).c_one_ddot     = [0 0 0]';
com(2).bc         = [0 0 -robot_knee_length/2]';
com(2).c_1_before = [0 -robot_width/2 -robot_knee_length/2]';
com(2).c_2_before = [0 -robot_width/2 -robot_knee_length/2]';
com(2).Ts = 0.1;

%% RLEG_J1
com(3).name   = 'RLEG_J1';
com(3).sister = 0;
com(3).child  = 4;
com(3).mother  = 2;
com(3).p       = [0 -robot_width/2 -robot_knee_length]';
com(3).R       = eye(3);
com(3).I       = [0 0 0; 0 0 0; 0 0 0]; %maybe eye(3)
com(3).m          = 30;
com(3).c          = [0 0 0]';
com(3).c_i_dot      = [0 0 0]';
com(3).c_i_ddot     = [0 0 0]';
com(3).c_one_dot      = [0 0 0]';
com(3).c_one_ddot     = [0 0 0]';
com(3).bc         = [0 0 0]';
com(3).c_1_before = [0 0 0]';
com(3).c_2_before = [0 0 0]';
com(3).Ts = 0.1;

%% RLEG_J2
com(4).name   = 'RLEG_J2';
com(4).sister = 0;
com(4).child  = 5;
com(4).mother  = 3;
com(4).p       = [0 -robot_width/2 -robot_knee_length]';
com(4).R       = eye(3);
com(4).m          = 1;
com(4).c          = [0 -robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(4).c_i_dot      = [0 0 0]';
com(4).c_i_ddot     = [0 0 0]';
com(4).c_one_dot      = [0 0 0]';
com(4).c_one_ddot     = [0 0 0]';
com(4).bc           = [0 0 -robot_shin_length/2]';
com(4).c_1_before = [0 -robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(4).c_2_before = [0 -robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(4).Ts = 0.1;

%% RLEG_J3
com(5).name   = 'RLEG_J3';
com(5).sister = 0;
com(5).child  = 6;
com(5).mother  = 4;
com(5).p       = [foot_length -robot_width/2 -robot_knee_length-robot_shin_length]';
com(5).R       = eye(3);
com(5).m          = 1;
com(5).c          = [foot_length/2 -robot_width/2 -robot_shin_length + robot_knee_length]';
com(5).c_i_dot      = [0 0 0]';
com(5).c_i_ddot     = [0 0 0]';
com(5).c_one_dot      = [0 0 0]';
com(5).c_one_ddot     = [0 0 0]';
com(5).bc       = [-foot_length/2 0 0]';
com(5).c_1_before = [foot_length/2 -robot_width/2 -robot_shin_length + robot_knee_length]';
com(5).c_2_before = [foot_length/2 -robot_width/2 -robot_shin_length + robot_knee_length]';
com(5).Ts = 0.1;

%% RLEG_J4
com(6).name   = 'RLEG_J4';
com(6).sister = 0;
com(6).child  = 7;
com(6).mother  = 5;
com(6).p       = [0 robot_width/2 -robot_knee_length]';
com(6).R       = eye(3);
com(6).m          = 1;
com(6).c          = [0 robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(6).c_i_dot      = [0 0 0]';
com(6).c_i_ddot     = [0 0 0]';
com(6).c_one_dot      = [0 0 0]';
com(6).c_one_ddot     = [0 0 0]';
com(6).bc       = [0 0 -robot_shin_length/2]';
com(6).c_1_before = [0 robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(6).c_2_before = [0 robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(6).Ts = 0.1;

%% RLEG_J5
com(7).name   = 'RLEG_J5';
com(7).sister = 0;
com(7).child  = 8;
com(7).mother  = 6;
com(7).p       = [0 robot_width/2 0]';
com(7).R       = eye(3);
com(7).m          = 1;
com(7).c          = [0 robot_width/2 -robot_knee_length/2]';
com(7).c_i_dot      = [0 0 0]';
com(7).c_i_ddot     = [0 0 0]';
com(7).c_one_dot      = [0 0 0]';
com(7).c_one_ddot     = [0 0 0]';
com(7).bc       = [0 0 -robot_knee_length/2]';
com(7).c_1_before = [0 robot_width/2 -robot_knee_length/2]';
com(7).c_2_before = [0 robot_width/2 -robot_knee_length/2]';
com(7).Ts = 0.1;

%% RLEG_Foot
com(8).name   = 'RLEG_Foot';
com(8).sister = 0;
com(8).child  = 0;
com(8).mother  = 7;
com(8).p       = [0 robot_width/2 -robot_knee_length]';
com(8).R       = eye(3);
com(8).m          = 1;
com(8).c          = [0 robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(8).c_i_dot      = [0 0 0]';
com(8).c_i_ddot     = [0 0 0]';
com(8).c_one_dot      = [0 0 0]';
com(8).c_one_ddot     = [0 0 0]';
com(8).bc       = [0 0 -robot_shin_length/2]';
com(8).c_1_before = [0 robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(8).c_2_before = [0 robot_width/2 -robot_knee_length+robot_shin_length/2]';
com(8).Ts = 0.1;

%% LLEG_J0
com(9).name   = 'LLEG_J0';
com(9).sister = 0;
com(9).child  = 10;
com(9).mother  = 1;
com(9).p       = [foot_length robot_width/2 -robot_knee_length-robot_shin_length]';
com(9).R       = eye(3);
com(9).m          = 1;
com(9).c          = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(9).c_i_dot      = [0 0 0]';
com(9).c_i_ddot     = [0 0 0]';
com(9).c_one_dot      = [0 0 0]';
com(9).c_one_ddot     = [0 0 0]';
com(9).bc       = [-foot_length/2 0 0]';
com(9).c_1_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(9).c_2_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(9).Ts = 0.1;

%% LLEG_J1
com(10).name   = 'LLEG_J1';
com(10).sister = 0;
com(10).child  = 11;
com(10).mother  = 9;
com(10).p       = [foot_length robot_width/2 -robot_knee_length-robot_shin_length]';
com(10).R       = eye(3);
com(10).m          = 1;
com(10).c          = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(10).c_i_dot      = [0 0 0]';
com(10).c_i_ddot     = [0 0 0]';
com(10).c_one_dot      = [0 0 0]';
com(10).c_one_ddot     = [0 0 0]';
com(10).bc       = [-foot_length/2 0 0]';
com(10).c_1_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(10).c_2_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(10).Ts = 0.1;

%% LLEG_J2
com(11).name   = 'LLEG_J2';
com(11).sister = 0;
com(11).child  = 12;
com(11).mother  = 10;
com(11).p       = [foot_length robot_width/2 -robot_knee_length-robot_shin_length]';
com(11).R       = eye(3);
com(11).m          = 1;
com(11).c          = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(11).c_i_dot      = [0 0 0]';
com(11).c_i_ddot     = [0 0 0]';
com(11).c_one_dot      = [0 0 0]';
com(11).c_one_ddot     = [0 0 0]';
com(11).bc       = [-foot_length/2 0 0]';
com(11).c_1_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(11).c_2_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(11).Ts = 0.1;

%% LLEG_J3
com(12).name   = 'LLEG_J3';
com(12).sister = 0;
com(12).child  = 13;
com(12).mother  = 11;
com(12).p       = [foot_length robot_width/2 -robot_knee_length-robot_shin_length]';
com(12).R       = eye(3);
com(12).m          = 1;
com(12).c          = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(12).c_i_dot      = [0 0 0]';
com(12).c_i_ddot     = [0 0 0]';
com(12).c_one_dot      = [0 0 0]';
com(12).c_one_ddot     = [0 0 0]';
com(12).bc       = [-foot_length/2 0 0]';
com(12).c_1_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(12).c_2_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(12).Ts = 0.1;

%% LLEG_J4
com(13).name   = 'LLEG_J4';
com(13).sister = 0;
com(13).child  = 14;
com(13).mother  = 12;
com(13).p       = [foot_length robot_width/2 -robot_knee_length-robot_shin_length]';
com(13).R       = eye(3);
com(13).m          = 1;
com(13).c          = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(13).c_i_dot      = [0 0 0]';
com(13).c_i_ddot     = [0 0 0]';
com(13).c_one_dot      = [0 0 0]';
com(13).c_one_ddot     = [0 0 0]';
com(13).bc       = [-foot_length/2 0 0]';
com(13).c_1_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(13).c_2_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(13).Ts = 0.1;

%% LLEG_J5
com(14).name   = 'LLEG_J5';
com(14).sister = 0;
com(14).child  = 15;
com(14).mother  = 13;
com(14).p       = [foot_length robot_width/2 -robot_knee_length-robot_shin_length]';
com(14).R       = eye(3);
com(14).m          = 1;
com(14).c          = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(14).c_i_dot      = [0 0 0]';
com(14).c_i_ddot     = [0 0 0]';
com(14).c_one_dot      = [0 0 0]';
com(14).c_one_ddot     = [0 0 0]';
com(14).bc       = [-foot_length/2 0 0]';
com(14).c_1_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(14).c_2_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(14).Ts = 0.1;

%% LLEG_Foot
com(15).name   = 'LLEG_Foot';
com(15).sister = 0;
com(15).child  = 0;
com(15).mother  = 14;
com(15).p       = [foot_length robot_width/2 -robot_knee_length-robot_shin_length]';
com(15).R       = eye(3);
com(15).m          = 1;
com(15).c          = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(15).c_i_dot      = [0 0 0]';
com(15).c_i_ddot     = [0 0 0]';
com(15).c_one_dot      = [0 0 0]';
com(15).c_one_ddot     = [0 0 0]';
com(15).bc       = [-foot_length/2 0 0]';
com(15).c_1_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(15).c_2_before = [foot_length/2 robot_width/2 -robot_shin_length + robot_knee_length]';
com(15).Ts = 0.1;