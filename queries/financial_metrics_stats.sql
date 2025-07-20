-- us_munis_pricing financial columns
SELECT 'us_munis_pricing' AS table_name, 'price' AS column_name,
       MIN(price) AS min_val, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price) AS median_val,
       MODE() WITHIN GROUP (ORDER BY price) AS mode_val, MAX(price) AS max_val,
       COUNT(*) FILTER (WHERE price IS NULL) AS null_count,
       COUNT(*) FILTER (WHERE price = 0) AS zero_count,
       COUNT(*) FILTER (WHERE price IS NOT NULL AND price != 0) AS non_zero_count
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'amount' AS column_name,
       MIN(amount), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY amount),
       MODE() WITHIN GROUP (ORDER BY amount), MAX(amount),
       COUNT(*) FILTER (WHERE amount IS NULL),
       COUNT(*) FILTER (WHERE amount = 0),
       COUNT(*) FILTER (WHERE amount IS NOT NULL AND amount != 0)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'msrb_yield' AS column_name,
       MIN(msrb_yield), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY msrb_yield),
       MODE() WITHIN GROUP (ORDER BY msrb_yield), MAX(msrb_yield),
       COUNT(*) FILTER (WHERE msrb_yield IS NULL),
       COUNT(*) FILTER (WHERE msrb_yield = 0),
       COUNT(*) FILTER (WHERE msrb_yield IS NOT NULL AND msrb_yield != 0)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'ytm_continuous' AS column_name,
       MIN(ytm_continuous), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ytm_continuous),
       MODE() WITHIN GROUP (ORDER BY ytm_continuous), MAX(ytm_continuous),
       COUNT(*) FILTER (WHERE ytm_continuous IS NULL),
       COUNT(*) FILTER (WHERE ytm_continuous = 0),
       COUNT(*) FILTER (WHERE ytm_continuous IS NOT NULL AND ytm_continuous != 0)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'ytm_semi_annual' AS column_name,
       MIN(ytm_semi_annual), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ytm_semi_annual),
       MODE() WITHIN GROUP (ORDER BY ytm_semi_annual), MAX(ytm_semi_annual),
       COUNT(*) FILTER (WHERE ytm_semi_annual IS NULL),
       COUNT(*) FILTER (WHERE ytm_semi_annual = 0),
       COUNT(*) FILTER (WHERE ytm_semi_annual IS NOT NULL AND ytm_semi_annual != 0)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'ytm_money_market' AS column_name,
       MIN(ytm_money_market), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ytm_money_market),
       MODE() WITHIN GROUP (ORDER BY ytm_money_market), MAX(ytm_money_market),
       COUNT(*) FILTER (WHERE ytm_money_market IS NULL),
       COUNT(*) FILTER (WHERE ytm_money_market = 0),
       COUNT(*) FILTER (WHERE ytm_money_market IS NOT NULL AND ytm_money_market != 0)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'ytc_continuous' AS column_name,
       MIN(ytc_continuous), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ytc_continuous),
       MODE() WITHIN GROUP (ORDER BY ytc_continuous), MAX(ytc_continuous),
       COUNT(*) FILTER (WHERE ytc_continuous IS NULL),
       COUNT(*) FILTER (WHERE ytc_continuous = 0),
       COUNT(*) FILTER (WHERE ytc_continuous IS NOT NULL AND ytc_continuous != 0)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'ytc_semi_annual' AS column_name,
       MIN(ytc_semi_annual), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ytc_semi_annual),
       MODE() WITHIN GROUP (ORDER BY ytc_semi_annual), MAX(ytc_semi_annual),
       COUNT(*) FILTER (WHERE ytc_semi_annual IS NULL),
       COUNT(*) FILTER (WHERE ytc_semi_annual = 0),
       COUNT(*) FILTER (WHERE ytc_semi_annual IS NOT NULL AND ytc_semi_annual != 0)
FROM us_munis_pricing
UNION ALL
SELECT 'us_munis_pricing' AS table_name, 'ytc_money_market' AS column_name,
       MIN(ytc_money_market), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ytc_money_market),
       MODE() WITHIN GROUP (ORDER BY ytc_money_market), MAX(ytc_money_market),
       COUNT(*) FILTER (WHERE ytc_money_market IS NULL),
       COUNT(*) FILTER (WHERE ytc_money_market = 0),
       COUNT(*) FILTER (WHERE ytc_money_market IS NOT NULL AND ytc_money_market != 0)
FROM us_munis_pricing
UNION ALL
-- us_munis_reference financial columns
SELECT 'us_munis_reference' AS table_name, 'coupon' AS column_name,
       MIN(coupon), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY coupon),
       MODE() WITHIN GROUP (ORDER BY coupon), MAX(coupon),
       COUNT(*) FILTER (WHERE coupon IS NULL),
       COUNT(*) FILTER (WHERE coupon = 0),
       COUNT(*) FILTER (WHERE coupon IS NOT NULL AND coupon != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'minimum_denomination' AS column_name,
       MIN(minimum_denomination), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY minimum_denomination),
       MODE() WITHIN GROUP (ORDER BY minimum_denomination), MAX(minimum_denomination),
       COUNT(*) FILTER (WHERE minimum_denomination IS NULL),
       COUNT(*) FILTER (WHERE minimum_denomination = 0),
       COUNT(*) FILTER (WHERE minimum_denomination IS NOT NULL AND minimum_denomination != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'issued_amount' AS column_name,
       MIN(issued_amount), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY issued_amount),
       MODE() WITHIN GROUP (ORDER BY issued_amount), MAX(issued_amount),
       COUNT(*) FILTER (WHERE issued_amount IS NULL),
       COUNT(*) FILTER (WHERE issued_amount = 0),
       COUNT(*) FILTER (WHERE issued_amount IS NOT NULL AND issued_amount != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'issue_yield' AS column_name,
       MIN(issue_yield), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY issue_yield),
       MODE() WITHIN GROUP (ORDER BY issue_yield), MAX(issue_yield),
       COUNT(*) FILTER (WHERE issue_yield IS NULL),
       COUNT(*) FILTER (WHERE issue_yield = 0),
       COUNT(*) FILTER (WHERE issue_yield IS NOT NULL AND issue_yield != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'issue_price' AS column_name,
       MIN(issue_price), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY issue_price),
       MODE() WITHIN GROUP (ORDER BY issue_price), MAX(issue_price),
       COUNT(*) FILTER (WHERE issue_price IS NULL),
       COUNT(*) FILTER (WHERE issue_price = 0),
       COUNT(*) FILTER (WHERE issue_price IS NOT NULL AND issue_price != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'integral_multiple' AS column_name,
       MIN(integral_multiple), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY integral_multiple),
       MODE() WITHIN GROUP (ORDER BY integral_multiple), MAX(integral_multiple),
       COUNT(*) FILTER (WHERE integral_multiple IS NULL),
       COUNT(*) FILTER (WHERE integral_multiple = 0),
       COUNT(*) FILTER (WHERE integral_multiple IS NOT NULL AND integral_multiple != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_ultimate_rate' AS column_name,
       MIN(interest_ultimate_rate), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY interest_ultimate_rate),
       MODE() WITHIN GROUP (ORDER BY interest_ultimate_rate), MAX(interest_ultimate_rate),
       COUNT(*) FILTER (WHERE interest_ultimate_rate IS NULL),
       COUNT(*) FILTER (WHERE interest_ultimate_rate = 0),
       COUNT(*) FILTER (WHERE interest_ultimate_rate IS NOT NULL AND interest_ultimate_rate != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_maximum_rate' AS column_name,
       MIN(interest_maximum_rate), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY interest_maximum_rate),
       MODE() WITHIN GROUP (ORDER BY interest_maximum_rate), MAX(interest_maximum_rate),
       COUNT(*) FILTER (WHERE interest_maximum_rate IS NULL),
       COUNT(*) FILTER (WHERE interest_maximum_rate = 0),
       COUNT(*) FILTER (WHERE interest_maximum_rate IS NOT NULL AND interest_maximum_rate != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'interest_minimum_rate' AS column_name,
       MIN(interest_minimum_rate), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY interest_minimum_rate),
       MODE() WITHIN GROUP (ORDER BY interest_minimum_rate), MAX(interest_minimum_rate),
       COUNT(*) FILTER (WHERE interest_minimum_rate IS NULL),
       COUNT(*) FILTER (WHERE interest_minimum_rate = 0),
       COUNT(*) FILTER (WHERE interest_minimum_rate IS NOT NULL AND interest_minimum_rate != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'outstanding_amount' AS column_name,
       MIN(outstanding_amount), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY outstanding_amount),
       MODE() WITHIN GROUP (ORDER BY outstanding_amount), MAX(outstanding_amount),
       COUNT(*) FILTER (WHERE outstanding_amount IS NULL),
       COUNT(*) FILTER (WHERE outstanding_amount = 0),
       COUNT(*) FILTER (WHERE outstanding_amount IS NOT NULL AND outstanding_amount != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'series_issued_amount' AS column_name,
       MIN(series_issued_amount), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY series_issued_amount),
       MODE() WITHIN GROUP (ORDER BY series_issued_amount), MAX(series_issued_amount),
       COUNT(*) FILTER (WHERE series_issued_amount IS NULL),
       COUNT(*) FILTER (WHERE series_issued_amount = 0),
       COUNT(*) FILTER (WHERE series_issued_amount IS NOT NULL AND series_issued_amount != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'maturity_amount' AS column_name,
       MIN(maturity_amount), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY maturity_amount),
       MODE() WITHIN GROUP (ORDER BY maturity_amount), MAX(maturity_amount),
       COUNT(*) FILTER (WHERE maturity_amount IS NULL),
       COUNT(*) FILTER (WHERE maturity_amount = 0),
       COUNT(*) FILTER (WHERE maturity_amount IS NOT NULL AND maturity_amount != 0)
FROM us_munis_reference
UNION ALL
SELECT 'us_munis_reference' AS table_name, 'emma_issued_amount' AS column_name,
       MIN(emma_issued_amount), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY emma_issued_amount),
       MODE() WITHIN GROUP (ORDER BY emma_issued_amount), MAX(emma_issued_amount),
       COUNT(*) FILTER (WHERE emma_issued_amount IS NULL),
       COUNT(*) FILTER (WHERE emma_issued_amount = 0),
       COUNT(*) FILTER (WHERE emma_issued_amount IS NOT NULL AND emma_issued_amount != 0)
FROM us_munis_reference
UNION ALL
-- us_munis_trades financial columns
SELECT 'us_munis_trades' AS table_name, 'price' AS column_name,
       MIN(price), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price),
       MODE() WITHIN GROUP (ORDER BY price), MAX(price),
       COUNT(*) FILTER (WHERE price IS NULL),
       COUNT(*) FILTER (WHERE price = 0),
       COUNT(*) FILTER (WHERE price IS NOT NULL AND price != 0)
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'yield' AS column_name,
       MIN(yield), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY yield),
       MODE() WITHIN GROUP (ORDER BY yield), MAX(yield),
       COUNT(*) FILTER (WHERE yield IS NULL),
       COUNT(*) FILTER (WHERE yield = 0),
       COUNT(*) FILTER (WHERE yield IS NOT NULL AND yield != 0)
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'amount' AS column_name,
       MIN(amount), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY amount),
       MODE() WITHIN GROUP (ORDER BY amount), MAX(amount),
       COUNT(*) FILTER (WHERE amount IS NULL),
       COUNT(*) FILTER (WHERE amount = 0),
       COUNT(*) FILTER (WHERE amount IS NOT NULL AND amount != 0)
FROM us_munis_trades
UNION ALL
SELECT 'us_munis_trades' AS table_name, 'coupon' AS column_name,
       MIN(coupon), PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY coupon),
       MODE() WITHIN GROUP (ORDER BY coupon), MAX(coupon),
       COUNT(*) FILTER (WHERE coupon IS NULL),
       COUNT(*) FILTER (WHERE coupon = 0),
       COUNT(*) FILTER (WHERE coupon IS NOT NULL AND coupon != 0)
FROM us_munis_trades
ORDER BY table_name, column_name;