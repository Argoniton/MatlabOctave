#{
-Δu=f sur Ω=]0,L_x[*]0,L_y[
u=α sur Γ_1
∂_n u=0 sur Γ_2
    _____
    |   |
 -> |   |
    _____
      ^
      |

Nh=L_x
h=L_x/N

Ml=L_y
l=L_y/M
#}

M=10
N=10
h=0.2
l=0.2

d0=2/(h.^2)+2/(l.^2)
d1=-1/h.^2+ones(N*M-1,1)

#{
u_{2,j}=u_{0,j}
par ∂_nu=0
approche a l'ordre 2

#}
d1(1:N:M*N-1)=-2/h.^2
d1(N:N:M*N-1)=0
dm1=-1/h.^2+ones(N*M-1,1)
dm1(N:N:N*M-1)=0
