disp("f(x)=(exp(x))^2; -u''(x)=f(x), 0<x<L; u(0)=u(L)=0");

L = 10;
N = 15;
h = L/(N+1);
M = 2*diag(ones(N,1),0) - diag(ones(N-1,1),1) - diag(ones(N-1,1),-1);
M = M/h^2
X = [h:h:L-h]'; # debut:plus:fin, prime -> transpose
F = (exp(X)).^2;
# MU=F => U=F/M <- resulution de sys lineaire
U = M\F;
plot(X,U)
