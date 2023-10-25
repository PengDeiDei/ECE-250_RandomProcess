T = 1000;
N = 100;
Z = -1+2*rand(N,T);

for i = 1:N
    X1(i,:)= cumsum(Z(i,:)./[1:T]);
    X2(i,:)= cumsum(Z(i,:)./([1:T].^0.7));
    X3(i,:)= cumsum(Z(i,:)./([1:T].^0.5));
end

figure(1)
plot(X1');
title("Figure 1: X_k = Z_k / k");
ylabel("S_k");
xlabel("Time");

figure(2)
plot(X2');
title("Figure 2: X_k = Z_k / k^{0.7}");
ylabel("S_k");
xlabel("Time");

figure(3)
plot(X3');
title("Figure 3: X_k = Z_k / k^{0.5}");
ylabel("S_k");
xlabel("Time");