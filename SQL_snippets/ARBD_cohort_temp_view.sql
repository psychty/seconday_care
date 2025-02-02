CREATE OR REPLACE GLOBAL TEMP VIEW arbd_1314_2324_wsx_cohort AS 
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_1314_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_1415_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_1516_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_1617_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_1718_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_1819_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_1920_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_2021_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_2122_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_2223_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))
UNION
SELECT DISTINCT PERSON_ID_DEID
FROM hdis_10years.hes_apc_2324_hdis_10years
-- Finished episodes only (3)
WHERE EPISTAT = '3'
-- Ordinary admission ('1'), day case ('2'), or maternity episode ('5')
AND CLASSPAT IN ('1','2','5')
-- First episode of a spell
AND EPIORDER = '1'
-- Valid starting age
AND ((STARTAGE >= 0 AND STARTAGE <= 120) OR (STARTAGE >= 7001 AND STARTAGE <= 7007)) 
-- West Sussex Local Authority codes
AND RESLADST_ONS IN ('E07000223', 'E07000224', 'E07000225', 'E07000226', 'E07000227', 'E07000228', 'E07000229')
-- ARBD ICD-10 Codes
AND (DIAG_4_CONCAT RLIKE ('E512|F10[67]|G312|G621'))