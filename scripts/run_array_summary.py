import psycopg2
import pandas as pd
from dotenv import load_dotenv
import os

load_dotenv()
try:
    conn = psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        dbname=os.getenv("DB_NAME"),
        sslmode=os.getenv("DB_SSLMODE", "disable")
    )
    with open("queries/array_summary.sql", "r") as f:
        query = f.read()
    cursor = conn.cursor()
    cursor.execute(query)
    results = cursor.fetchall()
    df = pd.DataFrame(results, columns=["table_name", "column_name", "null_count", "non_null_count", "mode", "mode_count", "non_empty_count"])
    os.makedirs("results", exist_ok=True)
    df.to_csv("results/array_summary.csv", index=False)
    print("Array and JSONB summary saved to results/array_summary.csv")
except Exception as e:
    print(f"Error: {e}")
finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals():
        conn.close()