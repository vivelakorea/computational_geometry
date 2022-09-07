clear;clc;close all

% input S: set of line segments
% output I: intersections
% output C: line segements that contains each intersection

N = 100;
number_of_segments = 10;
points = randn(N,2);
HT = HashTable(1000);
i = 0;
while i < number_of_segments
    n = randperm(N,1); m = randperm(N,1);
    if n == m; continue; end
    if HT.ContainsKey(num2str([n m])); continue; end
    HT.Add(num2str([n m]), 1);
    i = i + 1;
end
S = HT.Keys;

hold on
for i = 1:size(S, 1)
    tmp = str2num(S{i});
    p1 = points(tmp(1), :); p2 = points(tmp(2), :);
    line([p1(1) p2(1)], ...
         [p1(2) p2(2)])
end

% sort S

% Q = helper.PriorityQueue(1);
% T = helper.PriorityQueue(1);
% T.insert(-inf); T.insert(inf);

