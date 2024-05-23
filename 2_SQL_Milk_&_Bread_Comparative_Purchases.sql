-- '111301' - Chléb konzumní kmínový
-- '114201' - Mléko polotučné pasterované

SELECT 
    tpf2.category_code,
    tpf1.payroll_year,
   	ROUND(AVG(tpf2.average_price),2) AS product_price,
    ROUND(AVG(tpf1.average_salary),2) AS average_salary,
    ROUND((tpf1.average_salary / tpf2.average_price), 2) AS milc_bread_can_buy
FROM t_Sofiia_Veleska_SQL_primary_final tpf1
JOIN t_Sofiia_Veleska_SQL_primary_final tpf2
WHERE tpf2.category_code IN ('111301','114201')
GROUP BY tpf2.category_code, 
		tpf1.payroll_year ASC;		
	
