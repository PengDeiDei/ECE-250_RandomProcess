K = 200;
N = 100;

w_k = 0.4+2.6*rand(N,K);
x_k = zeros(N,K);
x_k(:,1) = 1;

for i = 1:N
    for j = 1:K-1
        x_k(i,j+1)=x_k(i,j)*w_k(i,j);
    end
end

figure(1)
plot(x_k'); grid on;
title("Figure 1: X_{k+1} = W_k*X_k");
ylabel("X_{k+1}");
xlabel("Time");

figure(2)
semilogy(x_k'); grid on;
title("Figure 2: log(X_{k+1}) = log(W_k*X_k)");
ylabel("log(X_{k+1}) ");
xlabel("Time");

%%
a = 1e4;
A = x_k;
A(A<a) = inf;
[~,I] = min(A,[],2);

%%
figure(3)
histogram(I); grid on;
title("Figure 3: Historgram of T_{10^4} = min\{k >= 1|X_k >= 10^4\}");
ylabel("Counts");
xlabel("k");