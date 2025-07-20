CREATE TABLE issuers (
    issuer_id SERIAL PRIMARY KEY,
    issuer_name TEXT,
    state TEXT,
    entity_type TEXT,
    sector TEXT
);

CREATE TABLE economic_indicators (
    indicator_id SERIAL PRIMARY KEY,
    issuer_id INTEGER REFERENCES issuers(issuer_id),
    fiscal_year INTEGER,
    tax_base_av NUMERIC,
    tax_base_growth NUMERIC,
    median_household_income NUMERIC,
    population_growth NUMERIC,
    unemployment_rate NUMERIC,
    economic_diversity_index NUMERIC
);

CREATE TABLE financials (
    financial_id SERIAL PRIMARY KEY,
    issuer_id INTEGER REFERENCES issuers(issuer_id),
    fiscal_year INTEGER,
    general_fund_balance_pct NUMERIC,
    days_cash_on_hand NUMERIC,
    operating_surplus NUMERIC,
    budget_volatility_index NUMERIC,
    structural_balance_score NUMERIC
);

CREATE TABLE debt_and_liabilities (
    liability_id SERIAL PRIMARY KEY,
    issuer_id INTEGER REFERENCES issuers(issuer_id),
    fiscal_year INTEGER,
    net_direct_debt_per_capita NUMERIC,
    debt_service_pct_expenditures NUMERIC,
    npl_ratio NUMERIC,
    arc_funding_ratio NUMERIC,
    opeb_liability NUMERIC,
    debt_amortization_years NUMERIC
);

CREATE TABLE governance_and_legal (
    governance_id SERIAL PRIMARY KEY,
    issuer_id INTEGER REFERENCES issuers(issuer_id),
    pledge_type TEXT,
    legal_protections_index NUMERIC,
    management_quality_score NUMERIC,
    political_risk_index NUMERIC,
    revenue_raising_flexibility NUMERIC
);

CREATE TABLE revenue_bond_factors (
    revenue_id SERIAL PRIMARY KEY,
    issuer_id INTEGER REFERENCES issuers(issuer_id),
    dscr NUMERIC,
    usage_trend NUMERIC,
    rate_setting_flexibility NUMERIC,
    asset_essentiality_score NUMERIC,
    operating_margin NUMERIC
);

CREATE TABLE esg_factors (
    esg_id SERIAL PRIMARY KEY,
    issuer_id INTEGER REFERENCES issuers(issuer_id),
    env_risk_score NUMERIC,
    climate_resilience_score NUMERIC,
    social_stress_index NUMERIC,
    governance_risk_index NUMERIC
);

CREATE TABLE ratings (
    rating_id SERIAL PRIMARY KEY,
    issuer_id INTEGER REFERENCES issuers(issuer_id),
    agency TEXT,
    rating TEXT,
    outlook TEXT,
    rating_date DATE
);
