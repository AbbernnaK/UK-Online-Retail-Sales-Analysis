import pandas as pd
import sqlite3

#Step 1: Load your CSV
df = pd.read_csv('Sales transaction v.4a.csv')

#Step 2: Connect (or create) a SQLite database
conn = sqlite3.connect('Sales transaction v.4a.db')  #This file will appear in your project

#Step 3: Write the DataFrame to a new SQL table
df.to_sql('Sales transaction v.4a', conn, if_exists='replace', index=False)  #'replace' will overwrite if exists


conn.close()





