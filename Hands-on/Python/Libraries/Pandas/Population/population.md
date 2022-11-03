# data analysis
import pandas as pd
# data visualization
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.express as px
plt.style.use('fivethirtyeight')
%matplotlib inline


# load dataset
population = pd.read_csv('./Countries Population from 1995 to 2020.csv')


population.head() 

population.shape
# output
(4195, 14)

population.info()

# remove extra symbol
population['Density (P/Km²)'] = population['Density (P/Km²)'].replace(',','')

population.describe()

# Question 1: Top 30 countries by population in 2020.

# 2020 population data
current_population = population[population['Year'] == 2020][:30]

plt.rcParams['figure.figsize'] = (25, 7)
ax = sns.barplot(x = current_population['Country'][:30], y = current_population['Population'][:30], palette = 'dark')
ax.set_xlabel(xlabel = 'Countries', fontsize = 10)
ax.set_ylabel(ylabel = 'Population in Billion', fontsize = 10)
ax.set_title(label = 'Population of top 30 countries in 2020', fontsize = 20)
plt.xticks(rotation = 90)
plt.show()

plt.figure(figsize=(9,25))
ax = sns.barplot(x="Population", y="Country",
                 data=current_population, palette="tab20c",
                 linewidth = 1)
for i,j in enumerate(current_population["Population"]):
    ax.text(.5, i, j, weight="bold", color = 'black', fontsize =10)
plt.title("Population of each country in 2020")
ax.set_xlabel(xlabel = 'Population in Billion', fontsize = 10)
ax.set_ylabel(ylabel = 'Countries', fontsize = 10)
plt.show()


Question 2: Total Share in World’s population by top 10 countries in 2020.

unique_countries = population['Country'].unique()
plt.style.use("seaborn-talk")


# set year
year = 2020
df_last_year = population[population['Year'] == year]
series_last_year = df_last_year.groupby('Country')['Population'].sum().sort_values(ascending=False)

labels = []
values = []
country_count = 10
other_total = 0
for country in series_last_year.index:
    if country_count > 0:
        labels.append(country)
        values.append(series_last_year[country])
        country_count -= 1
    else:
        other_total += series_last_year[country]
labels.append("Other")
values.append(other_total)

wedge_dict = {
    'edgecolor': 'black',
    'linewidth': 2        
}

explode = (0, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 0)

plt.title(f"Total Share of in World's Population the top 10 countries in {year}")
plt.pie(values, labels=labels, explode=explode, autopct='%1.2f%%', wedgeprops=wedge_dict)
plt.show()


Question 3 : Top 5 most populated countries in World.

population_top5_2020 = population[population['Year'] == 2020][:5]
top_5_countries = population_top5_2020['Country'].unique()
top5_popultion = population[population['Country'].isin(top_5_countries)][['Year', 'Country', 'Population']]
top5_popultion_pivot = top5_popultion.pivot(index='Year', columns='Country', values='Population')
top5_popultion_pivot.style.background_gradient(cmap='PuBu')


fig,ax = plt.subplots(figsize=(20, 10))
sns.despine()
sns.set_context("notebook", font_scale=1.5, rc={"lines.linewidth": 2})

sns.barplot(x="Year", y="Population", data=top5_popultion, hue='Country')
ax.set_ylabel(ylabel = 'Population in Billion', fontsize = 10)
ax.set_xlabel(xlabel = 'Year', fontsize = 10)
ax.set_title('Top 5 most populated countries in the World')
ax.legend();


Question 4: Which country is Highly dense in 2020?

population_2020 = population[population['Year'] == 2020]
fig = px.choropleth(population_2020, locations="Country", 
                    locationmode='country names', color="Density (P/Km²)", 
                    hover_name="Country", range_color=[1,1000], 
                    color_continuous_scale="blues", 
                    title='Density of Countries in 2020')
fig.update(layout_coloraxis_showscale=True)
fig.show()


# highest dense country by population
population_2020[population_2020['Density (P/Km²)']==population_2020['Density (P/Km²)'].max()][['Country','Density (P/Km²)']]

# lowest dense country by population
population_2020[population_2020['Density (P/Km²)']==population_2020['Density (P/Km²)'].min()][['Country','Density (P/Km²)']]


# highly populated country
population_2020[population_2020['Population']==population_2020['Population'].max()][['Country','Population']]


fig = px.choropleth(population_2020, locations="Country", 
                    locationmode='country names', color="Population", 
                    hover_name="Country",
                    color_continuous_scale="dense", 
                    title='Population of Countries in 2020')
fig.update(layout_coloraxis_showscale=True)
fig.show()


population_more_than_one_million = population[(population['Population'] >= 1000000) & (population['Year']==2020)]
number_of_countries = population_more_than_one_million.shape[0]
print("There are {} countries in the world with more than 1 million population.".format(number_of_countries))
## Output
There are 159 countries in the world with more than 1 million population.

fig = px.choropleth(population_more_than_one_million, locations="Country", 
                    locationmode='country names', color="Population", 
                    hover_name="Country",
                    color_continuous_scale="blues", 
                    title='Countries with more than 1 million Population')
fig.update(layout_coloraxis_showscale=True)
fig.show()

# population more than 1M
population_more_than_one_billion = population[(population['Population'] >= 1000000000) & (population['Year']==2020)]
number_of_countries = population_more_than_one_billion.shape[0]
print("There are {} countries in the world with more than 1 Billion population.".format(number_of_countries))
# output
There are 2 countries in the world with more than 1 Billion population.

fig = px.choropleth(population_more_than_one_billion, locations="Country", 
                    locationmode='country names', color="Population", 
                    hover_name="Country",
                    color_continuous_scale="reds", 
                    title='Countries with more than 1 billion Population')
fig.update(layout_coloraxis_showscale=True)
fig.show()