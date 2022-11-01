import numpy as np
import matplotlib.pyplot as plt 

# co-ordinates of the linear regression equation

x = np.arange(0, 9)
arr = np.array([x, np.ones(9)])

# Linearly generated sequence 

y = [19, 20, 20.5, 21.5, 22, 23, 23, 25.5, 24]

# lets obtain the parameters of regression line 

w = np.linalg.lstsq(arr.T, y)[0]

# plotting the linear regression line 

line = w[0]*x + w[1] # Linear Regression line 
plt.plot(x, line, 'r-')
plt.plot(x, y, 'o')
plt.show()