    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_1314_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION    
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_1415_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION    
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_1516_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION    
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_1617_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION    
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_1718_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION    
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_1819_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION    
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_1920_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION    
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_2021_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION  
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_2122_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION      
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_2223_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
UNION    
    SELECT FYEAR, EPIKEY, PERSON_ID_DEID, ADMIDATE, ADMIMETH, ADMINCAT, ADMISORC, CAUSE_3, CAUSE_4, CLASSPAT, DIAG_3_CONCAT, DIAG_3_01, DIAG_4_CONCAT, DIAG_4_01, DIAG_COUNT, OPERTN_3_CONCAT, OPERTN_3_01, OPERTN_4_CONCAT, OPERTN_4_01, DISDATE, DISDEST, DISMETH, ELECDATE, EPIDUR, EPIEND, EPIORDER, EPISTART, EPISTAT, EPITYPE, ETHNOS, FAE, FCE, FDE, GPPRAC, RESLADST_ONS, SEX, SPELBGIN, SPELDUR, SPELDUR_CALC, SPELEND, STARTAGE, STARTAGE_CALC, TRETSPEF, LSOA11 AS LSOA11CD, SITEDIST, SITETRET, PROCODE3, PROCODE5
    FROM hdis_10years.hes_apc_2324_hdis_10years
    -- Finished consultant episode (not necesarily the admission episode)
    WHERE FCE = 1
    -- Finished episode status
    AND EPISTAT = 3
    -- Ordinary admissions or day cases
    AND CLASSPAT IN ('1','2','5')
    -- Among those aged 0-19 at the start of the admission
    AND (STARTAGE_CALC >= 0 AND STARTAGE_CALC <= 19)
    -- With a primary operation code of F09 or F10 (tooth extraction)
    AND OPERTN_3_CONCAT RLIKE ('^F09|^F10')
    -- For West Sussex Local Authority codes
    -- AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')