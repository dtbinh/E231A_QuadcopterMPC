function xQ = computeQuadPosition(sys, x)

l = sys.lQ;
xL = x(1);
yL = x(2);
phi = x(4);

x = xL - l*sin(phi);
y = yL + l*cos(phi);

xQ = [x;y];