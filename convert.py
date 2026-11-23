import pandas as pd
import sqlite3

df = pd.read_csv("exped.csv", low_memory=False)
with sqlite3.connect("himalayas.db") as conn:
    df.to_sql("exped", conn, if_exists="replace", index=False)   