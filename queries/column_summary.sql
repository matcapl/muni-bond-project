WITH text_mode AS (
  SELECT 'us_munis_pricing' AS table_name, 'cusip' AS column_name,
         COUNT(*) AS total_count, COUNT(*) FILTER (WHERE cusip IS NULL) AS null_count, COUNT(*) FILTER (WHERE cusip IS NOT NULL) AS non_null_count,
         (SELECT cusip FROM us_munis_pricing WHERE cusip IS NOT NULL GROUP BY cusip ORDER BY COUNT(*) DESC LIMIT 1) AS mode,
         (SELECT COUNT(*) FROM us_munis_pricing WHERE cusip IS NOT NULL GROUP BY cusip ORDER BY COUNT(*) DESC LIMIT 1) AS mode_count
  FROM us_munis_pricing
  UNION ALL
  SELECT 'us_munis_pricing' AS table_name, 'trade_type', COUNT(*), COUNT(*) FILTER (WHERE trade_type IS NULL), COUNT(*) FILTER (WHERE trade_type IS NOT NULL),
         (SELECT trade_type FROM us_munis_pricing WHERE trade_type IS NOT NULL GROUP BY trade_type ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_pricing WHERE trade_type IS NOT NULL GROUP BY trade_type ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_pricing
  UNION ALL
  SELECT 'us_munis_pricing' AS table_name, 'brokers_broker_trade_type', COUNT(*), COUNT(*) FILTER (WHERE brokers_broker_trade_type IS NULL), COUNT(*) FILTER (WHERE brokers_broker_trade_type IS NOT NULL),
         (SELECT brokers_broker_trade_type FROM us_munis_pricing WHERE brokers_broker_trade_type IS NOT NULL GROUP BY brokers_broker_trade_type ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_pricing WHERE brokers_broker_trade_type IS NOT NULL GROUP BY brokers_broker_trade_type ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_pricing
  UNION ALL
  SELECT 'us_munis_pricing' AS table_name, 'isin', COUNT(*), COUNT(*) FILTER (WHERE isin IS NULL), COUNT(*) FILTER (WHERE isin IS NOT NULL),
         (SELECT isin FROM us_munis_pricing WHERE isin IS NOT NULL GROUP BY isin ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_pricing WHERE isin IS NOT NULL GROUP BY isin ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_pricing
  UNION ALL
  SELECT 'us_munis_pricing' AS table_name, 'source_tfile', COUNT(*), COUNT(*) FILTER (WHERE source_tfile IS NULL), COUNT(*) FILTER (WHERE source_tfile IS NOT NULL),
         (SELECT source_tfile FROM us_munis_pricing WHERE source_tfile IS NOT NULL GROUP BY source_tfile ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_pricing WHERE source_tfile IS NOT NULL GROUP BY source_tfile ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_pricing
  UNION ALL
  SELECT 'us_munis_pricing' AS table_name, 'removed_since_tfile', COUNT(*), COUNT(*) FILTER (WHERE removed_since_tfile IS NULL), COUNT(*) FILTER (WHERE removed_since_tfile IS NOT NULL),
         (SELECT removed_since_tfile FROM us_munis_pricing WHERE removed_since_tfile IS NOT NULL GROUP BY removed_since_tfile ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_pricing WHERE removed_since_tfile IS NOT NULL GROUP BY removed_since_tfile ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_pricing
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'isin', COUNT(*), COUNT(*) FILTER (WHERE isin IS NULL), COUNT(*) FILTER (WHERE isin IS NOT NULL),
         (SELECT isin FROM us_munis_reference WHERE isin IS NOT NULL GROUP BY isin ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE isin IS NOT NULL GROUP BY isin ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'cusip', COUNT(*), COUNT(*) FILTER (WHERE cusip IS NULL), COUNT(*) FILTER (WHERE cusip IS NOT NULL),
         (SELECT cusip FROM us_munis_reference WHERE cusip IS NOT NULL GROUP BY cusip ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE cusip IS NOT NULL GROUP BY cusip ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'series', COUNT(*), COUNT(*) FILTER (WHERE series IS NULL), COUNT(*) FILTER (WHERE series IS NOT NULL),
         (SELECT series FROM us_munis_reference WHERE series IS NOT NULL GROUP BY series ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE series IS NOT NULL GROUP BY series ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'figi', COUNT(*), COUNT(*) FILTER (WHERE figi IS NULL), COUNT(*) FILTER (WHERE figi IS NOT NULL),
         (SELECT figi FROM us_munis_reference WHERE figi IS NOT NULL GROUP BY figi ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE figi IS NOT NULL GROUP BY figi ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'ticker', COUNT(*), COUNT(*) FILTER (WHERE ticker IS NULL), COUNT(*) FILTER (WHERE ticker IS NOT NULL),
         (SELECT ticker FROM us_munis_reference WHERE ticker IS NOT NULL GROUP BY ticker ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE ticker IS NOT NULL GROUP BY ticker ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'interest_accrual_convention', COUNT(*), COUNT(*) FILTER (WHERE interest_accrual_convention IS NULL), COUNT(*) FILTER (WHERE interest_accrual_convention IS NOT NULL),
         (SELECT interest_accrual_convention FROM us_munis_reference WHERE interest_accrual_convention IS NOT NULL GROUP BY interest_accrual_convention ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE interest_accrual_convention IS NOT NULL GROUP BY interest_accrual_convention ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'source_of_repayment', COUNT(*), COUNT(*) FILTER (WHERE source_of_repayment IS NULL), COUNT(*) FILTER (WHERE source_of_repayment IS NOT NULL),
         (SELECT source_of_repayment FROM us_munis_reference WHERE source_of_repayment IS NOT NULL GROUP BY source_of_repayment ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE source_of_repayment IS NOT NULL GROUP BY source_of_repayment ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'state', COUNT(*), COUNT(*) FILTER (WHERE state IS NULL), COUNT(*) FILTER (WHERE state IS NOT NULL),
         (SELECT state FROM us_munis_reference WHERE state IS NOT NULL GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE state IS NOT NULL GROUP BY state ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'figi_name', COUNT(*), COUNT(*) FILTER (WHERE figi_name IS NULL), COUNT(*) FILTER (WHERE figi_name IS NOT NULL),
         (SELECT figi_name FROM us_munis_reference WHERE figi_name IS NOT NULL GROUP BY figi_name ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE figi_name IS NOT NULL GROUP BY figi_name ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'registration_type', COUNT(*), COUNT(*) FILTER (WHERE registration_type IS NULL), COUNT(*) FILTER (WHERE registration_type IS NOT NULL),
         (SELECT registration_type FROM us_munis_reference WHERE registration_type IS NOT NULL GROUP BY registration_type ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE registration_type IS NOT NULL GROUP BY registration_type ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'emma_interest_type', COUNT(*), COUNT(*) FILTER (WHERE emma_interest_type IS NULL), COUNT(*) FILTER (WHERE emma_interest_type IS NOT NULL),
         (SELECT emma_interest_type FROM us_munis_reference WHERE emma_interest_type IS NOT NULL GROUP BY emma_interest_type ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE emma_interest_type IS NOT NULL GROUP BY emma_interest_type ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'rating_group', COUNT(*), COUNT(*) FILTER (WHERE rating_group IS NULL), COUNT(*) FILTER (WHERE rating_group IS NOT NULL),
         (SELECT rating_group FROM us_munis_reference WHERE rating_group IS NOT NULL GROUP BY rating_group ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE rating_group IS NOT NULL GROUP BY rating_group ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'country', COUNT(*), COUNT(*) FILTER (WHERE country IS NULL), COUNT(*) FILTER (WHERE country IS NOT NULL),
         (SELECT country FROM us_munis_reference WHERE country IS NOT NULL GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE country IS NOT NULL GROUP BY country ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'issuer_name', COUNT(*), COUNT(*) FILTER (WHERE issuer_name IS NULL), COUNT(*) FILTER (WHERE issuer_name IS NOT NULL),
         (SELECT issuer_name FROM us_munis_reference WHERE issuer_name IS NOT NULL GROUP BY issuer_name ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE issuer_name IS NOT NULL GROUP BY issuer_name ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'currency', COUNT(*), COUNT(*) FILTER (WHERE currency IS NULL), COUNT(*) FILTER (WHERE currency IS NOT NULL),
         (SELECT currency FROM us_munis_reference WHERE currency IS NOT NULL GROUP BY currency ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE currency IS NOT NULL GROUP BY currency ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'purpose', COUNT(*), COUNT(*) FILTER (WHERE purpose IS NULL), COUNT(*) FILTER (WHERE purpose IS NOT NULL),
         (SELECT purpose FROM us_munis_reference WHERE purpose IS NOT NULL GROUP BY purpose ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE purpose IS NOT NULL GROUP BY purpose ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'country_code', COUNT(*), COUNT(*) FILTER (WHERE country_code IS NULL), COUNT(*) FILTER (WHERE country_code IS NOT NULL),
         (SELECT country_code FROM us_munis_reference WHERE country_code IS NOT NULL GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE country_code IS NOT NULL GROUP BY country_code ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'issue_id', COUNT(*), COUNT(*) FILTER (WHERE issue_id IS NULL), COUNT(*) FILTER (WHERE issue_id IS NOT NULL),
         (SELECT issue_id FROM us_munis_reference WHERE issue_id IS NOT NULL GROUP BY issue_id ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE issue_id IS NOT NULL GROUP BY issue_id ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'encoded_cusip', COUNT(*), COUNT(*) FILTER (WHERE encoded_cusip IS NULL), COUNT(*) FILTER (WHERE encoded_cusip IS NOT NULL),
         (SELECT encoded_cusip FROM us_munis_reference WHERE encoded_cusip IS NOT NULL GROUP BY encoded_cusip ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE encoded_cusip IS NOT NULL GROUP BY encoded_cusip ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'interest_reset_period', COUNT(*), COUNT(*) FILTER (WHERE interest_reset_period IS NULL), COUNT(*) FILTER (WHERE interest_reset_period IS NOT NULL),
         (SELECT interest_reset_period FROM us_munis_reference WHERE interest_reset_period IS NOT NULL GROUP BY interest_reset_period ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE interest_reset_period IS NOT NULL GROUP BY interest_reset_period ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'interest_notification_period', COUNT(*), COUNT(*) FILTER (WHERE interest_notification_period IS NULL), COUNT(*) FILTER (WHERE interest_notification_period IS NOT NULL),
         (SELECT interest_notification_period FROM us_munis_reference WHERE interest_notification_period IS NOT NULL GROUP BY interest_notification_period ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE interest_notification_period IS NOT NULL GROUP BY interest_notification_period ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'remarketing_agent', COUNT(*), COUNT(*) FILTER (WHERE remarketing_agent IS NULL), COUNT(*) FILTER (WHERE remarketing_agent IS NOT NULL),
         (SELECT remarketing_agent FROM us_munis_reference WHERE remarketing_agent IS NOT NULL GROUP BY remarketing_agent ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE remarketing_agent IS NOT NULL GROUP BY remarketing_agent ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'liquidity_facility', COUNT(*), COUNT(*) FILTER (WHERE liquidity_facility IS NULL), COUNT(*) FILTER (WHERE liquidity_facility IS NOT NULL),
         (SELECT liquidity_facility FROM us_munis_reference WHERE liquidity_facility IS NOT NULL GROUP BY liquidity_facility ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE liquidity_facility IS NOT NULL GROUP BY liquidity_facility ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'provider_identity', COUNT(*), COUNT(*) FILTER (WHERE provider_identity IS NULL), COUNT(*) FILTER (WHERE provider_identity IS NOT NULL),
         (SELECT provider_identity FROM us_munis_reference WHERE provider_identity IS NOT NULL GROUP BY provider_identity ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE provider_identity IS NOT NULL GROUP BY provider_identity ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'tender_agents', COUNT(*), COUNT(*) FILTER (WHERE tender_agents IS NULL), COUNT(*) FILTER (WHERE tender_agents IS NOT NULL),
         (SELECT tender_agents FROM us_munis_reference WHERE tender_agents IS NOT NULL GROUP BY tender_agents ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE tender_agents IS NOT NULL GROUP BY tender_agents ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'sector', COUNT(*), COUNT(*) FILTER (WHERE sector IS NULL), COUNT(*) FILTER (WHERE sector IS NOT NULL),
         (SELECT sector FROM us_munis_reference WHERE sector IS NOT NULL GROUP BY sector ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE sector IS NOT NULL GROUP BY sector ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'variable_rate_mode', COUNT(*), COUNT(*) FILTER (WHERE variable_rate_mode IS NULL), COUNT(*) FILTER (WHERE variable_rate_mode IS NOT NULL),
         (SELECT variable_rate_mode FROM us_munis_reference WHERE variable_rate_mode IS NOT NULL GROUP BY variable_rate_mode ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE variable_rate_mode IS NOT NULL GROUP BY variable_rate_mode ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'interest_type', COUNT(*), COUNT(*) FILTER (WHERE interest_type IS NULL), COUNT(*) FILTER (WHERE interest_type IS NOT NULL),
         (SELECT interest_type FROM us_munis_reference WHERE interest_type IS NOT NULL GROUP BY interest_type ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE interest_type IS NOT NULL GROUP BY interest_type ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'odd_first_coupon', COUNT(*), COUNT(*) FILTER (WHERE odd_first_coupon IS NULL), COUNT(*) FILTER (WHERE odd_first_coupon IS NOT NULL),
         (SELECT odd_first_coupon FROM us_munis_reference WHERE odd_first_coupon IS NOT NULL GROUP BY odd_first_coupon ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE odd_first_coupon IS NOT NULL GROUP BY odd_first_coupon ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'odd_last_coupon', COUNT(*), COUNT(*) FILTER (WHERE odd_last_coupon IS NULL), COUNT(*) FILTER (WHERE odd_last_coupon IS NOT NULL),
         (SELECT odd_last_coupon FROM us_munis_reference WHERE odd_last_coupon IS NOT NULL GROUP BY odd_last_coupon ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE odd_last_coupon IS NOT NULL GROUP BY odd_last_coupon ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_reference' AS table_name, 'composite_rating', COUNT(*), COUNT(*) FILTER (WHERE composite_rating IS NULL), COUNT(*) FILTER (WHERE composite_rating IS NOT NULL),
         (SELECT composite_rating FROM us_munis_reference WHERE composite_rating IS NOT NULL GROUP BY composite_rating ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_reference WHERE composite_rating IS NOT NULL GROUP BY composite_rating ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_reference
  UNION ALL
  SELECT 'us_munis_trades' AS table_name, 'cusip', COUNT(*), COUNT(*) FILTER (WHERE cusip IS NULL), COUNT(*) FILTER (WHERE cusip IS NOT NULL),
         (SELECT cusip FROM us_munis_trades WHERE cusip IS NOT NULL GROUP BY cusip ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_trades WHERE cusip IS NOT NULL GROUP BY cusip ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_trades
  UNION ALL
  SELECT 'us_munis_trades' AS table_name, 'trade_type', COUNT(*), COUNT(*) FILTER (WHERE trade_type IS NULL), COUNT(*) FILTER (WHERE trade_type IS NOT NULL),
         (SELECT trade_type FROM us_munis_trades WHERE trade_type IS NOT NULL GROUP BY trade_type ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_trades WHERE trade_type IS NOT NULL GROUP BY trade_type ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_trades
  UNION ALL
  SELECT 'us_munis_trades' AS table_name, 'brokers_broker_trade_type', COUNT(*), COUNT(*) FILTER (WHERE brokers_broker_trade_type IS NULL), COUNT(*) FILTER (WHERE brokers_broker_trade_type IS NOT NULL),
         (SELECT brokers_broker_trade_type FROM us_munis_trades WHERE brokers_broker_trade_type IS NOT NULL GROUP BY brokers_broker_trade_type ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_trades WHERE brokers_broker_trade_type IS NOT NULL GROUP BY brokers_broker_trade_type ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_trades
  UNION ALL
  SELECT 'us_munis_trades' AS table_name, 'series_name', COUNT(*), COUNT(*) FILTER (WHERE series_name IS NULL), COUNT(*) FILTER (WHERE series_name IS NOT NULL),
         (SELECT series_name FROM us_munis_trades WHERE series_name IS NOT NULL GROUP BY series_name ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_trades WHERE series_name IS NOT NULL GROUP BY series_name ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_trades
  UNION ALL
  SELECT 'us_munis_trades' AS table_name, 'source_tfile', COUNT(*), COUNT(*) FILTER (WHERE source_tfile IS NULL), COUNT(*) FILTER (WHERE source_tfile IS NOT NULL),
         (SELECT source_tfile FROM us_munis_trades WHERE source_tfile IS NOT NULL GROUP BY source_tfile ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_trades WHERE source_tfile IS NOT NULL GROUP BY source_tfile ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_trades
  UNION ALL
  SELECT 'us_munis_trades' AS table_name, 'removed_since_tfile', COUNT(*), COUNT(*) FILTER (WHERE removed_since_tfile IS NULL), COUNT(*) FILTER (WHERE removed_since_tfile IS NOT NULL),
         (SELECT removed_since_tfile FROM us_munis_trades WHERE removed_since_tfile IS NOT NULL GROUP BY removed_since_tfile ORDER BY COUNT(*) DESC LIMIT 1), 
         (SELECT COUNT(*) FROM us_munis_trades WHERE removed_since_tfile IS NOT NULL GROUP BY removed_since_tfile ORDER BY COUNT(*) DESC LIMIT 1)
  FROM us_munis_trades
)
SELECT table_name, column_name, null_count, non_null_count, mode, mode_count
FROM text_mode
ORDER BY table_name, column_name;