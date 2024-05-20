-- '111301' - Chléb konzumní kmínový
-- '114201' - Mléko polotučné pasterované

SELECT 
    b.category_code,
    a.payroll_year,
   	ROUND(AVG(b.average_price),2) AS product_price,
    ROUND(AVG(a.average_salary),2) AS average_salary,
    ROUND((a.average_salary / b.average_price), 2) AS milc_bread_can_buy
FROM t_Sofiia_Veleska_SQL_primary_final a
JOIN t_Sofiia_Veleska_SQL_primary_final b
WHERE b.category_code IN ('111301','114201') 
GROUP BY b.category_code, 
		a.payroll_year ASC;		
