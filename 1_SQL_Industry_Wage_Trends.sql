SELECT 
    tpf1.industry_branch_code,
    tpf1.payroll_year AS current_year,
    ROUND(AVG(tpf2.average_salary),2) AS salary_current_year,
    ROUND(AVG(tpf1.average_salary),2) AS salary_previous_year,
    tpf2.payroll_year AS previous_year,
    ROUND(((tpf2.average_salary * 100) / tpf1.average_salary) - 100, 2) AS salary_difference
FROM t_Sofiia_Veleska_SQL_primary_final tpf1
JOIN t_Sofiia_Veleska_SQL_primary_final  tpf2 
ON tpf1.industry_branch_code = tpf2.industry_branch_code
    AND tpf1.payroll_year -1 = tpf2.payroll_year 
    WHERE tpf1.average_salary <= tpf2.average_salary
GROUP BY tpf1.industry_branch_code
ORDER BY 
	salary_difference DESC,
    tpf1.industry_branch_code,
    tpf1.payroll_year DESC;

