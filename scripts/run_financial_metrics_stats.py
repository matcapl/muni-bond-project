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
        sslmode=os.getenv("DB_SSLMODE", "disable"),
        sslrootcert=os.getenv("DB_SSLCERT", None)
    )
    with open("queries/financial_metrics_stats.sql", "r") as f:
        query = f.read()
    cursor = conn.cursor()
    cursor.execute(query)
    results = cursor.fetchall()
    columns = ["table_name", "column_name", "min_val", "median_val", "mode_val", "max_val", "null_count", "zero_count", "non_zero_count"]
    df = pd.DataFrame(results, columns=columns)
    os.makedirs("results", exist_ok=True)
    df.to_csv("results/financial_metrics_stats.csv", index=False)
    print("Financial metrics stats saved to results/financial_metrics_stats.csv")
except Exception as e:
    print(f"Error: {e}")
finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals():
        conn.close()