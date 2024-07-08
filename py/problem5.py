def fixed_point_method(g: Callable, x_0: float = 0, tol: float = 1e-5, N: int = 100) -> (float, int, float):
    if(not callable(g)):
        print("g(x) must be callable (e.g., a function).")
        return
    numbers = [int, float]
    if(type(x_0) not in numbers or type(tol) not in numbers):
        print("x_0 and tol must be numbers.")
        return
    if(type(N) != int or N < 1):
        print("N must be a natural number")
        return

    for i in range(N):
        print(x_0)
        c = g(x_0)
        err = abs(c - x_0)
        if(abs(c - x_0) < tol):
            return(c, i, err)
        x_0 = c

    print("Maximum iterations exceeded")
    return(x, i, err)
#
#
#
#
#
#
#
#
#