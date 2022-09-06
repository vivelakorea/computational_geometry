clear;clc;close all;

% slow_convex_hull

P = [2 3; 4 5; 1 4; 1 5; 5 1; 6 7; 3 1; 0 0; 6 9; 5 6; 10 16; 23 54; 54 62; 64 54; 15 64; 23 56; 42 56; 34 11; 36 62; 28 68; 23 56; 68 34; 56 72; 42 13; 12 13; 14 16];
scatter(P(:,1), P(:,2))

L = slow_convex_hull(P);

hold on
for i = 1:size(L,1)-1
    p1 = L(i,:);
    p2 = L(i+1,:);
    line([p1(1) p2(1)], [p1(2) p2(2)])
end
p1 = L(end,:);
p2 = L(1,:);
line([p1(1) p2(1)], [p1(2) p2(2)])
