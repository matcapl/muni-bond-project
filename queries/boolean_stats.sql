-- us_munis_pricing boolean columns
SELECT 'us_munis_pricing' AS table_name, 'is_latest' AS column_name,
       MIN(is_latest::integer) AS min_val, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_latest::integer) AS median_val,
       MODE() WITHIN GROUP (ORDER BY is_latest::integer) AS mode_val, MAX(is_latest::integer) AS max_val,
       COUNT(*) FILTER (WHERE is_latest IS NULL) AS null_count,
       COUNT(*) FILTER (WHERE is_latest = FALSE) AS false_count,
       COUNT(*) FILTER (WHERE is_latest = TRUE) AS true_count
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'ytw_does_not_match_msrb' AS column_name,
       MIN(ytw_does_not_match_msrb::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ytw_does_not_match_msrb::integer),
       MODE() WITHIN GROUP (ORDER BY ytw_does_not_match_msrb::integer), MAX(ytw_does_not_match_msrb::integer),
       COUNT(*) FILTER (WHERE ytw_does_not_match_msrb IS NULL),
       COUNT(*) FILTER (WHERE ytw_does_not_match_msrb = FALSE),
       COUNT(*) FILTER (WHERE ytw_does_not_match_msrb = TRUE)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'no_yields_match_msrb' AS column_name,
       MIN(no_yields_match_msrb::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY no_yields_match_msrb::integer),
       MODE() WITHIN GROUP (ORDER BY no_yields_match_msrb::integer), MAX(no_yields_match_msrb::integer),
       COUNT(*) FILTER (WHERE no_yields_match_msrb IS NULL),
       COUNT(*) FILTER (WHERE no_yields_match_msrb = FALSE),
       COUNT(*) FILTER (WHERE no_yields_match_msrb = TRUE)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'is_when_issued_trade' AS column_name,
       MIN(is_when_issued_trade::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_when_issued_trade::integer),
       MODE() WITHIN GROUP (ORDER BY is_when_issued_trade::integer), MAX(is_when_issued_trade::integer),
       COUNT(*) FILTER (WHERE is_when_issued_trade IS NULL),
       COUNT(*) FILTER (WHERE is_when_issued_trade = FALSE),
       COUNT(*) FILTER (WHERE is_when_issued_trade = TRUE)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'is_weighted_avg_price_trade' AS column_name,
       MIN(is_weighted_avg_price_trade::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_weighted_avg_price_trade::integer),
       MODE() WITHIN GROUP (ORDER BY is_weighted_avg_price_trade::integer), MAX(is_weighted_avg_price_trade::integer),
       COUNT(*) FILTER (WHERE is_weighted_avg_price_trade IS NULL),
       COUNT(*) FILTER (WHERE is_weighted_avg_price_trade = FALSE),
       COUNT(*) FILTER (WHERE is_weighted_avg_price_trade = TRUE)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'is_list_offering_price' AS column_name,
       MIN(is_list_offering_price::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_list_offering_price::integer),
       MODE() WITHIN GROUP (ORDER BY is_list_offering_price::integer), MAX(is_list_offering_price::integer),
       COUNT(*) FILTER (WHERE is_list_offering_price IS NULL),
       COUNT(*) FILTER (WHERE is_list_offering_price = FALSE),
       COUNT(*) FILTER (WHERE is_list_offering_price = TRUE)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'is_alt_trading_system' AS column_name,
       MIN(is_alt_trading_system::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_alt_trading_system::integer),
       MODE() WITHIN GROUP (ORDER BY is_alt_trading_system::integer), MAX(is_alt_trading_system::integer),
       COUNT(*) FILTER (WHERE is_alt_trading_system IS NULL),
       COUNT(*) FILTER (WHERE is_alt_trading_system = FALSE),
       COUNT(*) FILTER (WHERE is_alt_trading_system = TRUE)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'is_non_transaction_compensation' AS column_name,
       MIN(is_non_transaction_compensation::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_non_transaction_compensation::integer),
       MODE() WITHIN GROUP (ORDER BY is_non_transaction_compensation::integer), MAX(is_non_transaction_compensation::integer),
       COUNT(*) FILTER (WHERE is_non_transaction_compensation IS NULL),
       COUNT(*) FILTER (WHERE is_non_transaction_compensation = FALSE),
       COUNT(*) FILTER (WHERE is_non_transaction_compensation = TRUE)
FROM us_munis_pricing
UNION ALL
-- us_munis_reference boolean columns
SELECT 'us_munis_reference' AS table_name, 'is_outstanding' AS column_name,
       MIN(is_outstanding::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_outstanding::integer),
       MODE() WITHIN GROUP (ORDER BY is_outstanding::integer), MAX(is_outstanding::integer),
       COUNT(*) FILTER (WHERE is_outstanding IS NULL),
       COUNT(*) FILTER (WHERE is_outstanding = FALSE),
       COUNT(*) FILTER (WHERE is_outstanding = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_callable' AS column_name,
       MIN(is_callable::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_callable::integer),
       MODE() WITHIN GROUP (ORDER BY is_callable::integer), MAX(is_callable::integer),
       COUNT(*) FILTER (WHERE is_callable IS NULL),
       COUNT(*) FILTER (WHERE is_callable = FALSE),
       COUNT(*) FILTER (WHERE is_callable = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_insured' AS column_name,
       MIN(is_insured::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_insured::integer),
       MODE() WITHIN GROUP (ORDER BY is_insured::integer), MAX(is_insured::integer),
       COUNT(*) FILTER (WHERE is_insured IS NULL),
       COUNT(*) FILTER (WHERE is_insured = FALSE),
       COUNT(*) FILTER (WHERE is_insured = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_pac' AS column_name,
       MIN(is_pac::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_pac::integer),
       MODE() WITHIN GROUP (ORDER BY is_pac::integer), MAX(is_pac::integer),
       COUNT(*) FILTER (WHERE is_pac IS NULL),
       COUNT(*) FILTER (WHERE is_pac = FALSE),
       COUNT(*) FILTER (WHERE is_pac = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_amt' AS column_name,
       MIN(is_amt::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_amt::integer),
       MODE() WITHIN GROUP (ORDER BY is_amt::integer), MAX(is_amt::integer),
       COUNT(*) FILTER (WHERE is_amt IS NULL),
       COUNT(*) FILTER (WHERE is_amt = FALSE),
       COUNT(*) FILTER (WHERE is_amt = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_federally_taxable' AS column_name,
       MIN(is_federally_taxable::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_federally_taxable::integer),
       MODE() WITHIN GROUP (ORDER BY is_federally_taxable::integer), MAX(is_federally_taxable::integer),
       COUNT(*) FILTER (WHERE is_federally_taxable IS NULL),
       COUNT(*) FILTER (WHERE is_federally_taxable = FALSE),
       COUNT(*) FILTER (WHERE is_federally_taxable = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_state_taxable' AS column_name,
       MIN(is_state_taxable::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_state_taxable::integer),
       MODE() WITHIN GROUP (ORDER BY is_state_taxable::integer), MAX(is_state_taxable::integer),
       COUNT(*) FILTER (WHERE is_state_taxable IS NULL),
       COUNT(*) FILTER (WHERE is_state_taxable = FALSE),
       COUNT(*) FILTER (WHERE is_state_taxable = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_bank_qualified' AS column_name,
       MIN(is_bank_qualified::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_bank_qualified::integer),
       MODE() WITHIN GROUP (ORDER BY is_bank_qualified::integer), MAX(is_bank_qualified::integer),
       COUNT(*) FILTER (WHERE is_bank_qualified IS NULL),
       COUNT(*) FILTER (WHERE is_bank_qualified = FALSE),
       COUNT(*) FILTER (WHERE is_bank_qualified = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_social' AS column_name,
       MIN(is_social::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_social::integer),
       MODE() WITHIN GROUP (ORDER BY is_social::integer), MAX(is_social::integer),
       COUNT(*) FILTER (WHERE is_social IS NULL),
       COUNT(*) FILTER (WHERE is_social = FALSE),
       COUNT(*) FILTER (WHERE is_social = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_green' AS column_name,
       MIN(is_green::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_green::integer),
       MODE() WITHIN GROUP (ORDER BY is_green::integer), MAX(is_green::integer),
       COUNT(*) FILTER (WHERE is_green IS NULL),
       COUNT(*) FILTER (WHERE is_green = FALSE),
       COUNT(*) FILTER (WHERE is_green = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'is_sustainable' AS column_name,
       MIN(is_sustainable::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_sustainable::integer),
       MODE() WITHIN GROUP (ORDER BY is_sustainable::integer), MAX(is_sustainable::integer),
       COUNT(*) FILTER (WHERE is_sustainable IS NULL),
       COUNT(*) FILTER (WHERE is_sustainable = FALSE),
       COUNT(*) FILTER (WHERE is_sustainable = TRUE)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'has_mandatory_redemption' AS column_name,
       MIN(has_mandatory_redemption::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY has_mandatory_redemption::integer),
       MODE() WITHIN GROUP (ORDER BY has_mandatory_redemption::integer), MAX(has_mandatory_redemption::integer),
       COUNT(*) FILTER (WHERE has_mandatory_redemption IS NULL),
       COUNT(*) FILTER (WHERE has_mandatory_redemption = FALSE),
       COUNT(*) FILTER (WHERE has_mandatory_redemption = TRUE)
FROM us_munis_reference
UNION ALL
-- us_munis_trades boolean columns
SELECT 'us_munis_trades' AS table_name, 'is_when_issued_trade' AS column_name,
       MIN(is_when_issued_trade::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_when_issued_trade::integer),
       MODE() WITHIN GROUP (ORDER BY is_when_issued_trade::integer), MAX(is_when_issued_trade::integer),
       COUNT(*) FILTER (WHERE is_when_issued_trade IS NULL),
       COUNT(*) FILTER (WHERE is_when_issued_trade = FALSE),
       COUNT(*) FILTER (WHERE is_when_issued_trade = TRUE)
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'is_weighted_avg_price_trade' AS column_name,
       MIN(is_weighted_avg_price_trade::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_weighted_avg_price_trade::integer),
       MODE() WITHIN GROUP (ORDER BY is_weighted_avg_price_trade::integer), MAX(is_weighted_avg_price_trade::integer),
       COUNT(*) FILTER (WHERE is_weighted_avg_price_trade IS NULL),
       COUNT(*) FILTER (WHERE is_weighted_avg_price_trade = FALSE),
       COUNT(*) FILTER (WHERE is_weighted_avg_price_trade = TRUE)
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'is_list_offering_price' AS column_name,
       MIN(is_list_offering_price::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_list_offering_price::integer),
       MODE() WITHIN GROUP (ORDER BY is_list_offering_price::integer), MAX(is_list_offering_price::integer),
       COUNT(*) FILTER (WHERE is_list_offering_price IS NULL),
       COUNT(*) FILTER (WHERE is_list_offering_price = FALSE),
       COUNT(*) FILTER (WHERE is_list_offering_price = TRUE)
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'is_alt_trading_system' AS column_name,
       MIN(is_alt_trading_system::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_alt_trading_system::integer),
       MODE() WITHIN GROUP (ORDER BY is_alt_trading_system::integer), MAX(is_alt_trading_system::integer),
       COUNT(*) FILTER (WHERE is_alt_trading_system IS NULL),
       COUNT(*) FILTER (WHERE is_alt_trading_system = FALSE),
       COUNT(*) FILTER (WHERE is_alt_trading_system = TRUE)
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'is_non_transaction_compensation' AS column_name,
       MIN(is_non_transaction_compensation::integer), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY is_non_transaction_compensation::integer),
       MODE() WITHIN GROUP (ORDER BY is_non_transaction_compensation::integer), MAX(is_non_transaction_compensation::integer),
       COUNT(*) FILTER (WHERE is_non_transaction_compensation IS NULL),
       COUNT(*) FILTER (WHERE is_non_transaction_compensation = FALSE),
       COUNT(*) FILTER (WHERE is_non_transaction_compensation = TRUE)
FROM us_munis_trades
ORDER BY table_name, column_name;