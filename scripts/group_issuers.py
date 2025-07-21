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
    query = """
    SELECT DISTINCT issuer_name, sector, state
    FROM us_munis_reference
    """
    df = pd.read_sql(query, conn)
    df['issuer_type'] = df['issuer_name'].apply(
        lambda x: 'ITL' if isinstance(x, str) and ('CITY' in x.upper() or 'COUNTY' in x.upper() or 'TOWN' in x.upper() or 'VILLAGE' in x.upper())
        else 'ITS' if isinstance(x, str) and 'STATE' in x.upper()
        else 'ITD' if isinstance(x, str) and ('SCHOOL' in x.upper() or 'DISTRICT' in x.upper())
        else 'ITA' if isinstance(x, str) and ('AUTHORITY' in x.upper() or 'AGENCY' in x.upper())
        else 'ITK'
    )
    df['region'] = df['state'].apply(
        lambda x: 'Northeast' if x in ['NY', 'MA', 'PA', 'NJ', 'CT', 'RI', 'NH', 'VT', 'ME']
        else 'South' if x in ['TX', 'FL', 'GA', 'NC', 'SC', 'VA', 'MD', 'AL', 'MS', 'LA', 'TN', 'KY', 'WV', 'DC']
        else 'Midwest' if x in ['IL', 'OH', 'MI', 'IN', 'WI', 'MN', 'IA', 'MO', 'KS', 'NE', 'ND', 'SD']
        else 'West' if x in ['CA', 'WA', 'OR', 'CO', 'AZ', 'NM', 'UT', 'NV', 'ID', 'MT', 'WY', 'AK', 'HI']
        else 'Territory' if x in ['PR', 'GU', 'VI']
        else 'Unknown'
    )
    df.to_csv("results/issuer_groups.csv", index=False)
    print("Issuer groups saved to results/issuer_groups.csv")
except Exception as e:
    print(f"Error: {e}")
finally:
    if 'conn' in locals():
        conn.close()