SELECT * FROM t_sofiia_veleska_sql_primary_final

SELECT
    a.category_code,
    a.year_from AS current_year,
    b.year_from AS previous_year,
    a.average_price AS price_current_year,
    b.average_price AS price_previous_year,
    ROUND((AVG(b.average_price) / AVG(a.average_price) * 100)- 100 , 2) AS persentage_change
FROM t_Sofiia_Veleska_SQL_primary_final a
JOIN  t_Sofiia_Veleska_SQL_primary_final b
	ON a.category_code = b.category_code
	AND a.year_from -1 = b.year_from
GROUP BY a.category_code
ORDER BY persentage_change;
