x_t = zeros(10,1000);
y_t = x_t;
z_t = x_t;


for n = 1: 10
    for t = 1: 1000
        omega = normrnd(0,1,[1,t]);

        x_t(n,t) = sum(omega)/t^(0.4);

        y_t(n,t) = sum(omega)/sqrt(t);

        z_t(n,t) = exp(sum(omega));
    end
end
%%
figure (1)
for n = 1:10
    plot(1:1000,x_t(n,:)); hold on;
end
hold off;
title("10 Sample Paths of x_{t}");

figure (2)
for n = 1:10
    plot(1:1000,y_t(n,:)); hold on;
end
hold off;
title("10 Sample Paths of y_{t}");

figure (3)
for n = 1:10
    plot(1:1000,z_t(n,:)); hold on;
end
hold off;
title("10 Sample Paths of z_{t}");
ylim([0,1e37]);


