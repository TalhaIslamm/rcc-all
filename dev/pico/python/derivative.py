import numpy as np
import matplotlib.pyplot as plt

def derivativecalc(tau, deltat):
    x1 = 3*(tau)**2 + 5*tau +7
    x2 = 3*(tau+deltat)**2 + 5*(tau+deltat) +7
    der = (x2 -x1)/deltat
    return der


print(derivativecalc(0, 0.00001))
