params1.a = 0.7;  
params1.b = 0.9;
params1.K = 0.5;
params1.L = 0.3;
params1.g = 0.1;
params1.h = 0.2;
x0 = [0.4; 0.25];  
num_steps = 50;

x_vals1 = military_budget(x0, num_steps, params1);

params2.a = 0.4; 
params2.b = 0.6;
params2.K = 1.0;
params2.L = 0.9;
params2.g = 0.1;
params2.h = 0.2;

x_vals2 = military_budget(x0, num_steps, params2);

figure;

subplot(2,1,1);
plot(0:num_steps, x_vals1(1,:), '-o', 'DisplayName', 'Country A');
hold on;
plot(0:num_steps, x_vals1(2,:), '-x', 'DisplayName', 'Country B');
xlabel('Steps');
ylabel('Military Budget');
title('Stable Budgets');
legend('Location', 'best');
grid on;

subplot(2,1,2);
plot(0:num_steps, x_vals2(1,:), '-o', 'DisplayName', 'Country A');
hold on;
plot(0:num_steps, x_vals2(2,:), '-x', 'DisplayName', 'Country B');
xlabel('Steps');
ylabel('Military Budget');
title('Arms Race');
legend('Location', 'best');
grid on;