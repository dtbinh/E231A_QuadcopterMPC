function [Amat,Bmat] = quadrotorLinearDynamics(in1,in2,in3)
%QUADROTORLINEARDYNAMICS
%    [AMAT,BMAT] = QUADROTORLINEARDYNAMICS(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    26-Oct-2017 20:19:15

F10 = in2(1,:);
F20 = in2(2,:);
JQ = in3(2,:);
lQ = in3(3,:);
mQ = in3(1,:);
phi0 = in1(3,:);
t2 = 1.0./mQ;
t3 = cos(phi0);
t4 = sin(phi0);
Amat = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-F10.*t2.*t3-F20.*t2.*t3,-F10.*t2.*t4-F20.*t2.*t4,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0],[6,6]);
if nargout > 1
    t5 = t2.*t3;
    t6 = 1.0./JQ;
    Bmat = reshape([0.0,0.0,0.0,-t2.*t4,t5,-lQ.*t6,0.0,0.0,0.0,-t2.*t4,t5,lQ.*t6],[6,2]);
end
