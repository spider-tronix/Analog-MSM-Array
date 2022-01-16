import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from math import sqrt

from sklearn import model_selection
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import r2_score
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error
from sklearn import tree

df = pd.read_csv('LIQAF circuit\Size Tuning\Dataset\Dataset.csv')

ax = plt.axes(projection ='3d')
ax.scatter(df['WN1'], df['WP1'], df['VTH'], 'green')

ax.set_title('3d Scatter plot geeks for geeks')
ax.set_xlabel('WN1')
ax.set_ylabel('WP1')
ax.set_zlabel('VTH')

plt.show()