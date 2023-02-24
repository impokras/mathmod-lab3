using Plots
using DifferentialEquations

a₁ = 0.44
b₁ = 0.83
c₁ = 0.45
h₁ = 0.71
a₂ = 0.31
b₂ = 0.78
c₂ = 0.25
h₂ = 0.71
X₀ = 21000
Y₀ = 9850

function ode_fn₁(du, u, p, t)
    P = cos(t)
    Q = sin(t)
    du[1]=-a₁*u[1]-b₁*u[2]+P
    du[2]=-c₁*u[1]-h₁*u[2]+Q
end
function ode_fn₂(du, u, p, t)
    P = abs(cos(2t))
    Q = abs(sin(4t))
    du[1]=-a₂*u[1]-b₂*u[2]+P
    du[2]=-c₂*u[1]*u[2]-h₂*u[2]+Q
end

tspan = (-0.05, 1.0)
prob₁ = ODEProblem(ode_fn₁, [X₀ Y₀], tspan)
sol₁ = solve(prob₁, dtmax=0.01)
prob₂ = ODEProblem(ode_fn₂, [X₀ Y₀], tspan)
sol₂ = solve(prob₂, dtmax=0.01)

X₁ = [u[1] for u in sol₁.u]
Y₁ = [u[2] for u in sol₁.u]
T₁= [t for t in sol₁.t]
X₂ = [u[1] for u in sol₂.u]
Y₂ = [u[2] for u in sol₂.u]
T₂= [t for t in sol₂.t]

plt1 = plot(dpi=300, title="Модель боевых действий(случай I)", legend=true)
plot!(plt1, T₁, X₁, label="сторона X", color=:blue)
plot!(plt1, T₁, Y₁, label="сторона Y", color=:red)
plt2 = plot(dpi=300, title="Модель боевых действий(случай II)", legend=true)
plot!(plt2, T₂, X₂, label="сторона X", color=:blue)
plot!(plt2, T₂, Y₂, label="сторона Y", color=:red)
savefig(plt1, "model-1.png")
savefig(plt2, "model-2.png")


