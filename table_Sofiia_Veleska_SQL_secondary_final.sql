SELECT * FROM countries c;

SELECT * FROM economies e;
	
SELECT * FROM t_sofiia_veleska_sql_primary_final prtpf;

SELECT * FROM t_Sofiia_Veleska_SQL_secondary_final setpf;


CREATE OR REPLACE TABLE t_Sofiia_Veleska_SQL_secondary_final AS
	SELECT
		ec.country,
		ec.GDP,
		ec.gini,
		ec.YEAR,
		ec.population,
		c.region_in_world
	FROM economies ec
	LEFT JOIN countries c 
	ON ec.country = c.country
	WHERE ec.country = 'Czech Republic'
		AND YEAR BETWEEN 2000 AND 2019
	GROUP BY 
		ec.country,
		ec.GDP,
		ec.gini,
		ec.YEAR,
		ec.population,
		c.region_in_world;
