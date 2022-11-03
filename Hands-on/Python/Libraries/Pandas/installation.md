# Download Miniconda distribution 

https://docs.conda.io/en/latest/miniconda.html

# Install the Python data science libraries 

Begin by creating an Anaconda environment for the data science tutorial. 
Open an Anaconda command prompt and run 
conda create -n myenv python=3.9 pandas jupyter seaborn scikit-learn keras tensorflow 
to create an environment named myenv. 

# Download the titanic data from the repo 

https://hbiostat.org/data/repo/titanic3.csv

# perform the following import in the jupyter notebook

import pandas as pd
import numpy as np
data = pd.read_csv('titanic.csv')

# prepare the data 

data.replace('?', np.nan, inplace= True)
data = data.astype({"age": np.float64, "fare": np.float64})

# Check the data 

import seaborn as sns
import matplotlib.pyplot as plt

fig, axs = plt.subplots(ncols=5, figsize=(30,5))
sns.violinplot(x="survived", y="age", hue="sex", data=data, ax=axs[0])
sns.pointplot(x="sibsp", y="survived", hue="sex", data=data, ax=axs[1])
sns.pointplot(x="parch", y="survived", hue="sex", data=data, ax=axs[2])
sns.pointplot(x="pclass", y="survived", hue="sex", data=data, ax=axs[3])
sns.violinplot(x="survived", y="fare", hue="sex", data=data, ax=axs[4])

# perform correlations

data.replace({'male': 1, 'female': 0}, inplace=True)

# find the correlations between input variables 

data.corr().abs()[["survived"]]

# survived list 

data['relatives'] = data.apply (lambda row: int((row['sibsp'] + row['parch']) > 0), axis=1)
data.corr().abs()[["survived"]]

# drop the low values 

data = data[['sex', 'pclass','age','relatives','fare','survived']].dropna()
