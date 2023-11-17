
-- Pivot one year of data by sex
SELECT FYEAR, (Unknown), (Male), (Female)
FROM (
    SELECT FYEAR, CASE WHEN SEX = 1 THEN 'Male' WHEN SEX = 2 THEN 'Female' ELSE 'Unknown' END AS Sex, 
    FROM hdis_10years.hes_apc_1819_hdis_10years
    -- Finished episodes (3)
    WHERE EPISTAT = '3'
    -- Emergency admissions
    AND ADMIMETH LIKE ('2%')
    -- Finished admission episodes only
    AND FAE = '1'
    -- First episode of spell
    AND EPIORDER = '1')
    PIVOT
    (
        SUM(FAE)
        FOR Sex IN (('Unknown'), ('Male'), ('Female'))
    )


-- Pivot on year (only one year available so only one column), by LSOA11CD and Age_group
SELECT LSOA11CD, Age_group, (FY_201819)
FROM (
    SELECT LSOA11 AS LSOA11CD, CASE WHEN FYEAR = 1819 THEN 'FY_201819' WHEN FYEAR = 1920 THEN 'FY_201920' WHEN FYEAR = 2021 THEN 'FY_202021' WHEN FYEAR = 2122 THEN 'FY_202122' WHEN FYEAR = 2223 THEN 'FY_202223' ELSE FYEAR END AS Financial_year, CASE WHEN STARTAGE_CALC BETWEEN 0 AND 4 THEN '0-4 years' WHEN STARTAGE_CALC BETWEEN 5 AND 9 THEN '5-9 years' WHEN STARTAGE_CALC BETWEEN 10 AND 14 THEN '10-14 years' WHEN STARTAGE_CALC BETWEEN 15 AND 19 THEN '15-19 years' WHEN STARTAGE_CALC BETWEEN 20 AND 24 THEN '20-24 years' WHEN STARTAGE_CALC BETWEEN 25 AND 29 THEN '25-29 years' WHEN STARTAGE_CALC BETWEEN 30 AND 34 THEN '30-34 years' WHEN STARTAGE_CALC BETWEEN 35 AND 39 THEN '35-39 years' WHEN STARTAGE_CALC BETWEEN 40 AND 44 THEN '40-44 years' WHEN STARTAGE_CALC BETWEEN 45 AND 49 THEN '45-49 years' WHEN STARTAGE_CALC BETWEEN 50 AND 54 THEN '50-54 years' WHEN STARTAGE_CALC BETWEEN 55 AND 59 THEN '55-59 years' WHEN STARTAGE_CALC BETWEEN 60 AND 64 THEN '60-64 years' WHEN STARTAGE_CALC BETWEEN 65 AND 69 THEN '65-69 years' WHEN STARTAGE_CALC BETWEEN 70 AND 74 THEN '70-74 years' WHEN STARTAGE_CALC BETWEEN 75 AND 79 THEN '75-79 years' WHEN STARTAGE_CALC BETWEEN 80 AND 84 THEN '80-84 years' WHEN STARTAGE_CALC BETWEEN 85 AND 89 THEN '85-89 years' WHEN STARTAGE_CALC BETWEEN 90 AND 120 THEN '90+ years' ELSE 'Unknown' END AS Age_group, FAE
    FROM hdis_10years.hes_apc_1819_hdis_10years
    -- Finished episodes (3)
    WHERE EPISTAT = '3'
    -- Emergency admissions
    AND ADMIMETH LIKE ('2%')
    -- Finished admission episodes only
    AND FAE = '1'
    -- First episode of spell
    AND EPIORDER = '1'
    )
    PIVOT
    (
        SUM(FAE)
        FOR FYEAR IN (('FY_201819'))
    )


SELECT *
FROM (
    SELECT LSOA11 AS LSOA11CD, CASE WHEN SEX = 1 THEN 'Male' WHEN SEX = 2 THEN 'Female' ELSE 'Unknown' END AS Sex, CASE WHEN FYEAR = 1819 THEN 'FY_201819' WHEN FYEAR = 1920 THEN 'FY_201920' WHEN FYEAR = 2021 THEN 'FY_202021' WHEN FYEAR = 2122 THEN 'FY_202122' WHEN FYEAR = 2223 THEN 'FY_202223' ELSE FYEAR END AS Financial_year, CASE WHEN STARTAGE_CALC BETWEEN 0 AND 4 THEN '0-4 years' WHEN STARTAGE_CALC BETWEEN 5 AND 9 THEN '5-9 years' WHEN STARTAGE_CALC BETWEEN 10 AND 14 THEN '10-14 years' WHEN STARTAGE_CALC BETWEEN 15 AND 19 THEN '15-19 years' WHEN STARTAGE_CALC BETWEEN 20 AND 24 THEN '20-24 years' WHEN STARTAGE_CALC BETWEEN 25 AND 29 THEN '25-29 years' WHEN STARTAGE_CALC BETWEEN 30 AND 34 THEN '30-34 years' WHEN STARTAGE_CALC BETWEEN 35 AND 39 THEN '35-39 years' WHEN STARTAGE_CALC BETWEEN 40 AND 44 THEN '40-44 years' WHEN STARTAGE_CALC BETWEEN 45 AND 49 THEN '45-49 years' WHEN STARTAGE_CALC BETWEEN 50 AND 54 THEN '50-54 years' WHEN STARTAGE_CALC BETWEEN 55 AND 59 THEN '55-59 years' WHEN STARTAGE_CALC BETWEEN 60 AND 64 THEN '60-64 years' WHEN STARTAGE_CALC BETWEEN 65 AND 69 THEN '65-69 years' WHEN STARTAGE_CALC BETWEEN 70 AND 74 THEN '70-74 years' WHEN STARTAGE_CALC BETWEEN 75 AND 79 THEN '75-79 years' WHEN STARTAGE_CALC BETWEEN 80 AND 84 THEN '80-84 years' WHEN STARTAGE_CALC BETWEEN 85 AND 89 THEN '85-89 years' WHEN STARTAGE_CALC BETWEEN 90 AND 120 THEN '90+ years' ELSE 'Unknown' END AS Age_group, FAE
    FROM hdis_10years.hes_apc_1819_hdis_10years
    -- Finished episodes (3)
    WHERE EPISTAT = '3'
    -- Emergency admissions
    AND ADMIMETH LIKE ('2%')
    -- Finished admission episodes only
    AND FAE = '1'
    -- First episode of spell
    AND EPIORDER = '1'
    UNION ALL
    SELECT LSOA11 AS LSOA11CD, CASE WHEN SEX = 1 THEN 'Male' WHEN SEX = 2 THEN 'Female' ELSE 'Unknown' END AS Sex, CASE WHEN FYEAR = 1819 THEN 'FY_201819' WHEN FYEAR = 1920 THEN 'FY_201920' WHEN FYEAR = 2021 THEN 'FY_202021' WHEN FYEAR = 2122 THEN 'FY_202122' WHEN FYEAR = 2223 THEN 'FY_202223' ELSE FYEAR END AS Financial_year, CASE WHEN STARTAGE_CALC BETWEEN 0 AND 4 THEN '0-4 years' WHEN STARTAGE_CALC BETWEEN 5 AND 9 THEN '5-9 years' WHEN STARTAGE_CALC BETWEEN 10 AND 14 THEN '10-14 years' WHEN STARTAGE_CALC BETWEEN 15 AND 19 THEN '15-19 years' WHEN STARTAGE_CALC BETWEEN 20 AND 24 THEN '20-24 years' WHEN STARTAGE_CALC BETWEEN 25 AND 29 THEN '25-29 years' WHEN STARTAGE_CALC BETWEEN 30 AND 34 THEN '30-34 years' WHEN STARTAGE_CALC BETWEEN 35 AND 39 THEN '35-39 years' WHEN STARTAGE_CALC BETWEEN 40 AND 44 THEN '40-44 years' WHEN STARTAGE_CALC BETWEEN 45 AND 49 THEN '45-49 years' WHEN STARTAGE_CALC BETWEEN 50 AND 54 THEN '50-54 years' WHEN STARTAGE_CALC BETWEEN 55 AND 59 THEN '55-59 years' WHEN STARTAGE_CALC BETWEEN 60 AND 64 THEN '60-64 years' WHEN STARTAGE_CALC BETWEEN 65 AND 69 THEN '65-69 years' WHEN STARTAGE_CALC BETWEEN 70 AND 74 THEN '70-74 years' WHEN STARTAGE_CALC BETWEEN 75 AND 79 THEN '75-79 years' WHEN STARTAGE_CALC BETWEEN 80 AND 84 THEN '80-84 years' WHEN STARTAGE_CALC BETWEEN 85 AND 89 THEN '85-89 years' WHEN STARTAGE_CALC BETWEEN 90 AND 120 THEN '90+ years' ELSE 'Unknown' END AS Age_group, FAE
    FROM hdis_10years.hes_apc_1920_hdis_10years
    -- Finished episodes (3)
    WHERE EPISTAT = '3'
    -- Emergency admissions
    AND ADMIMETH LIKE ('2%')
    -- Finished admission episodes only
    AND FAE = '1'
    -- First episode of spell
    AND EPIORDER = '1'
    UNION ALL
    SELECT LSOA11 AS LSOA11CD,  CASE WHEN SEX = 1 THEN 'Male' WHEN SEX = 2 THEN 'Female' ELSE 'Unknown' END AS Sex, CASE WHEN FYEAR = 1819 THEN 'FY_201819' WHEN FYEAR = 1920 THEN 'FY_201920' WHEN FYEAR = 2021 THEN 'FY_202021' WHEN FYEAR = 2122 THEN 'FY_202122' WHEN FYEAR = 2223 THEN 'FY_202223' ELSE FYEAR END AS Financial_year, CASE WHEN STARTAGE_CALC BETWEEN 0 AND 4 THEN '0-4 years' WHEN STARTAGE_CALC BETWEEN 5 AND 9 THEN '5-9 years' WHEN STARTAGE_CALC BETWEEN 10 AND 14 THEN '10-14 years' WHEN STARTAGE_CALC BETWEEN 15 AND 19 THEN '15-19 years' WHEN STARTAGE_CALC BETWEEN 20 AND 24 THEN '20-24 years' WHEN STARTAGE_CALC BETWEEN 25 AND 29 THEN '25-29 years' WHEN STARTAGE_CALC BETWEEN 30 AND 34 THEN '30-34 years' WHEN STARTAGE_CALC BETWEEN 35 AND 39 THEN '35-39 years' WHEN STARTAGE_CALC BETWEEN 40 AND 44 THEN '40-44 years' WHEN STARTAGE_CALC BETWEEN 45 AND 49 THEN '45-49 years' WHEN STARTAGE_CALC BETWEEN 50 AND 54 THEN '50-54 years' WHEN STARTAGE_CALC BETWEEN 55 AND 59 THEN '55-59 years' WHEN STARTAGE_CALC BETWEEN 60 AND 64 THEN '60-64 years' WHEN STARTAGE_CALC BETWEEN 65 AND 69 THEN '65-69 years' WHEN STARTAGE_CALC BETWEEN 70 AND 74 THEN '70-74 years' WHEN STARTAGE_CALC BETWEEN 75 AND 79 THEN '75-79 years' WHEN STARTAGE_CALC BETWEEN 80 AND 84 THEN '80-84 years' WHEN STARTAGE_CALC BETWEEN 85 AND 89 THEN '85-89 years' WHEN STARTAGE_CALC BETWEEN 90 AND 120 THEN '90+ years' ELSE 'Unknown' END AS Age_group, FAE
    FROM hdis_10years.hes_apc_2021_hdis_10years
    -- Finished episodes (3)
    WHERE EPISTAT = '3'
    -- Emergency admissions
    AND ADMIMETH LIKE ('2%')
    -- Finished admission episodes only
    AND FAE = '1'
    -- First episode of spell
    AND EPIORDER = '1'
        UNION ALL
    SELECT LSOA11 AS LSOA11CD,  CASE WHEN SEX = 1 THEN 'Male' WHEN SEX = 2 THEN 'Female' ELSE 'Unknown' END AS Sex, CASE WHEN FYEAR = 1819 THEN 'FY_201819' WHEN FYEAR = 1920 THEN 'FY_201920' WHEN FYEAR = 2021 THEN 'FY_202021' WHEN FYEAR = 2122 THEN 'FY_202122' WHEN FYEAR = 2223 THEN 'FY_202223' ELSE FYEAR END AS Financial_year, CASE WHEN STARTAGE_CALC BETWEEN 0 AND 4 THEN '0-4 years' WHEN STARTAGE_CALC BETWEEN 5 AND 9 THEN '5-9 years' WHEN STARTAGE_CALC BETWEEN 10 AND 14 THEN '10-14 years' WHEN STARTAGE_CALC BETWEEN 15 AND 19 THEN '15-19 years' WHEN STARTAGE_CALC BETWEEN 20 AND 24 THEN '20-24 years' WHEN STARTAGE_CALC BETWEEN 25 AND 29 THEN '25-29 years' WHEN STARTAGE_CALC BETWEEN 30 AND 34 THEN '30-34 years' WHEN STARTAGE_CALC BETWEEN 35 AND 39 THEN '35-39 years' WHEN STARTAGE_CALC BETWEEN 40 AND 44 THEN '40-44 years' WHEN STARTAGE_CALC BETWEEN 45 AND 49 THEN '45-49 years' WHEN STARTAGE_CALC BETWEEN 50 AND 54 THEN '50-54 years' WHEN STARTAGE_CALC BETWEEN 55 AND 59 THEN '55-59 years' WHEN STARTAGE_CALC BETWEEN 60 AND 64 THEN '60-64 years' WHEN STARTAGE_CALC BETWEEN 65 AND 69 THEN '65-69 years' WHEN STARTAGE_CALC BETWEEN 70 AND 74 THEN '70-74 years' WHEN STARTAGE_CALC BETWEEN 75 AND 79 THEN '75-79 years' WHEN STARTAGE_CALC BETWEEN 80 AND 84 THEN '80-84 years' WHEN STARTAGE_CALC BETWEEN 85 AND 89 THEN '85-89 years' WHEN STARTAGE_CALC BETWEEN 90 AND 120 THEN '90+ years' ELSE 'Unknown' END AS Age_group, FAE
    FROM hdis_10years.hes_apc_2122_hdis_10years
    -- Finished episodes (3)
    WHERE EPISTAT = '3'
    -- Emergency admissions
    AND ADMIMETH LIKE ('2%')
    -- Finished admission episodes only
    AND FAE = '1'
    -- First episode of spell
    AND EPIORDER = '1'
        UNION ALL
    SELECT LSOA11 AS LSOA11CD,  CASE WHEN SEX = 1 THEN 'Male' WHEN SEX = 2 THEN 'Female' ELSE 'Unknown' END AS Sex, CASE WHEN FYEAR = 1819 THEN 'FY_201819' WHEN FYEAR = 1920 THEN 'FY_201920' WHEN FYEAR = 2021 THEN 'FY_202021' WHEN FYEAR = 2122 THEN 'FY_202122' WHEN FYEAR = 2223 THEN 'FY_202223' ELSE FYEAR END AS Financial_year, CASE WHEN STARTAGE_CALC BETWEEN 0 AND 4 THEN '0-4 years' WHEN STARTAGE_CALC BETWEEN 5 AND 9 THEN '5-9 years' WHEN STARTAGE_CALC BETWEEN 10 AND 14 THEN '10-14 years' WHEN STARTAGE_CALC BETWEEN 15 AND 19 THEN '15-19 years' WHEN STARTAGE_CALC BETWEEN 20 AND 24 THEN '20-24 years' WHEN STARTAGE_CALC BETWEEN 25 AND 29 THEN '25-29 years' WHEN STARTAGE_CALC BETWEEN 30 AND 34 THEN '30-34 years' WHEN STARTAGE_CALC BETWEEN 35 AND 39 THEN '35-39 years' WHEN STARTAGE_CALC BETWEEN 40 AND 44 THEN '40-44 years' WHEN STARTAGE_CALC BETWEEN 45 AND 49 THEN '45-49 years' WHEN STARTAGE_CALC BETWEEN 50 AND 54 THEN '50-54 years' WHEN STARTAGE_CALC BETWEEN 55 AND 59 THEN '55-59 years' WHEN STARTAGE_CALC BETWEEN 60 AND 64 THEN '60-64 years' WHEN STARTAGE_CALC BETWEEN 65 AND 69 THEN '65-69 years' WHEN STARTAGE_CALC BETWEEN 70 AND 74 THEN '70-74 years' WHEN STARTAGE_CALC BETWEEN 75 AND 79 THEN '75-79 years' WHEN STARTAGE_CALC BETWEEN 80 AND 84 THEN '80-84 years' WHEN STARTAGE_CALC BETWEEN 85 AND 89 THEN '85-89 years' WHEN STARTAGE_CALC BETWEEN 90 AND 120 THEN '90+ years' ELSE 'Unknown' END AS Age_group, FAE
    FROM hdis_10years.hes_apc_2223_hdis_10years
    -- Finished episodes (3)
    WHERE EPISTAT = '3'
    -- Emergency admissions
    AND ADMIMETH LIKE ('2%')
    -- Finished admission episodes only
    AND FAE = '1'
    -- First episode of spell
    AND EPIORDER = '1'
    )
    PIVOT
    (
        SUM(FAE)
        FOR Financial_year IN (('FY_201819'), ('FY_201920'), ('FY_202021'), ('FY_202122'), ('FY_202223'))
    )