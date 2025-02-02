-- Emergency hospital admissions for asthma

--- this analysis replicates the fingertips indicator: 90810 - Hospital admissions for asthma (under 19 years)

(SELECT    
    'National' AS areatype,
    'England' AS area,
    '202122' AS timeperiod,
    t1.fyear AS financial_year,
    SUM(t1.fae) AS admissions
FROM hdis_10years.hes_apc_2122_hdis_10years t1
    WHERE t1.EPIORDER = 1
    AND t1.ADMIMETH LIKE '2%'
    AND t1.STARTAGE_CALC <19
    AND t1.EPISTAT IN ('1', '3')
    AND t1.SEX IN ('1', '2')
    AND t1.CLASSPAT = '1'
    AND t1.EPITYPE = '1'
    AND t1.RESLADST_ONS RLIKE ('E|U')
    AND t1.DIAG_3_01 IN ('J45', 'J46')
GROUP BY t1.fyear
);

---- analysis
-- emergency hospital admissions
-- among persons aged 0-18 years
-- with primary diagnosis of asthma J45 or J46

(SELECT    
    '202223' AS timeperiod,
    t1.fyear AS financial_year,
    'National' AS areatype,
    'England' AS areacode,
    ---CASE WHEN t1.SEX = 1 THEN 'Male' WHEN t1.SEX = 2 THEN 'Female' ELSE 'Unknown' END AS sex,
     SUM(t1.fae) AS admission_episodes
    FROM hdis_10years.hes_apc_2223_hdis_10years t1
    WHERE t1.EPIORDER = 1
    AND t1.ADMIMETH LIKE '2%'
    AND t1.STARTAGE_CALC <19
    AND t1.EPISTAT IN ('1', '3')
    AND t1.SEX IN ('1', '2')
    AND t1.CLASSPAT = '1'
    AND t1.EPITYPE = '1'
    AND t1.RESLADST_ONS RLIKE ('E|U')
    AND t1.DIAG_3_01 IN ('J45', 'J46')
GROUP BY t1.fyear
)

--- counties
UNION(SELECT    
    '202223' AS timeperiod,
    t1.fyear AS financial_year,
    'Resident CTY' AS areatype,
    t1.RESCTY_ONS AS areacode,
    ---CASE WHEN t1.SEX = 1 THEN 'Male' WHEN t1.SEX = 2 THEN 'Female' ELSE 'Unknown' END AS sex,
     SUM(t1.fae) AS admission_episodes
    FROM hdis_10years.hes_apc_2223_hdis_10years t1
    WHERE t1.EPIORDER = 1
    AND t1.ADMIMETH LIKE '2%'
    AND t1.STARTAGE_CALC <19
    AND t1.EPISTAT IN ('1', '3')
    AND t1.SEX IN ('1', '2')
    AND t1.CLASSPAT = '1'
    AND t1.EPITYPE = '1'
    AND t1.RESLADST_ONS RLIKE ('E|U')
    AND t1.DIAG_3_01 IN ('J45', 'J46')
GROUP BY t1.fyear, t1.RESCTY_ONS
)

--- lsoas
UNION(SELECT    
    '202223' AS timeperiod,
    t1.fyear AS financial_year,
    'LSOA' AS areatype,
    t1.LSOA11 AS areacode,
    ---CASE WHEN t1.SEX = 1 THEN 'Male' WHEN t1.SEX = 2 THEN 'Female' ELSE 'Unknown' END AS sex,
     SUM(t1.fae) AS admission_episodes
    FROM hdis_10years.hes_apc_2223_hdis_10years t1
    WHERE t1.EPIORDER = 1
    AND t1.ADMIMETH LIKE '2%'
    AND t1.STARTAGE_CALC <19
    AND t1.EPISTAT IN ('1', '3')
    AND t1.SEX IN ('1', '2')
    AND t1.CLASSPAT = '1'
    AND t1.EPITYPE = '1'
    AND t1.RESLADST_ONS RLIKE ('E|U')
    AND t1.DIAG_3_01 IN ('J45', 'J46')
GROUP BY t1.fyear, t1.LSOA11
);