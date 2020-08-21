import csv
import pandas as pd

dataframe = pd.read_csv("D:/UTD/Codes/Hack4Peop/owid-covid-data.csv")
new_data = dataframe[dataframe.location == 'United States']
new_data.to_csv("D:/UTD/Codes/Hack4Peop/USData.csv")
