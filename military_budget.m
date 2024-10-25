function [x_vals] = military_budget(x0, num_steps, params)

a = params.a; b = params.b; K = params.K;
L = params.L; g = params.g; h = params.h;

x_vals = zeros(2, num_steps + 1);
x_vals(:, 1) = x0;

for k = 1:num_steps
    x1_next = (1 - a) * x_vals(1, k) + K * x_vals(2, k) + g;
    x2_next = L * x_vals(1, k) + (1 - b) * x_vals(2, k) + h;
    x_vals(:, k + 1) = [x1_next; x2_next];
end

end