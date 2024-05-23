-- product

SELECT 
	ROUND(AVG(tpf1.average_price),2) AS price_current_year,
	ROUND(AVG(tpf2.average_price),2) AS price_previous_year,
	ROUND(AVG(tpf2.average_price) / AVG(tpf1.average_price) * 100 - 100, 2) AS percentage_increase_prod
FROM t_Sofiia_Veleska_SQL_primary_final tpf1
LEFT JOIN t_Sofiia_Veleska_SQL_primary_final tpf2
	ON tpf1.year_from -1 = tpf2.year_from 
	WHERE tpf2.average_price IS NOT NULL
	AND tpf1.category_code = tpf2.category_code
GROUP BY tpf1.year_from;

 -- salary
SELECT 
	tpf1.payroll_year,
	tpf2.payroll_year AS previous_year,
	ROUND(AVG(tpf1.average_salary),2) AS avg_salary,
	ROUND(AVG(tpf2.average_salary),2) AS prev_avg_salary,
	ROUND(AVG(tpf2.average_salary) / AVG(tpf1.average_salary) * 100 - 100, 2) AS percentage_increase_sal
FROM t_Sofiia_Veleska_SQL_primary_final tpf1
LEFT JOIN t_Sofiia_Veleska_SQL_primary_final tpf2
	ON tpf1.payroll_year -1 = tpf2.payroll_year 
	WHERE tpf2.payroll_year IS NOT NULL
GROUP BY tpf1.payroll_year;



-- Final Code


SELECT 
    tpf1.year_from, 
    tpf2.year_from AS previous_year,
    ROUND(AVG(tpf1.average_price),2) AS current_year_price,
    ROUND(AVG(tpf2.average_price),2) AS previous_year_price,
    ROUND((AVG(tpf2.average_price) / AVG(tpf1.average_price) * 100) - 100, 2 )AS percentage_p,
    tpf1.payroll_year,
    tpf2.payroll_year AS previous_year,
    ROUND(AVG(tpf1.average_salary),2) AS current_year_salary,
    ROUND(AVG(tpf2.average_salary),2) AS previous_year_salary,
    ROUND((AVG(tpf2.average_salary) / AVG(tpf1.average_salary) * 100) - 100, 2) AS percentage_increase_s,
    ROUND((AVG(tpf2.average_price) / AVG(tpf1.average_price) * 100) - 100, 2 ) - ROUND((AVG(tpf2.average_salary) / AVG(tpf1.average_salary) * 100) - 100, 2) AS differences
FROM t_sofiia_veleska_sql_primary_final tpf1
JOIN t_sofiia_veleska_sql_primary_final tpf2 
    ON tpf1.year_from - 1 = tpf2.payroll_year 
    AND tpf1.category_code = tpf2.code
GROUP BY tpf1.year_from;
		
