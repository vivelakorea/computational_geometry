clear;clc;close all;

% slow_convex_hull

P = [0 0; -0.01 0.5; 0 1; 1 0; 0.4 0.6; 0.1 0.5];
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
