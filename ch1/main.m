clear;clc;close all;

number_of_points = 100;
P = randn(number_of_points, 2);

% slow_convex_hull

figure(1)

scatter(P(:,1), P(:,2))

tic
L1 = slow_convex_hull(P);
toc

hold on
for i = 1:size(L1,1)-1
    p1 = L1(i,:);
    p2 = L1(i+1,:);
    line([p1(1) p2(1)], [p1(2) p2(2)])
end
p1 = L1(end,:);
p2 = L1(1,:);
line([p1(1) p2(1)], [p1(2) p2(2)])


% convex_hull

figure(2)
title("convex hull")

scatter(P(:,1), P(:,2))

tic
L2 = convex_hull(P);
toc

hold on
for i = 1:size(L2,1)-1
    p1 = L2(i,:);
    p2 = L2(i+1,:);
    line([p1(1) p2(1)], [p1(2) p2(2)])
end
p1 = L2(end,:);
p2 = L2(1,:);
line([p1(1) p2(1)], [p1(2) p2(2)])
