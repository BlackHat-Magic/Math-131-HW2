from scipy.optimize import root_scalar
import numpy

f = lambda x: (2*x**3 + 3*x - 1)*numpy.cos(x) - x

interval = [-1, 1]

result = root_scalar(f, bracket=interval)

result