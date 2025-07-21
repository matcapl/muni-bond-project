SELECT 
    r.isin AS isin, 
    r.cusip AS cusip,
    r.issuer_name AS issuer_name,
    CASE 
        WHEN r.interest_type IN ('fixed rate', 'term rate') THEN 'RF'
        WHEN r.interest_type IN ('cab', 'cab-to-fixed', 'step rate') THEN 'RC'
        WHEN r.interest_type = 'variable rate' THEN 'RV'
        WHEN r.interest_type = 'zero rate / discount rate' OR r.coupon = 0 THEN 'RZ'
        ELSE 'RU' 
    END AS interest_type,
    CONCAT(
        'T',
        CASE WHEN r.is_amt = true THEN 'A' WHEN r.is_amt = false THEN 'B' ELSE 'C' END,
        CASE WHEN r.is_state_taxable = true THEN 'S' WHEN r.is_state_taxable = false THEN 'V' ELSE 'U' END,
        CASE WHEN r.is_federally_taxable = true THEN 'F' WHEN r.is_federally_taxable = false THEN 'G' ELSE 'H' END,
        CASE WHEN r.is_bank_qualified = true THEN 'Q' WHEN r.is_bank_qualified = false THEN 'P' ELSE 'R' END
    ) AS tax_treatment,
    CASE 
        WHEN r.is_callable = false OR r.is_callable IS NULL THEN 'CN'
        WHEN r.is_callable = true AND r.first_call_date > '2028-07-21' THEN 'CP'
        WHEN r.is_callable = true THEN 'CL'
        ELSE 'CU' 
    END AS callable_status,
    CASE 
        WHEN r.is_insured = true THEN 'I1'
        ELSE 'I0' 
    END AS insured_status,
    CASE 
        WHEN r.sector = 'local' THEN 'SL'
        WHEN r.sector = 'state' THEN 'SS'
        WHEN r.sector = 'education' THEN 'SE'
        WHEN r.sector = 'utilities' THEN 'SU'
        WHEN r.sector = 'housing' THEN 'SG'
        WHEN r.sector = 'transportation' THEN 'ST'
        WHEN r.sector = 'healthcare' THEN 'SH'
        WHEN r.sector = 'industrial' THEN 'SI'
        WHEN r.sector = 'tobacco' THEN 'SB'
        ELSE 'SK' 
    END AS sector,
    CASE 
        WHEN r.purpose = 'Education' THEN 'UE'
        WHEN r.purpose = 'Utility' THEN 'UU'
        WHEN r.purpose = 'Housing' THEN 'UG'
        WHEN r.purpose = 'Transportation' THEN 'UT'
        ELSE 'UA' 
    END AS purpose,
    CASE 
        WHEN r.source_of_repayment = 'General Obligation' THEN 'RG'
        WHEN r.source_of_repayment = 'Revenue' THEN 'RR'
        WHEN r.source_of_repayment = 'Double Barrel' THEN 'RD'
        ELSE 'RO' 
    END AS security_type,
    CASE 
        WHEN r.is_pac = true THEN 'P1'
        WHEN r.is_pac = false THEN 'P0'
        ELSE 'P2' 
    END AS pac_status,
    CASE 
        WHEN r.state = 'TX' THEN 'TX'
        WHEN r.state = 'CA' THEN 'CA'
        WHEN r.state = 'NY' THEN 'NY'
        WHEN r.state = 'MN' THEN 'MN'
        WHEN r.state = 'WI' THEN 'WI'
        WHEN r.state = 'PA' THEN 'PA'
        WHEN r.state = 'MI' THEN 'MI'
        WHEN r.state = 'IN' THEN 'IN'
        WHEN r.state = 'IL' THEN 'IL'
        WHEN r.state = 'MA' THEN 'MA'
        WHEN r.state = 'OH' THEN 'OH'
        WHEN r.state = 'NJ' THEN 'NJ'
        WHEN r.state = 'KY' THEN 'KY'
        WHEN r.state = 'FL' THEN 'FL'
        WHEN r.state = 'IA' THEN 'IA'
        WHEN r.state = 'WA' THEN 'WA'
        WHEN r.state = 'KS' THEN 'KS'
        WHEN r.state = 'CO' THEN 'CO'
        WHEN r.state = 'CT' THEN 'CT'
        WHEN r.state = 'VA' THEN 'VA'
        WHEN r.state = 'MO' THEN 'MO'
        WHEN r.state = 'TN' THEN 'TN'
        WHEN r.state = 'AZ' THEN 'AZ'
        WHEN r.state = 'MD' THEN 'MD'
        WHEN r.state = 'OR' THEN 'OR'
        WHEN r.state = 'AL' THEN 'AL'
        WHEN r.state = 'GA' THEN 'GA'
        WHEN r.state = 'NE' THEN 'NE'
        WHEN r.state = 'NC' THEN 'NC'
        WHEN r.state = 'SC' THEN 'SC'
        WHEN r.state = 'LA' THEN 'LA'
        WHEN r.state = 'OK' THEN 'OK'
        WHEN r.state = 'UT' THEN 'UT'
        WHEN r.state = 'NM' THEN 'NM'
        WHEN r.state = 'ND' THEN 'ND'
        WHEN r.state = 'ME' THEN 'ME'
        WHEN r.state = 'NV' THEN 'NV'
        WHEN r.state = 'MS' THEN 'MS'
        WHEN r.state = 'SD' THEN 'SD'
        WHEN r.state = 'RI' THEN 'RI'
        WHEN r.state = 'NH' THEN 'NH'
        WHEN r.state = 'MT' THEN 'MT'
        WHEN r.state = 'ID' THEN 'ID'
        WHEN r.state = 'AR' THEN 'AR'
        WHEN r.state = 'WV' THEN 'WV'
        WHEN r.state = 'HI' THEN 'HI'
        WHEN r.state = 'AK' THEN 'AK'
        WHEN r.state = 'VT' THEN 'VT'
        WHEN r.state = 'DC' THEN 'DC'
        WHEN r.state = 'DE' THEN 'DE'
        WHEN r.state = 'WY' THEN 'WY'
        WHEN r.state = 'GU' THEN 'GU'
        WHEN r.state = 'PR' THEN 'PR'
        WHEN r.state = 'VI' THEN 'VI'
        WHEN r.state = 'NA' THEN 'NA'
        ELSE 'UK' 
    END AS state,
    COALESCE(p.msrb_yield, p.ytm_semi_annual, p.ytc_semi_annual) AS yield_best,
    CASE 
        WHEN r.interest_type IN ('fixed rate', 'term rate', 'cab', 'cab-to-fixed', 'step rate') THEN 
            EXTRACT(YEAR FROM AGE(LEAST(r.maturity_date, COALESCE(r.first_call_date, r.maturity_date)), '2025-07-21'))
        WHEN r.interest_type = 'variable rate' THEN 1
        WHEN r.interest_type = 'zero rate / discount rate' THEN EXTRACT(YEAR FROM AGE(r.maturity_date, '2025-07-21'))
        ELSE NULL 
    END AS duration_eff,
    r.issued_amount AS size_outstanding,
    COALESCE((
        SELECT LEAST(20::double precision, FLOOR((LOG(COALESCE(r.issued_amount, 0) + 1) / 10 + COUNT(*) / 1000 + AVG(COALESCE(t.amount, 0)) / 10000000) * 20))
        FROM us_munis_trades t
        WHERE t.cusip = r.cusip
    ), 1) AS liquidity_score,
    COALESCE(r.composite_rating, r.rating_group) AS credit_tag,
    CONCAT(
        (CASE 
            WHEN r.interest_type IN ('fixed rate', 'term rate') THEN 'RF'
            WHEN r.interest_type IN ('cab', 'cab-to-fixed', 'step rate') THEN 'RC'
            WHEN r.interest_type = 'variable rate' THEN 'RV'
            WHEN r.interest_type = 'zero rate / discount rate' OR r.coupon = 0 THEN 'RZ'
            ELSE 'RU' 
        END),
        (CONCAT(
            'T',
            CASE WHEN r.is_amt = true THEN 'A' WHEN r.is_amt = false THEN 'B' ELSE 'C' END,
            CASE WHEN r.is_state_taxable = true THEN 'S' WHEN r.is_state_taxable = false THEN 'V' ELSE 'U' END,
            CASE WHEN r.is_federally_taxable = true THEN 'F' WHEN r.is_federally_taxable = false THEN 'G' ELSE 'H' END,
            CASE WHEN r.is_bank_qualified = true THEN 'Q' WHEN r.is_bank_qualified = false THEN 'P' ELSE 'R' END
        )),
        (CASE 
            WHEN r.is_callable = false OR r.is_callable IS NULL THEN 'CN'
            WHEN r.is_callable = true AND r.first_call_date > '2028-07-21' THEN 'CP'
            WHEN r.is_callable = true THEN 'CL'
            ELSE 'CU' 
        END),
        (CASE 
            WHEN r.is_insured = true THEN 'I1'
            ELSE 'I0' 
        END),
        (CASE 
            WHEN r.sector = 'local' THEN 'SL'
            WHEN r.sector = 'state' THEN 'SS'
            WHEN r.sector = 'education' THEN 'SE'
            WHEN r.sector = 'utilities' THEN 'SU'
            WHEN r.sector = 'housing' THEN 'SG'
            WHEN r.sector = 'transportation' THEN 'ST'
            WHEN r.sector = 'healthcare' THEN 'SH'
            WHEN r.sector = 'industrial' THEN 'SI'
            WHEN r.sector = 'tobacco' THEN 'SB'
            ELSE 'SK' 
        END),
        (CASE 
            WHEN r.purpose = 'Education' THEN 'UE'
            WHEN r.purpose = 'Utility' THEN 'UU'
            WHEN r.purpose = 'Housing' THEN 'UG'
            WHEN r.purpose = 'Transportation' THEN 'UT'
            ELSE 'UA' 
        END),
        (CASE 
            WHEN r.source_of_repayment = 'General Obligation' THEN 'RG'
            WHEN r.source_of_repayment = 'Revenue' THEN 'RR'
            WHEN r.source_of_repayment = 'Double Barrel' THEN 'RD'
            ELSE 'RO' 
        END),
        (CASE 
            WHEN r.is_pac = true THEN 'P1'
            WHEN r.is_pac = false THEN 'P0'
            ELSE 'P2' 
        END),
        (CASE 
            WHEN r.state = 'TX' THEN 'TX'
            WHEN r.state = 'CA' THEN 'CA'
            WHEN r.state = 'NY' THEN 'NY'
            WHEN r.state = 'MN' THEN 'MN'
            WHEN r.state = 'WI' THEN 'WI'
            WHEN r.state = 'PA' THEN 'PA'
            WHEN r.state = 'MI' THEN 'MI'
            WHEN r.state = 'IN' THEN 'IN'
            WHEN r.state = 'IL' THEN 'IL'
            WHEN r.state = 'MA' THEN 'MA'
            WHEN r.state = 'OH' THEN 'OH'
            WHEN r.state = 'NJ' THEN 'NJ'
            WHEN r.state = 'KY' THEN 'KY'
            WHEN r.state = 'FL' THEN 'FL'
            WHEN r.state = 'IA' THEN 'IA'
            WHEN r.state = 'WA' THEN 'WA'
            WHEN r.state = 'KS' THEN 'KS'
            WHEN r.state = 'CO' THEN 'CO'
            WHEN r.state = 'CT' THEN 'CT'
            WHEN r.state = 'VA' THEN 'VA'
            WHEN r.state = 'MO' THEN 'MO'
            WHEN r.state = 'TN' THEN 'TN'
            WHEN r.state = 'AZ' THEN 'AZ'
            WHEN r.state = 'MD' THEN 'MD'
            WHEN r.state = 'OR' THEN 'OR'
            WHEN r.state = 'AL' THEN 'AL'
            WHEN r.state = 'GA' THEN 'GA'
            WHEN r.state = 'NE' THEN 'NE'
            WHEN r.state = 'NC' THEN 'NC'
            WHEN r.state = 'SC' THEN 'SC'
            WHEN r.state = 'LA' THEN 'LA'
            WHEN r.state = 'OK' THEN 'OK'
            WHEN r.state = 'UT' THEN 'UT'
            WHEN r.state = 'NM' THEN 'NM'
            WHEN r.state = 'ND' THEN 'ND'
            WHEN r.state = 'ME' THEN 'ME'
            WHEN r.state = 'NV' THEN 'NV'
            WHEN r.state = 'MS' THEN 'MS'
            WHEN r.state = 'SD' THEN 'SD'
            WHEN r.state = 'RI' THEN 'RI'
            WHEN r.state = 'NH' THEN 'NH'
            WHEN r.state = 'MT' THEN 'MT'
            WHEN r.state = 'ID' THEN 'ID'
            WHEN r.state = 'AR' THEN 'AR'
            WHEN r.state = 'WV' THEN 'WV'
            WHEN r.state = 'HI' THEN 'HI'
            WHEN r.state = 'AK' THEN 'AK'
            WHEN r.state = 'VT' THEN 'VT'
            WHEN r.state = 'DC' THEN 'DC'
            WHEN r.state = 'DE' THEN 'DE'
            WHEN r.state = 'WY' THEN 'WY'
            WHEN r.state = 'GU' THEN 'GU'
            WHEN r.state = 'PR' THEN 'PR'
            WHEN r.state = 'VI' THEN 'VI'
            WHEN r.state = 'NA' THEN 'NA'
            ELSE 'UK' 
        END)
    ) AS bucket_string
FROM us_munis_reference r
LEFT JOIN us_munis_pricing p ON r.isin = p.isin
LEFT JOIN us_munis_trades t ON r.cusip = t.cusip
WHERE r.isin = %s OR r.cusip = %s
LIMIT 1;