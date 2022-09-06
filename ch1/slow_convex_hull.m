function L = slow_convex_hull(P)

% input  P: array of points [x1 y1; x2 y2; ...]
% output L: array of points in order [x1 y1; x2 y2; ...]

E = [];


for i = 1:size(P, 1)
    for j = 1:size(P, 1)
        if i == j; continue; end
        p = P(i,:);
        q = P(j,:);
        valid = true;
        for k = 1:size(P, 1)
            if k == i || k == j ; continue; end
            r = P(k,:);
            if helper.are_clockwise(p, q, r) || helper.lies_between(r, [p; q], 1E-10)
                valid = false;
            end
        end
        if valid
            E = [E; i j];
        end
    end
end

num_of_points = size(E, 1);

indices = zeros(1, max(E(:,1)));
for i = 1:num_of_points
    indices(E(i,1)) = E(i,2);
end

L = [];
cnt = 0;
idx = 1;
while indices(idx) == 0
    idx = idx + 1;
end

while cnt < num_of_points
    L = [L; P(idx, :)];
    idx = indices(idx);
    cnt = cnt + 1;
end


end