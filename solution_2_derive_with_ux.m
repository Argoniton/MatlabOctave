# solution_2_derive_with_u(x)

disp("f(x)=(sin(x))^2; -u''(x)+u(x)=f(x), 0<x<L; u'(0)=u(L)=0");
#{
x_i=(i-1)*h
hN=L
h=L/N

-u_{i-1}+u_i-u_{i+1}
-------------------- + u_i = f_i  (i≥2)
        h^2         

-u_0 + u_1 - u_2
-------------------- + u_1 = f_1  (i=1)
        h^2 

u_0 valeur fictive à èlement 


par la C-L u'(0) = 0

0=u'(0)=\frac{u(h)-u(-h)}{2h}+o(h^2)
u(h)=u(-h)+o(h^2) => u_2=~u_0

donc u_0 := u_2
#}

L = 10;
N = 70;
h = L/N;
M_1 = diag(ones(N,1));
M_2 = 2*diag(ones(N,1),0) - diag(ones(N-1,1),1) - diag(ones(N-1,1),-1);
M_2(1,2) = -2;
M = M_1 + M_2/h^2;

X = [0:h:L-h]'; # debut:pas:fin, prime -> transpose
F = (sin(X)).^2;
# MU=F => U=F/M <- resulution de sys lineaire
U = M\F;
plot(X,U)

