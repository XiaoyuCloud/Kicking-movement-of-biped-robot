%create robot,use struct uLINK
global uLINK;
parameter_init;
%% Body
uLINK(16).name          = 'CoM';
uLINK(16).sister        = 0;
uLINK(16).child         = 0;
uLINK(16).mother        = 1;
uLINK(16).v             = [0 0 0]';
uLINK(16).p             = [0 0 pz_com]';
uLINK(16).R             = [1 0 0; 0 1 0; 0 0 1];
uLINK(16).q             = 0;
uLINK(16).dq            = 0;
uLINK(16).w             = [0,0,0]';
uLINK(16).a             = [0 0 0]';
uLINK(16).b             = [0 0 pz_com]';
uLINK(16).qconf         = 0;
uLINK(16).qmax          = pi;
uLINK(16).qmin          = 0;
uLINK(16).m             = 1;
uLINK(16).c             = [0 0 pz_com]';
uLINK(16).bc            = [0 0 pz_com]';
uLINK(16).c_1_before    = [0 0 pz_com]';
uLINK(16).c_2_before    = [0 0 pz_com]';

uLINK(1).name           = 'BODY';
uLINK(1).sister         = 0;
uLINK(1).child          = 2;
uLINK(1).mother         = 0;
uLINK(1).v              = [0 0 0]';
uLINK(1).p              = [0 0 0]';
uLINK(1).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(1).q              = 0;
uLINK(1).dq             = 0;
uLINK(1).w              = [0,0,0]';
uLINK(1).a              = [0 0 0]';
uLINK(1).b              = [0 0 0]';
uLINK(1).qconf          = 0;
uLINK(1).qmax           = pi;
uLINK(1).qmin           = 0;
uLINK(1).m              = 30;
uLINK(1).c              = [0 0 0]';
uLINK(1).bc             = [0 0 0]';
uLINK(1).c_1_before     = [0 0 0]';
uLINK(1).c_2_before     = [0 0 0]';
uLINK(1).Ts             = 0.02;

%% RLEG_J0
uLINK(2).name           = 'RLEG_J0';
uLINK(2).sister         = 9;
uLINK(2).child          = 3;
uLINK(2).mother         = 1;
uLINK(2).v              = [0 0 0]';
uLINK(2).p              = [0 -robot_width/2 0.120]';
uLINK(2).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(2).q              = 0;
uLINK(2).dq             = 0;
uLINK(2).w              = [0,0,0]';
uLINK(2).a              = [0 0 1]';
uLINK(2).b              = [0 -robot_width/2 0.120]';
uLINK(2).qconf          = 0;
uLINK(2).qmax           = 45*pi/180;
uLINK(2).qmin           = -45*pi/180;
uLINK(2).m              = 1.1595;
uLINK(2).c              = [-18.04 0 -164.35]';
uLINK(2).c_1_before     = [-18.04 0 -164.35]';
uLINK(2).c_2_before     = [-18.04 0 -164.35]';

%% RLEG_J1
uLINK(3).name           = 'RLEG_J1';
uLINK(3).sister         = 0;
uLINK(3).child          = 4;
uLINK(3).mother         = 2;
uLINK(3).v              = [0 0 0]';
uLINK(3).p              = [-0.024 -robot_width/2 -0.060]';
uLINK(3).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(3).q              = 0;
uLINK(3).dq             = 0;
uLINK(3).w              = [0,0,0]';
uLINK(3).a              = [1 0 0]';
uLINK(3).b              = [-0.024 0 -0.180]';
uLINK(3).qconf          = 0;
uLINK(3).qmax           = 20*pi/180;
uLINK(3).qmin           = -20*pi/180;
uLINK(3).m              = 1.230;
uLINK(3).c              = [24.01 0.49 54.35]';
uLINK(3).c_1_before     = [24.01 0.49 54.35]';
uLINK(3).c_2_before     = [24.01 0.49 54.35]';

%% RLEG_J2
uLINK(4).name           = 'RLEG_J2';
uLINK(4).sister         = 0;
uLINK(4).child          = 5;
uLINK(4).mother         = 3;
uLINK(4).v              = [0 0 0]';
uLINK(4).p              = [0 -robot_width/2+0.004 0]';
uLINK(4).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(4).q              = 0;
uLINK(4).dq             = 0;
uLINK(4).w              = [0,0,0]';
uLINK(4).a              = [0 1 0]';
uLINK(4).b              = [0.024 0 0.060]';
uLINK(4).qconf          = 0;
uLINK(4).qmax           = pi;
uLINK(4).qmin           = -pi;
uLINK(4).m              = 1.398;
uLINK(4).c              = [-0.31 -1.08 -218.00]';
uLINK(4).c_1_before     = [-0.31 -1.08 -218.00]';
uLINK(4).c_2_before     = [-0.31 -1.08 -218.00]';

%% RLEG_J3
uLINK(5).name           = 'RLEG_J3';
uLINK(5).sister         = 0;
uLINK(5).child          = 6;
uLINK(5).mother         = 4;
uLINK(5).v              = [0 0 0]';
uLINK(5).p              = [0 -robot_width/2 -robot_knee_length]';
uLINK(5).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(5).q              = 0;
uLINK(5).dq             = 0;
uLINK(5).w              = [0,0,0]';
uLINK(5).a              = [0 1 0]';
uLINK(5).b              = [0 0 -robot_knee_length]';
uLINK(5).qconf          = 0;
uLINK(5).qmax           = pi;
uLINK(5).qmin           = 1*pi/180;
uLINK(5).m              = 1.241;
uLINK(5).c              = [-0.05 2.11 -209.18]';
uLINK(5).c_1_before     = [-0.05 2.11 -209.18]';
uLINK(5).c_2_before     = [-0.05 2.11 -209.18]';

%% RLEG_J4
uLINK(6).name           = 'RLEG_J4';
uLINK(6).sister         = 0;
uLINK(6).child          = 7;
uLINK(6).mother         = 5;
uLINK(6).v              = [0 0 0]';
uLINK(6).p              = [0 -robot_width/2+0.004 -robot_knee_length-robot_shin_length]';
uLINK(6).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(6).q              = 0;
uLINK(6).dq             = 0;
uLINK(6).w              = [0,0,0]';
uLINK(6).a              = [0 1 0]';
uLINK(6).b              = [0 0 -robot_shin_length]';
uLINK(6).qconf          = 0;
uLINK(6).qmax           = pi/2;
uLINK(6).qmin           = -pi/2;
uLINK(6).m              = 1.214;
uLINK(6).c              = [-12.72 -3.41 48.16]';
uLINK(6).c_1_before     = [-12.72 -3.41 48.16]';
uLINK(6).c_2_before     = [-12.72 -3.41 48.16]';

%% RLEG_J5
uLINK(7).name           = 'RLEG_J5';
uLINK(7).sister         = 0;
uLINK(7).child          = 8;
uLINK(7).mother         = 6;
uLINK(7).v              = [0 0 0]';
uLINK(7).p              = [-0.015 -robot_width/2 -robot_knee_length-robot_shin_length+0.060]';
uLINK(7).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(7).q              = 0;
uLINK(7).dq             = 0;
uLINK(7).w              = [0,0,0]';
uLINK(7).a              = [1 0 0]';
uLINK(7).b              = [-0.015 0 0.060]';
uLINK(7).qconf          = 0;
uLINK(7).qmax           = 20*pi/180;
uLINK(7).qmin           = -20*pi/180;
uLINK(7).m              = 0.3355;
uLINK(7).c              = [32.1 -0.21 -111.63]';
uLINK(7).c_1_before     = [32.1 -0.21 -111.63]';
uLINK(7).c_2_before     = [32.1 -0.21 -111.63]';

%% RLEG_Foot
uLINK(8).name           = 'RLEG_Foot';
uLINK(8).sister         = 0;
uLINK(8).child          = 17;
uLINK(8).mother         = 7;
uLINK(8).v              = [0 0 0]';
uLINK(8).p              = [0 -robot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(8).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(8).q              = 0;
uLINK(8).dq             = 0;
uLINK(8).w              = [0 0 0]';
uLINK(8).a              = [0 0 0]';
uLINK(8).b              = [0.015 0 -0.129]';
uLINK(8).qconf          = 0;
uLINK(8).qmax           = pi;
uLINK(8).qmin           = -pi;
uLINK(8).m              = 1;

%% RLEG_F1
uLINK(17).name           = 'RLEG_F1';
uLINK(17).sister         = 0;
uLINK(17).child          = 18;
uLINK(17).mother         = 8;
uLINK(17).p              = [0 -robot_width/2+foot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(17).b              = [0 foot_width/2 0]';
%% RLEG_F2
uLINK(18).name           = 'RLEG_F2';
uLINK(18).sister         = 0;
uLINK(18).child          = 19;
uLINK(18).mother         = 17;
uLINK(18).p              = [foot_length -robot_width/2+foot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(18).b              = [foot_length 0 0]';
%% RLEG_F3
uLINK(19).name           = 'RLEG_F3';
uLINK(19).sister         = 0;
uLINK(19).child          = 20;
uLINK(19).mother         = 18;
uLINK(19).p              = [foot_length -robot_width/2-foot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(19).b              = [0 -foot_width 0]';
%% RLEG_F4
uLINK(20).name           = 'RLEG_F4';
uLINK(20).sister         = 0;
uLINK(20).child          = 0;
uLINK(20).mother         = 19;
uLINK(20).p              = [0 -robot_width/2-foot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(20).b              = [-foot_length 0 0]';

%% LLEG_J0
uLINK(9).name           = 'LLEG_J0';
uLINK(9).sister         = 0;
uLINK(9).child          = 10;
uLINK(9).mother         = 1;
uLINK(9).v              = [0 0 0]';
uLINK(9).p              = [0 robot_width/2 0.120]';
uLINK(9).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(9).q              = 0;
uLINK(9).dq             = 0;
uLINK(9).w              = [0 0 0]';
uLINK(9).a              = [0 0 1]';
uLINK(9).b              = [0 robot_width/2 0.120]';
uLINK(9).qconf          = 10*pi/180;
uLINK(9).qmax           = 45*pi/180;
uLINK(9).qmin           = -45*pi/180;
uLINK(9).m              = 1.1595;
uLINK(9).c              = [-18.04 0 -164.35]';
uLINK(9).c_1_before     = [-18.04 0 -164.35]';
uLINK(9).c_2_before     = [-18.04 0 -164.35]';

%% LLEG_J1
uLINK(10).name          = 'LLEG_J1';
uLINK(10).sister        = 0;
uLINK(10).child         = 11;
uLINK(10).mother        = 9;
uLINK(10).v             = [0 0 0]';
uLINK(10).p             = [-0.024 robot_width/2 -0.060]';
uLINK(10).R             = [1 0 0; 0 1 0; 0 0 1];
uLINK(10).q             = 0;
uLINK(10).dq            = 0;
uLINK(10).w             = [0 0 0]';
uLINK(10).a             = [1 0 0]';
uLINK(10).b             = [-0.024 0 -0.180]';
uLINK(10).qconf         = 10*pi/180;
uLINK(10).qmax          = 20*pi/180;
uLINK(10).qmin          = -20*pi/180;
uLINK(10).m             = 1.230;
uLINK(10).c             = [24.01 -0.49 54.35]';
uLINK(10).c_1_before    = [24.01 -0.49 54.35]';
uLINK(10).c_2_before    = [24.01 -0.49 54.35]';

%% LLEG_J2
uLINK(11).name          = 'LLEG_J2';
uLINK(11).sister        = 0;
uLINK(11).child         = 12;
uLINK(11).mother        = 10;
uLINK(11).v             = [0 0 0]';
uLINK(11).p             = [0 robot_width/2-0.004 0]';
uLINK(11).R             = [1 0 0; 0 1 0; 0 0 1];
uLINK(11).q             = 0;
uLINK(11).dq            = 0;
uLINK(11).w             = [0 0 0]';
uLINK(11).a             = [0 1 0]';
uLINK(11).b             = [0.024 0 0.060]';
uLINK(11).qconf         = 10*pi/180;
uLINK(11).qmax          = pi;
uLINK(11).qmin          = -pi;
uLINK(11).m             = 1.397;
uLINK(11).c             = [-0.31 1.08 -218]';
uLINK(11).c_1_before    = [-0.31 1.08 -218]';
uLINK(11).c_2_before    = [-0.31 1.08 -218]';

%% LLEG_J3
uLINK(12).name          = 'LLEG_J3';
uLINK(12).sister        = 0;
uLINK(12).child         = 13;
uLINK(12).mother        = 11;
uLINK(12).v             = [0 0 0]';
uLINK(12).p             = [0 robot_width/2 -robot_knee_length]';
uLINK(12).R             = [1 0 0; 0 1 0; 0 0 1];
uLINK(12).q             = 0;
uLINK(12).dq            = 0;
uLINK(12).w             = [0 0 0]';
uLINK(12).a             = [0 1 0]';
uLINK(12).b             = [0 0 -robot_knee_length]';
uLINK(12).qconf         = 30*pi/180;
uLINK(12).qmax          = pi;
uLINK(12).qmin          = 1*pi/180;
uLINK(12).m             = 1.241;
uLINK(12).c             = [-0.05 2.11 -209.18]';
uLINK(12).c_1_before    = [-0.05 2.11 -209.18]';
uLINK(12).c_2_before    = [-0.05 2.11 -209.18]';


%% LLEG_J4
uLINK(13).name          = 'LLEG_J4';
uLINK(13).sister        = 0;
uLINK(13).child         = 14;
uLINK(13).mother        = 12;
uLINK(13).v             = [0 0 0]';
uLINK(13).p             = [0 robot_width/2-0.004 -robot_knee_length-robot_shin_length]';
uLINK(13).R             = [1 0 0; 0 1 0; 0 0 1];
uLINK(13).q             = 0;
uLINK(13).dq            = 0;
uLINK(13).w             = [0 0 0]';
uLINK(13).a             = [0 1 0]';
uLINK(13).b             = [0 0 -robot_shin_length]';
uLINK(13).qconf         = 10*pi/180;
uLINK(13).qmax          = pi/2;
uLINK(13).qmin          = -pi/2;
uLINK(13).m             = 1.214;
uLINK(13).c             = [-12.72 3.41 48.16]';
uLINK(13).c_1_before    = [-12.72 3.41 48.16]';
uLINK(13).c_2_before    = [-12.72 3.41 48.16]';

%% LLEG_J5
uLINK(14).name          = 'LLEG_J5';
uLINK(14).sister        = 0;
uLINK(14).child         = 15;
uLINK(14).mother        = 13;
uLINK(14).v             = [0 0 0]';
uLINK(14).p             = [-0.015 robot_width/2 -robot_knee_length-robot_shin_length+0.060]';
uLINK(14).R             = [1 0 0; 0 1 0; 0 0 1];
uLINK(14).q             = 0;
uLINK(14).dq            = 0;
uLINK(14).w             = [0 0 0]';
uLINK(14).a             = [1 0 0]';
uLINK(14).b             = [-0.015 0 0.060]';
uLINK(14).qconf         = 10*pi/180;
uLINK(14).qmax          = 20*pi/180;
uLINK(14).qmin          = -20*pi/180;
uLINK(14).m             = 0.3355;
uLINK(14).c             = [32.10 0.21 -111.63]';
uLINK(14).c_1_before    = [32.10 0.21 -111.63]';
uLINK(14).c_2_before    = [32.10 0.21 -111.63]';

%% LLEG_Foot
uLINK(15).name          = 'LLEG_Foot';
uLINK(15).sister        = 0;
uLINK(15).child         = 21;
uLINK(15).mother        = 14;
uLINK(15).v              = [0 0 0]';
uLINK(15).p              = [0 robot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(15).R              = [1 0 0; 0 1 0; 0 0 1];
uLINK(15).q              = 0;
uLINK(15).dq             = 0;
uLINK(15).w              = [0 0 0]';
uLINK(15).a              = [0 0 0]';
uLINK(15).b              = [0.015 0 -0.129]';
uLINK(15).qconf          = 0;
uLINK(15).qmax           = pi;
uLINK(15).qmin           = -pi;
uLINK(15).m              = 0;

%% LLEG_F1
uLINK(21).name           = 'LLEG_F1';
uLINK(21).sister         = 0;
uLINK(21).child          = 22;
uLINK(21).mother         = 15;
uLINK(21).p              = [0 robot_width/2+foot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(21).b              = [0 foot_width/2 0]';
%% LLEG_F2
uLINK(22).name           = 'LLEG_F2';
uLINK(22).sister         = 0;
uLINK(22).child          = 23;
uLINK(22).mother         = 21;
uLINK(22).p              = [foot_length robot_width/2+foot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(22).b              = [foot_length 0 0]';
%% LLEG_F3
uLINK(23).name           = 'LLEG_F3';
uLINK(23).sister         = 0;
uLINK(23).child          = 24;
uLINK(23).mother         = 22;
uLINK(23).p              = [foot_length robot_width/2-foot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(23).b              = [0 -foot_width 0]';
%% LLEG_F4
uLINK(24).name           = 'LLEG_F4';
uLINK(24).sister         = 0;
uLINK(24).child          = 0;
uLINK(24).mother         = 23;
uLINK(24).p              = [0 robot_width/2-foot_width/2 -robot_knee_length-robot_shin_length-0.069]';
uLINK(24).b              = [-foot_length 0 0]';
