def newtons_method(f: callable, fp: callable, x_0: float = 0, tol: float = 1e-5, n: int = 100) -> (float, int, float):
    for i in range(n):
        try:
            f_prime = fp(x_0)
        except OverflowError:
            print("function diverges")
            return(float("inf"), i, float("inf"))
        except Exeption as e:
            print(f"Other error: {e}")
            return
        j = 0
        
        c = x_0 - f(x_0) / f_prime
        err = abs(c - x_0)

        if(abs(err) < tol):
            return(c, i + 1, err)
        if(f(c) == 0):
            return(c, i + 1, err)
        x_0 = c
    print("Maximum iterations exceeded")
    return(x_n, i, err)
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
#
#
#
#