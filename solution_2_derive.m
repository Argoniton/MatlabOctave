disp("f(x)=(sin(x))^2");
L = 10;
N = 100;
h = L\(N+1)
M = 2*diag(ones(N,1),0)-diag(ones(N-1,1),1)-diag(ones(N-1,1),-1);
M = M/h^2;
x=[0.1:0.1:9]';
x';