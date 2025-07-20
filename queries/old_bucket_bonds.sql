SELECT r.isin, r.rating_group, p.ytm_semi_annual, r.is_callable
FROM us_munis_reference r
JOIN us_munis_pricing p ON r.isin = p.isin
WHERE r.rating_group IN ('AAA', 'AA')
  AND p.ytm_semi_annual BETWEEN 2 AND 4
  AND r.is_callable = TRUE;