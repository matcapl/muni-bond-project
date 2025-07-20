SELECT
  table_name,
  column_name,
  data_type
FROM
  information_schema.columns
WHERE
  table_schema = 'public'
  AND table_name IN ('us_munis_reference', 'us_munis_pricing', 'us_munis_trades')
ORDER BY
  table_name,
  ordinal_position;