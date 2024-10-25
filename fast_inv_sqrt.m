function [S_inv_rt, x_hist] = fast_inv_sqrt(S, x0, num_iters)

x_hist = zeros(1, num_iters);

x_curr = x0;
x_hist(1) = x0;

for k = 2:num_iters
    x_next = 0.5 * x_curr * (3 - S * (x_curr^2));
    x_hist(k) = x_curr;
    x_curr = x_next;
end

S_inv_rt = x_curr;

x_hist = x_hist(1:end);

end