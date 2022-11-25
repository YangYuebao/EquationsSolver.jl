solve_liner = Symbolics.solve_for

function solve(problem::LinearProblem)
    eqs = problem.eqs
    vars = problem.vars
    sol = solve_liner(eqs, vars)
    return Dict([(vars[i], sol[i]) for i in 1:length(vars)])
end
