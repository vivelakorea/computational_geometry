function bol = lies_between(p, points, TOL)

% input:
%   p: [x y]
%   points: [x1 y1; x2 y2]
%   TOL: tolerance
% return wether the point p lies between two points or not
x = p(1); y = p(2);
x1 = points(1,1); y1 = points(1,2);
x2 = points(2,1); y2 = points(2,2);

d1 = sqrt((x - x1)^2 + (y - y1)^2);
d2 = sqrt((x - x2)^2 + (y - y2)^2);
d = sqrt((x1 - x2)^2 + (y1 - y2)^2);

diff = (d1 + d2) - d;

bol = abs(diff) < TOL;

end