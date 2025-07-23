import psycopg2
import pandas as pd
from dotenv import load_dotenv
import os
import sys

load_dotenv()

if len(sys.argv) != 2:
    print("Usage: python scripts/run_bucket_bond.py <isin_or_cusip>")
    sys.exit(1)

identifier = sys.argv[1]

try:
    conn = psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        dbname=os.getenv("DB_NAME"),
        sslmode=os.getenv("DB_SSLMODE", "disable")
    )
    with open("queries/bucket_bond.sql", "r") as f:
        query = f.read()
    cursor = conn.cursor()
    cursor.execute(query, (identifier, identifier))
    results = cursor.fetchall()
    if not results:
        print(f"No bond found for ISIN or CUSIP: {identifier}")
        sys.exit(1)
    df = pd.DataFrame(results, columns=[
        "isin", "cusip", "issuer_name", "interest_type", "tax_treatment",
        "callable_status", "insured_status", "sector", "purpose",
        "security_type", "pac_status", "state", "yield_best",
        "duration_eff", "size_outstanding", "liquidity_score",
        "credit_tag", "bucket_string"
    ])
    os.makedirs("results", exist_ok=True)
    output_file = "results/bond_bucketing.csv"
    # Append to CSV, write header only if file doesn't exist
    df.to_csv(output_file, mode='a', header=not os.path.exists(output_file), index=False)
    print("Bond bucketing appended to results/bond_bucketing.csv")
except Exception as e:
    print(f"Error: {e}")
finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conn' in locals():
        conn.close()