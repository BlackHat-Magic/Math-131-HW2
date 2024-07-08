from typing import Callable

def bisection_method(f: Callable, a: float, b: float, tol: float, N: int = 100) -> (float, int, float):
    numbers = [int, float]
    if(type(a) not in numbers or type(b) not in numbers or type(tol) not in numbers):
        print("a, b, and tol must be numbers")
        return
    if(type(N) != int or N < 1):
        print("N must be a natural number.")
        return
    if(not callable(f)):
        print("f(x) must be callable (e.g., a function)")
        return
    if(f(a) * f(b) > 0):
        return

    err = (b - a) / 2
    for i in range(N):
        c = (a + b) / 2

        if(err < tol):
            return(c, i + 1, err)
        if(f(c) == 0):
            return(c, i + 1, err)
        if(f(a) * f(c) < 0):
            b = c
        else:
            a = c
        err = (b - a) / 2
    
    print("Maximum iterations exceeded.")
    return(c, i, err)
#
#
#
#
#
#
#
#
#
#