import psycopg2
import pandas as pd
from dotenv import load_dotenv
import os

load_dotenv()
conn = psycopg2.connect(
    host=os.getenv("DB_HOST"),
    port=os.getenv("DB_PORT"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    dbname=os.getenv("DB_NAME"),
    sslmode=os.getenv("DB_SSLMODE", "disable"),
    sslrootcert=os.getenv("DB_SSLCERT", None)
)

with open("queries/column_metadata.sql", "r") as f:
    query = f.read()
cursor = conn.cursor()
cursor.execute(query)
results = cursor.fetchall()
columns = ["table_name", "column_name", "data_type"]
df = pd.DataFrame(results, columns=columns)
os.makedirs("results", exist_ok=True)
df.to_csv("results/column_metadata.csv", index=False)
print("Column metadata saved to results/column_metadata.csv")

cursor.close()
conn.close()