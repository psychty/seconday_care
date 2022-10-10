SELECT FYEAR, EPIKEY, PSEUDO_HESID, ADMIDATE, DISDATE, ADMIMETH, DISMETH, SPELDUR, CAUSE_3, CAUSE_4, DIAG_3_CONCAT, DIAG_3_01, DIAG_3_02, DIAG_3_03, DIAG_3_04, DIAG_3_05, DIAG_3_06, DIAG_3_07, DIAG_3_08, DIAG_3_09, DIAG_3_10, DIAG_3_11, DIAG_3_12, DIAG_3_13, DIAG_3_14, DIAG_3_15, DIAG_3_16, DIAG_3_17, DIAG_3_18, DIAG_3_19, DIAG_3_20, DIAG_4_CONCAT, DIAG_4_01, DIAG_4_02, DIAG_4_03, DIAG_4_04, DIAG_4_05, DIAG_4_06, DIAG_4_07, DIAG_4_08, DIAG_4_09, DIAG_4_10, DIAG_4_11, DIAG_4_12, DIAG_4_13, DIAG_4_14, DIAG_4_15, DIAG_4_16, DIAG_4_17, DIAG_4_18, DIAG_4_19, DIAG_4_20, DIAG_COUNT, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS AS ETHNICITY, FAE, FCE, FDE, RESLADST_ONS, SEX,  CASE WHEN STARTAGE_CALC BETWEEN 0 AND 15 THEN '0-15 years' WHEN STARTAGE_CALC BETWEEN 16 AND  24 THEN '16-24 years' WHEN STARTAGE_CALC BETWEEN  25 AND  34 THEN '25-34 years' WHEN STARTAGE_CALC BETWEEN  35 AND  44 THEN '35-44 years' WHEN STARTAGE_CALC BETWEEN  45 AND  54 THEN '45-54 years' WHEN STARTAGE_CALC BETWEEN  55 AND  64 THEN '55-64 years' WHEN STARTAGE_CALC BETWEEN  65 AND  74 THEN '65-74 years' WHEN STARTAGE_CALC BETWEEN  75 AND  84 THEN '75-84 years' WHEN STARTAGE_CALC BETWEEN  85 AND 150 THEN '85 and over' ELSE 'Unknown' END AS Age_group, STARTAGE_CALC, LSOA11, MSOA11, GPPRAC
FROM hes.hes_apc_1920
-- Finished episodes (3)
WHERE EPISTAT = '3'
-- Ordinary admission (1), day case (2) or maternity (5)
AND CLASSPAT IN ('1','2','5')
-- Finished admission episode 
AND FAE = 1
-- West Sussex LTLAs
AND RESLADST_ONS IN ('E07000223','E07000224','E07000225','E07000226','E07000227','E07000228', 'E07000229')
