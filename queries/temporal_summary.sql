SELECT 'us_munis_pricing' AS table_name, 'trade_datetime' AS column_name,
       COUNT(*) FILTER (WHERE trade_datetime IS NULL) AS null_count, COUNT(*) FILTER (WHERE trade_datetime IS NOT NULL) AS non_null_count,
       MIN(trade_datetime)::text AS min_val, MAX(trade_datetime)::text AS max_val
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'settlement_date', COUNT(*) FILTER (WHERE settlement_date IS NULL), COUNT(*) FILTER (WHERE settlement_date IS NOT NULL),
       MIN(settlement_date)::text, MAX(settlement_date)::text
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'inserted_at', COUNT(*) FILTER (WHERE inserted_at IS NULL), COUNT(*) FILTER (WHERE inserted_at IS NOT NULL),
       MIN(inserted_at)::text, MAX(inserted_at)::text
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'updated_at', COUNT(*) FILTER (WHERE updated_at IS NULL), COUNT(*) FILTER (WHERE updated_at IS NOT NULL),
       MIN(updated_at)::text, MAX(updated_at)::text
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'maturity_date', COUNT(*) FILTER (WHERE maturity_date IS NULL), COUNT(*) FILTER (WHERE maturity_date IS NOT NULL),
       MIN(maturity_date)::text, MAX(maturity_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'award_date', COUNT(*) FILTER (WHERE award_date IS NULL), COUNT(*) FILTER (WHERE award_date IS NOT NULL),
       MIN(award_date)::text, MAX(award_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'first_execution_date', COUNT(*) FILTER (WHERE first_execution_date IS NULL), COUNT(*) FILTER (WHERE first_execution_date IS NOT NULL),
       MIN(first_execution_date)::text, MAX(first_execution_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'issue_date', COUNT(*) FILTER (WHERE issue_date IS NULL), COUNT(*) FILTER (WHERE issue_date IS NOT NULL),
       MIN(issue_date)::text, MAX(issue_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'first_trade_date', COUNT(*) FILTER (WHERE first_trade_date IS NULL), COUNT(*) FILTER (WHERE first_trade_date IS NOT NULL),
       MIN(first_trade_date)::text, MAX(first_trade_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'closing_date', COUNT(*) FILTER (WHERE closing_date IS NULL), COUNT(*) FILTER (WHERE closing_date IS NOT NULL),
       MIN(closing_date)::text, MAX(closing_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_accrual_date', COUNT(*) FILTER (WHERE interest_accrual_date IS NULL), COUNT(*) FILTER (WHERE interest_accrual_date IS NOT NULL),
       MIN(interest_accrual_date)::text, MAX(interest_accrual_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'first_interest_payment_date', COUNT(*) FILTER (WHERE first_interest_payment_date IS NULL), COUNT(*) FILTER (WHERE first_interest_payment_date IS NOT NULL),
       MIN(first_interest_payment_date)::text, MAX(first_interest_payment_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'provider_expiration_date', COUNT(*) FILTER (WHERE provider_expiration_date IS NULL), COUNT(*) FILTER (WHERE provider_expiration_date IS NOT NULL),
       MIN(provider_expiration_date)::text, MAX(provider_expiration_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'dated_date', COUNT(*) FILTER (WHERE dated_date IS NULL), COUNT(*) FILTER (WHERE dated_date IS NOT NULL),
       MIN(dated_date)::text, MAX(dated_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'emma_closing_date', COUNT(*) FILTER (WHERE emma_closing_date IS NULL), COUNT(*) FILTER (WHERE emma_closing_date IS NOT NULL),
       MIN(emma_closing_date)::text, MAX(emma_closing_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'previous_coupon_date', COUNT(*) FILTER (WHERE previous_coupon_date IS NULL), COUNT(*) FILTER (WHERE previous_coupon_date IS NOT NULL),
       MIN(previous_coupon_date)::text, MAX(previous_coupon_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'next_coupon_date', COUNT(*) FILTER (WHERE next_coupon_date IS NULL), COUNT(*) FILTER (WHERE next_coupon_date IS NOT NULL),
       MIN(next_coupon_date)::text, MAX(next_coupon_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'first_call_date', COUNT(*) FILTER (WHERE first_call_date IS NULL), COUNT(*) FILTER (WHERE first_call_date IS NOT NULL),
       MIN(first_call_date)::text, MAX(first_call_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'next_call_date', COUNT(*) FILTER (WHERE next_call_date IS NULL), COUNT(*) FILTER (WHERE next_call_date IS NOT NULL),
       MIN(next_call_date)::text, MAX(next_call_date)::text
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'trade_date', COUNT(*) FILTER (WHERE trade_date IS NULL), COUNT(*) FILTER (WHERE trade_date IS NOT NULL),
       MIN(trade_date)::text, MAX(trade_date)::text
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'trade_time', COUNT(*) FILTER (WHERE trade_time IS NULL), COUNT(*) FILTER (WHERE trade_time IS NOT NULL),
       MIN(trade_time)::text, MAX(trade_time)::text
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'settlement_date', COUNT(*) FILTER (WHERE settlement_date IS NULL), COUNT(*) FILTER (WHERE settlement_date IS NOT NULL),
       MIN(settlement_date)::text, MAX(settlement_date)::text
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'dated_date', COUNT(*) FILTER (WHERE dated_date IS NULL), COUNT(*) FILTER (WHERE dated_date IS NOT NULL),
       MIN(dated_date)::text, MAX(dated_date)::text
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'maturity_date', COUNT(*) FILTER (WHERE maturity_date IS NULL), COUNT(*) FILTER (WHERE maturity_date IS NOT NULL),
       MIN(maturity_date)::text, MAX(maturity_date)::text
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'rtrs_publish_date', COUNT(*) FILTER (WHERE rtrs_publish_date IS NULL), COUNT(*) FILTER (WHERE rtrs_publish_date IS NOT NULL),
       MIN(rtrs_publish_date)::text, MAX(rtrs_publish_date)::text
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'rtrs_publish_time', COUNT(*) FILTER (WHERE rtrs_publish_time IS NULL), COUNT(*) FILTER (WHERE rtrs_publish_time IS NOT NULL),
       MIN(rtrs_publish_time)::text, MAX(rtrs_publish_time)::text
FROM us_munis_trades
ORDER BY table_name, column_name;