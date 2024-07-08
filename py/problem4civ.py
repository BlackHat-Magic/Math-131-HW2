import matplotlib.pyplot as plt
import numpy

f = lambda x: (2*x**3 + 3*x - 1)*numpy.cos(x) - x

xs = numpy.linspace(-1, 1, 400)
y = f(xs)
plt.plot(xs, y)
plt.axhline(0, color="black", linewidth=0.5)
plt.show()