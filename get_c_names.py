import pandas as pd

df = pd.read_csv('cleaned_no_show_records.csv')
column_names = df.columns.tolist()

print(column_names)
