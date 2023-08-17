import numpy as np
import matplotlib.pyplot as plt

def integral(start_time, end_time, deltat):
    n = (end_time - start_time)/deltat
    i = 1
    total_area = 0
    while (i < n):
        t = (start_time + (i*deltat))
        v = 6*t + 5
        area = v * deltat
        total_area += area
        i += 1
    return total_area


print(integral(0, 3, 0.001))
