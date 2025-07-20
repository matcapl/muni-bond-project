SELECT 'us_munis_reference' AS table_name, 'coupon_payment_months' AS column_name,
       COUNT(*) FILTER (WHERE coupon_payment_months IS NULL) AS null_count, 
       COUNT(*) FILTER (WHERE coupon_payment_months IS NOT NULL) AS non_null_count,
       (SELECT array_to_string(coupon_payment_months, ',') FROM us_munis_reference 
        WHERE coupon_payment_months IS NOT NULL GROUP BY coupon_payment_months 
        ORDER BY COUNT(*) DESC LIMIT 1) AS mode,
       (SELECT COUNT(*) FROM us_munis_reference 
        WHERE coupon_payment_months IS NOT NULL GROUP BY coupon_payment_months 
        ORDER BY COUNT(*) DESC LIMIT 1) AS mode_count,
       COUNT(*) FILTER (WHERE coupon_payment_months IS NOT NULL AND array_length(coupon_payment_months, 1) > 0) AS non_empty_count
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'disclosure_document_file_keys', 
       COUNT(*) FILTER (WHERE disclosure_document_file_keys IS NULL), 
       COUNT(*) FILTER (WHERE disclosure_document_file_keys IS NOT NULL),
       (SELECT array_to_string(disclosure_document_file_keys, ',') FROM us_munis_reference 
        WHERE disclosure_document_file_keys IS NOT NULL GROUP BY disclosure_document_file_keys 
        ORDER BY COUNT(*) DESC LIMIT 1),
       (SELECT COUNT(*) FROM us_munis_reference 
        WHERE disclosure_document_file_keys IS NOT NULL GROUP BY disclosure_document_file_keys 
        ORDER BY COUNT(*) DESC LIMIT 1),
       COUNT(*) FILTER (WHERE disclosure_document_file_keys IS NOT NULL AND array_length(disclosure_document_file_keys, 1) > 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'optional_redemption_schedule', 
       COUNT(*) FILTER (WHERE optional_redemption_schedule IS NULL), 
       COUNT(*) FILTER (WHERE optional_redemption_schedule IS NOT NULL),
       NULL::text AS mode,
       NULL::bigint AS mode_count,
       COUNT(*) FILTER (WHERE optional_redemption_schedule IS NOT NULL AND optional_redemption_schedule != '{}'::jsonb)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'mandatory_redemption_schedule', 
       COUNT(*) FILTER (WHERE mandatory_redemption_schedule IS NULL), 
       COUNT(*) FILTER (WHERE mandatory_redemption_schedule IS NOT NULL),
       NULL, NULL,
       COUNT(*) FILTER (WHERE mandatory_redemption_schedule IS NOT NULL AND mandatory_redemption_schedule != '{}'::jsonb)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_payment_schedule', 
       COUNT(*) FILTER (WHERE interest_payment_schedule IS NULL), 
       COUNT(*) FILTER (WHERE interest_payment_schedule IS NOT NULL),
       NULL, NULL,
       COUNT(*) FILTER (WHERE interest_payment_schedule IS NOT NULL AND interest_payment_schedule != '{}'::jsonb)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'variable_rate_adjustment_schedule', 
       COUNT(*) FILTER (WHERE variable_rate_adjustment_schedule IS NULL), 
       COUNT(*) FILTER (WHERE variable_rate_adjustment_schedule IS NOT NULL),
       NULL, NULL,
       COUNT(*) FILTER (WHERE variable_rate_adjustment_schedule IS NOT NULL AND variable_rate_adjustment_schedule != '{}'::jsonb)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_rate_schedule', 
       COUNT(*) FILTER (WHERE interest_rate_schedule IS NULL), 
       COUNT(*) FILTER (WHERE interest_rate_schedule IS NOT NULL),
       NULL, NULL,
       COUNT(*) FILTER (WHERE interest_rate_schedule IS NOT NULL AND interest_rate_schedule != '{}'::jsonb)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'extraordinary_optional_redemption', 
       COUNT(*) FILTER (WHERE extraordinary_optional_redemption IS NULL), 
       COUNT(*) FILTER (WHERE extraordinary_optional_redemption IS NOT NULL),
       NULL, NULL,
       COUNT(*) FILTER (WHERE extraordinary_optional_redemption IS NOT NULL AND extraordinary_optional_redemption != '{}'::jsonb)
FROM us_munis_reference
ORDER BY table_name, column_name;