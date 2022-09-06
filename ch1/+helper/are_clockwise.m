function bol = are_clockwise(p1, p2, p3)

bol = det([1 p1; 1 p2; 1 p3]) > 0;

end