/*
SELECT
    tpf1.category_code,
    tpf1.current_year,
    ROUND(b.price_current_year, 2) AS price_current_year,
    ROUND(tpf1.price_previous_year, 2) AS price_previous_year,
    tpf1.previous_year,
    ROUND(((tpf2.price_current_year - tpf1.price_previous_year) / tpf1.price_previous_year * 100), 2) AS percentage_increase
FROM
    (SELECT
        category_code,
        year_from AS current_year,
        average_price AS price_previous_year,
        year_from - 1 AS previous_year
    FROM t_Sofiia_Veleska_SQL_primary_final
    GROUP BY category_code,
			year_from) tpf1
JOIN
    (SELECT
        category_code,
        year_from,
        AVG(average_price) AS price_current_year
    FROM t_Sofiia_Veleska_SQL_primary_final
    GROUP BY category_code,
			year_from) tpf2
ON tpf1.category_code = tpf2.category_code
    AND tpf1.previous_year = tpf2.year_from
	AND ROUND(((tpf2.price_current_year - tpf1.price_previous_year) / tpf1.price_previous_year * 100), 2) LIKE '-%'
ORDER BY percentage_increase ASC;
*/

-- finalni code
SELECT
    tpf1.category_code,
    tpf1.year_from AS current_year,
    tpf2.year_from AS previous_year,
    tpf1.average_price AS price_current_year,
    tpf2.average_price AS price_previous_year,
    ROUND((AVG(tpf2.average_price) / AVG(tpf1.average_price) * 100)- 100 , 2) AS persentage_change
FROM t_Sofiia_Veleska_SQL_primary_final tpf1
JOIN  t_Sofiia_Veleska_SQL_primary_final tpf2
	ON tpf1.category_code = tpf2.category_code
	AND tpf1.year_from -1 = tpf2.year_from
GROUP BY tpf1.category_code
ORDER BY persentage_change;

