SELECT
    HOSPITALIZATION.PF_CODE AS 都道府県コード,
    PF_NAME AS 都道府県名,
    ROUND(100*CAST(INP_YES AS REAL)/CAST((INP_YES+INP_NO+UNIDENTIFIED) AS REAL), 1) AS 入院率
FROM 
    HOSPITALIZATION
    INNER JOIN PREFECTURE
        ON (HOSPITALIZATION.PF_CODE = PREFECTURE.PF_CODE)
ORDER BY
    入院率 DESC,
    都道府県コード ASC