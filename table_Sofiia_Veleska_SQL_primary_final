SELECT * FROM czechia_payroll cp
WHERE industry_branch_code IS NULL

SELECT * FROM czechia_price czp

SELECT * FROM czechia_price_category cpc

CREATE OR REPLACE TABLE t_Sofiia_Veleska_SQL_primary_final AS
	SELECT 
		ROUND(AVG(cp.value),2) AS average_salary,
		cp.industry_branch_code,
		cp.payroll_year,
		ROUND(AVG(czp.value),2) AS average_price,
		czp.category_code,
		YEAR(czp.date_from) AS year_from,
		czp.region_code,
		cpc.name AS product_name,
		cpc.code,
		cpc.price_value
	FROM czechia_payroll cp
	JOIN czechia_price czp
	ON cp.payroll_year = YEAR(czp.date_from)
	JOIN czechia_price_category cpc
	ON czp.category_code = cpc.code
	WHERE value_type_code = 5958  
		AND calculation_code = 200 
		AND industry_branch_code IS NOT NULL
		AND region_code IS NOT NULL
	GROUP BY cp.industry_branch_code, 
			cp.payroll_year, 
			czp.category_code, 
			year_from
	ORDER BY cp.industry_branch_code, 
			cp.payroll_year, 
			czp.category_code, 
			year_from;
