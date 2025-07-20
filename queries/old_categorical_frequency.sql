-- us_munis_pricing text columns
SELECT 'us_munis_pricing' AS table_name, 'cusip' AS column_name, cusip AS value, COUNT(*) AS count
FROM us_munis_pricing GROUP BY cusip
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'trade_type' AS column_name, trade_type, COUNT(*)
FROM us_munis_pricing GROUP BY trade_type
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'brokers_broker_trade_type' AS column_name, brokers_broker_trade_type, COUNT(*)
FROM us_munis_pricing GROUP BY brokers_broker_trade_type
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'isin' AS column_name, isin, COUNT(*)
FROM us_munis_pricing GROUP BY isin
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'source_tfile' AS column_name, source_tfile, COUNT(*)
FROM us_munis_pricing GROUP BY source_tfile
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'removed_since_tfile' AS column_name, removed_since_tfile, COUNT(*)
FROM us_munis_pricing GROUP BY removed_since_tfile
UNION ALL
-- us_munis_reference text columns
SELECT 'us_munis_reference' AS table_name, 'isin' AS column_name, isin, COUNT(*)
FROM us_munis_reference GROUP BY isin
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'cusip' AS column_name, cusip, COUNT(*)
FROM us_munis_reference GROUP BY cusip
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'series' AS column_name, series, COUNT(*)
FROM us_munis_reference GROUP BY series
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'figi' AS column_name, figi, COUNT(*)
FROM us_munis_reference GROUP BY figi
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'ticker' AS column_name, ticker, COUNT(*)
FROM us_munis_reference GROUP BY ticker
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_accrual_convention' AS column_name, interest_accrual_convention, COUNT(*)
FROM us_munis_reference GROUP BY interest_accrual_convention
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'source_of_repayment' AS column_name, source_of_repayment, COUNT(*)
FROM us_munis_reference GROUP BY source_of_repayment
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'state' AS column_name, state, COUNT(*)
FROM us_munis_reference GROUP BY state
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'figi_name' AS column_name, figi_name, COUNT(*)
FROM us_munis_reference GROUP BY figi_name
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'registration_type' AS column_name, registration_type, COUNT(*)
FROM us_munis_reference GROUP BY registration_type
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'emma_interest_type' AS column_name, emma_interest_type, COUNT(*)
FROM us_munis_reference GROUP BY emma_interest_type
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'rating_group' AS column_name, rating_group, COUNT(*)
FROM us_munis_reference GROUP BY rating_group
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'country' AS column_name, country, COUNT(*)
FROM us_munis_reference GROUP BY country
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'issuer_name' AS column_name, issuer_name, COUNT(*)
FROM us_munis_reference GROUP BY issuer_name
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'currency' AS column_name, currency, COUNT(*)
FROM us_munis_reference GROUP BY currency
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'purpose' AS column_name, purpose, COUNT(*)
FROM us_munis_reference GROUP BY purpose
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'country_code' AS column_name, country_code, COUNT(*)
FROM us_munis_reference GROUP BY country_code
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'issue_id' AS column_name, issue_id, COUNT(*)
FROM us_munis_reference GROUP BY issue_id
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'encoded_cusip' AS column_name, encoded_cusip, COUNT(*)
FROM us_munis_reference GROUP BY encoded_cusip
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_reset_period' AS column_name, interest_reset_period, COUNT(*)
FROM us_munis_reference GROUP BY interest_reset_period
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_notification_period' AS column_name, interest_notification_period, COUNT(*)
FROM us_munis_reference GROUP BY interest_notification_period
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'remarketing_agent' AS column_name, remarketing_agent, COUNT(*)
FROM us_munis_reference GROUP BY remarketing_agent
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'liquidity_facility' AS column_name, liquidity_facility, COUNT(*)
FROM us_munis_reference GROUP BY liquidity_facility
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'provider_identity' AS column_name, provider_identity, COUNT(*)
FROM us_munis_reference GROUP BY provider_identity
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'tender_agents' AS column_name, tender_agents, COUNT(*)
FROM us_munis_reference GROUP BY tender_agents
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'sector' AS column_name, sector, COUNT(*)
FROM us_munis_reference GROUP BY sector
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'variable_rate_mode' AS column_name, variable_rate_mode, COUNT(*)
FROM us_munis_reference GROUP BY variable_rate_mode
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_type' AS column_name, interest_type, COUNT(*)
FROM us_munis_reference GROUP BY interest_type
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'odd_first_coupon' AS column_name, odd_first_coupon, COUNT(*)
FROM us_munis_reference GROUP BY odd_first_coupon
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'odd_last_coupon' AS column_name, odd_last_coupon, COUNT(*)
FROM us_munis_reference GROUP BY odd_last_coupon
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'composite_rating' AS column_name, composite_rating, COUNT(*)
FROM us_munis_reference GROUP BY composite_rating
UNION ALL
-- us_munis_trades text columns
SELECT 'us_munis_trades' AS table_name, 'cusip' AS column_name, cusip, COUNT(*)
FROM us_munis_trades GROUP BY cusip
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'trade_type' AS column_name, trade_type, COUNT(*)
FROM us_munis_trades GROUP BY trade_type
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'brokers_broker_trade_type' AS column_name, brokers_broker_trade_type, COUNT(*)
FROM us_munis_trades GROUP BY brokers_broker_trade_type
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'series_name' AS column_name, series_name, COUNT(*)
FROM us_munis_trades GROUP BY series_name
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'source_tfile' AS column_name, source_tfile, COUNT(*)
FROM us_munis_trades GROUP BY source_tfile
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'removed_since_tfile' AS column_name, removed_since_tfile, COUNT(*)
FROM us_munis_trades GROUP BY removed_since_tfile
ORDER BY table_name, column_name, count DESC;