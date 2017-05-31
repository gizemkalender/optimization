module MyModule

# Line search
function line_search(g::Function, dg::Function, eps::Float64=1e-6, s::Int=1)
    # Determination of initial interval
    alpha = 0
    a = alpha
    b = alpha + s
    while true
        if dg(b) >= 0 || g(b) >= g(alpha)
            break
        end  # end of if
        a = b
        b *= 2
    end  # end of while
    a = alpha
    b = alpha + s

    # Update the current interval
    while abs(a - b) > eps
        z = 3 * (g(a) - g(b)) / (b - a) + dg(a) + dg(b)
        w = sqrt(z^2 - dg(a) * dg(b))
        alphabar = b - (dg(b) + w - z) / (dg(b) - dg(a) + 2 * w) * (b - a)

        if dg(alphabar) >= 0 || g(alphabar) >= g(a)
            b = alphabar
        elseif dg(alphabar) < 0 && g(alphabar) < g(a)
            a = alphabar
        end  # ensd of if

    end  # end of while
  return alphabar
end  # end of line_search

end # end of MyModule
