
SELECT * FROM t_Sofiia_Veleska_SQL_secondary_final setpf

SELECT * FROM t_sofiia_veleska_sql_primary_final prtpf


SELECT
    setpfa.country,
    setpfa.YEAR,
    setpfa.GDP,
    ROUND(AVG(prtpfa.average_salary - prtpfb.average_salary)* 100 / prtpfb.average_salary ,2) AS salary_change,
    ROUND(AVG(prtpfa.average_price - prtpfb.average_price)* 100 / prtpfb.average_price ,2) AS price_change,
    ABS(ROUND(AVG(setpfa.GDP - setpfb.GDP)* 100 / setpfb.GDP ,2)) AS GDP_change
FROM t_sofiia_veleska_sql_primary_final prtpfa
LEFT JOIN t_sofiia_veleska_sql_primary_final prtpfb
ON prtpfa.category_code = prtpfb.category_code
	AND prtpfa.payroll_year -1 = prtpfb.payroll_year
LEFT JOIN t_Sofiia_Veleska_SQL_secondary_final setpfa
ON prtpfa.payroll_year = setpfa.YEAR
LEFT JOIN t_Sofiia_Veleska_SQL_secondary_final setpfb
ON setpfa.country = setpfb.country 
    AND setpfa.YEAR - 1 = setpfb.YEAR 
WHERE setpfa.country IS NOT NULL
	AND setpfa.YEAR > 2006
GROUP BY 
    setpfa.country,
    setpfa.YEAR;
