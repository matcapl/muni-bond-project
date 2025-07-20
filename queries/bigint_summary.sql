SELECT 'us_munis_pricing' AS table_name, 'id' AS column_name,
       COUNT(*) FILTER (WHERE id IS NULL) AS null_count, 
       COUNT(*) FILTER (WHERE id IS NOT NULL) AS non_null_count
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'id', 
       COUNT(*) FILTER (WHERE id IS NULL), 
       COUNT(*) FILTER (WHERE id IS NOT NULL)
FROM us_munis_trades
ORDER BY table_name, column_name;