
SELECT ADMIMETH, ADMIAGE, QUINARY_ADMIAGE, FAE, FCE, FDE, ADMIDATE, DISDATE, DISDEST, GPPRAC, EPIORDER, EPISTAT, SEX, SPELDUR, CAUSE, 
DIAG_01, DIAG_02, DIAG_03, DIAG_04, DIAG_05, DIAG_06, DIAG_07, DIAG_08, DIAG_09, DIAG_10, DIAG_11, DIAG_12, DIAG_13, DIAG_14,
DIAG_15,DIAG_16,DIAG_17,DIAG_18, DIAG_19, DIAG_20, RESLADST_ONS, CCG_RESIDENCE, CCG_RESPONSIBILITY, "PROVSPNOPS, PROCODE
FROM hes.hes_apc_2021
WHERE RESLADST_ONS IN ('E07000223','E07000224','E07000225','E07000226','E07000227','E0700022', 'E07000229')



