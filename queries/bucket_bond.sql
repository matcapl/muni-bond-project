SELECT 
    r.isin, 
    r.cusip,
    -- Level 1: Structure
    CASE 
        WHEN r.interest_type IN ('fixed rate', 'term rate') THEN 'I_FX'
        WHEN r.interest_type IN ('cab', 'cab-to-fixed', 'step rate') THEN 'I_CB'
        WHEN r.interest_type = 'variable rate' THEN 'I_VR'
        WHEN r.interest_type = 'zero rate / discount rate' OR r.coupon = 0 THEN 'I_ZR'
        ELSE 'I_UK' 
    END AS interest_type,
    CASE 
        WHEN r.is_amt = true AND r.is_federally_taxable = true THEN 'T_AF'
        WHEN r.is_amt = true AND (r.is_federally_taxable = false OR r.is_federally_taxable IS NULL) THEN 'T_AM'
        WHEN (r.is_amt = false OR r.is_amt IS NULL) AND r.is_federally_taxable = true THEN 'T_XB'
        WHEN (r.is_amt = false OR r.is_amt IS NULL) AND (r.is_federally_taxable = false OR r.is_federally_taxable IS NULL) THEN 'T_EX'
        ELSE 'T_UK' 
    END AS tax_treatment,
    CASE 
        WHEN r.is_callable = false OR r.is_callable IS NULL THEN 'C_NC'
        WHEN r.is_callable = true AND r.first_call_date > '2028-07-20' THEN 'C_CP'
        WHEN r.is_callable = true THEN 'C_CC'
    END AS callable_status,
    CASE 
        WHEN r.is_insured = true THEN 'I_YE'
        ELSE 'I_NO' 
    END AS insured_status,
    CASE 
        WHEN r.is_bank_qualified = true THEN 'B_YE'
        ELSE 'B_NO' 
    END AS bank_qualified_status,
    -- Level 2: Cash-Flows
    CASE 
        WHEN r.sector = 'local' THEN 'S_LO'
        WHEN r.sector = 'state' THEN 'S_ST'
        WHEN r.sector = 'education' THEN 'S_ED'
        WHEN r.sector = 'utilities' THEN 'S_UT'
        WHEN r.sector = 'housing' THEN 'S_HO'
        WHEN r.sector = 'transportation' THEN 'S_TR'
        WHEN r.sector = 'healthcare' THEN 'S_HE'
        WHEN r.sector = 'industrial' THEN 'S_IN'
        WHEN r.sector = 'tobacco' THEN 'S_TO'
        ELSE 'S_UK' 
    END AS sector,
    CASE 
        WHEN r.purpose = 'Education' THEN 'P_ED'
        WHEN r.purpose = 'Utility' THEN 'P_UT'
        WHEN r.purpose = 'Housing' THEN 'P_HO'
        WHEN r.purpose = 'Transportation' THEN 'P_TR'
        ELSE 'P_OT' 
    END AS purpose,
    CASE 
        WHEN r.source_of_repayment = 'General Obligation' THEN 'R_GO'
        WHEN r.source_of_repayment = 'Revenue' THEN 'R_RV'
        WHEN r.source_of_repayment = 'Double Barrel' THEN 'R_DB'
        ELSE 'R_OT' 
    END AS security_type,
    -- Level 3: Location
    CASE 
        WHEN r.state = 'TX' THEN 'S_TX'
        WHEN r.state = 'CA' THEN 'S_CA'
        WHEN r.state = 'NY' THEN 'S_NY'
        WHEN r.state = 'MN' THEN 'S_MN'
        WHEN r.state = 'WI' THEN 'S_WI'
        WHEN r.state = 'PA' THEN 'S_PA'
        WHEN r.state = 'MI' THEN 'S_MI'
        WHEN r.state = 'IN' THEN 'S_IN'
        WHEN r.state = 'IL' THEN 'S_IL'
        WHEN r.state = 'MA' THEN 'S_MA'
        WHEN r.state = 'OH' THEN 'S_OH'
        WHEN r.state = 'NJ' THEN 'S_NJ'
        WHEN r.state = 'KY' THEN 'S_KY'
        WHEN r.state = 'FL' THEN 'S_FL'
        WHEN r.state = 'IA' THEN 'S_IA'
        WHEN r.state = 'WA' THEN 'S_WA'
        WHEN r.state = 'KS' THEN 'S_KS'
        WHEN r.state = 'CO' THEN 'S_CO'
        WHEN r.state = 'CT' THEN 'S_CT'
        WHEN r.state = 'VA' THEN 'S_VA'
        WHEN r.state = 'MO' THEN 'S_MO'
        WHEN r.state = 'TN' THEN 'S_TN'
        WHEN r.state = 'AZ' THEN 'S_AZ'
        WHEN r.state = 'MD' THEN 'S_MD'
        WHEN r.state = 'OR' THEN 'S_OR'
        WHEN r.state = 'AL' THEN 'S_AL'
        WHEN r.state = 'GA' THEN 'S_GA'
        WHEN r.state = 'NE' THEN 'S_NE'
        WHEN r.state = 'NC' THEN 'S_NC'
        WHEN r.state = 'SC' THEN 'S_SC'
        WHEN r.state = 'LA' THEN 'S_LA'
        WHEN r.state = 'OK' THEN 'S_OK'
        WHEN r.state = 'UT' THEN 'S_UT'
        WHEN r.state = 'NM' THEN 'S_NM'
        WHEN r.state = 'ND' THEN 'S_ND'
        WHEN r.state = 'ME' THEN 'S_ME'
        WHEN r.state = 'NV' THEN 'S_NV'
        WHEN r.state = 'MS' THEN 'S_MS'
        WHEN r.state = 'SD' THEN 'S_SD'
        WHEN r.state = 'RI' THEN 'S_RI'
        WHEN r.state = 'NH' THEN 'S_NH'
        WHEN r.state = 'MT' THEN 'S_MT'
        WHEN r.state = 'ID' THEN 'S_ID'
        WHEN r.state = 'AR' THEN 'S_AR'
        WHEN r.state = 'WV' THEN 'S_WV'
        WHEN r.state = 'HI' THEN 'S_HI'
        WHEN r.state = 'AK' THEN 'S_AK'
        WHEN r.state = 'VT' THEN 'S_VT'
        WHEN r.state = 'DC' THEN 'S_DC'
        WHEN r.state = 'DE' THEN 'S_DE'
        WHEN r.state = 'WY' THEN 'S_WY'
        WHEN r.state = 'GU' THEN 'S_GU'
        WHEN r.state = 'PR' THEN 'S_PR'
        WHEN r.state = 'VI' THEN 'S_VI'
        WHEN r.state = 'NA' THEN 'S_NA'
        ELSE 'S_UK' 
    END AS state,
    -- Standalone Fields
    COALESCE(p.msrb_yield, p.ytm_semi_annual, p.ytc_semi_annual) AS yield_best,
    CASE 
        WHEN r.interest_type IN ('fixed rate', 'term rate', 'cab', 'cab-to-fixed', 'step rate') THEN 
            EXTRACT(YEAR FROM AGE(LEAST(r.maturity_date, COALESCE(r.first_call_date, r.maturity_date)), '2025-07-20'))
        WHEN r.interest_type = 'variable rate' THEN 1
        WHEN r.interest_type = 'zero rate / discount rate' THEN EXTRACT(YEAR FROM AGE(r.maturity_date, '2025-07-20'))
        ELSE NULL 
    END AS duration_eff,
    r.issued_amount AS size_outstanding,
    COALESCE((
        SELECT LEAST(20::double precision, FLOOR((LOG(COALESCE(r.issued_amount, 0) + 1) / 10 + COUNT(*) / 1000 + AVG(COALESCE(t.amount, 0)) / 10000000) * 20))
        FROM us_munis_trades t
        WHERE t.cusip = r.cusip
    ), 1) AS liquidity_score,
    COALESCE(r.composite_rating, r.rating_group) AS credit_tag
FROM us_munis_reference r
LEFT JOIN us_munis_pricing p ON r.isin = p.isin
WHERE r.isin = %s OR r.cusip = %s
LIMIT 1;