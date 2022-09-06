function L = convex_hull(P)

% input  P: array of points [x1 y1; x2 y2; ...]
% output L: array of points in order [x1 y1; x2 y2; ...]

number_of_points = size(P, 1);

[~, indices] = sort(P(:, 1));
P_sorted = P(indices, :);

L_upper = P_sorted(1:2, :);

for i = 3:number_of_points
    L_upper = [L_upper; P_sorted(i, :)];
    while size(L_upper, 1) > 2 && ...
    helper.are_clockwise(L_upper(end-2,:), L_upper(end-1,:), L_upper(end,:))
        L_upper(end - 1, :) = [];
    end
end

L_lower = [P_sorted(end, :); P_sorted(end - 1, :)];
for i = number_of_points - 2 : -1 : 1
    L_lower = [L_lower; P_sorted(i, :)];
    while size(L_lower, 1) > 2 && ...
    helper.are_clockwise(L_lower(end-2,:), L_lower(end-1,:), L_lower(end,:))
        L_lower(end - 1, :) = [];
    end
end

L_lower([1 end], :) = [];

L = [L_upper; L_lower];


end