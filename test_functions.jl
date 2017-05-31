module test_functions

function rosenbrock(x)
    return (1 - x[1])^2 + 100 * (x[2] - x[1]^2)^2
end

function drosenbrock(x)
    return [-2 + 2 * x[1] - 400 * x[1] * (x[2] - x[1]^2);
            200 * (x[2] - x[1]^2)]
end

function quadratic(x)
    2 * x[1]^2 + x[2]^2 + 5*x[1]
end

function dquadratic(x)
    [4 * x[1] + 5;
     2 * x[2]]
end

function goldstein_price(x)
    return (1 + (x[1] + x[2] + 1)^2 * (19 - 14 * x[1] + 3 * x[1]^2 - 14 * x[2] + 6 * x[1] * x[2] + 3 * x[2]^2)) ...
    * (30 + (2 * x[1] - 3 * x[2])^2 * (18 - 32 * x[1] + 12 * x[1]^2 + 48 * x[2] - 36 * x[1] * x[2] + 27 * x[2]^2))
end

end
