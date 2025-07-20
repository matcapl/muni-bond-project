SELECT 'interest_type' AS column_name, interest_type AS value, COUNT(*) AS count
FROM us_munis_reference
WHERE interest_type IS NOT NULL
GROUP BY interest_type
UNION ALL
SELECT 'sector' AS column_name, sector AS value, COUNT(*)
FROM us_munis_reference
WHERE sector IS NOT NULL
GROUP BY sector
UNION ALL
SELECT 'purpose' AS column_name, purpose AS value, COUNT(*)
FROM us_munis_reference
WHERE purpose IS NOT NULL
GROUP BY purpose
UNION ALL
SELECT 'source_of_repayment' AS column_name, source_of_repayment AS value, COUNT(*)
FROM us_munis_reference
WHERE source_of_repayment IS NOT NULL
GROUP BY source_of_repayment
UNION ALL
SELECT 'state' AS column_name, state AS value, COUNT(*)
FROM us_munis_reference
WHERE state IS NOT NULL
GROUP BY state
ORDER BY column_name, count DESC;