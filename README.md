# SQL Project Wages Vs Food Prices 

Tasks:

- Examining how wages change in different industries over time;
- Looking at how much milk and bread can be bought in the beginning and end of certain periods, using prices and wages, to see how buying power changes;
- Finding out which food type has the smallest price increase, showing the lowest yearly change in percentage;
- Checking if there are any years where food prices increase much more than wages, by over 10%;
- Studying if changes in GDP affect wages and food prices. Specifically, seeing if a big GDP increase in one year means food prices or wages will likely go up in the same or following year.

Abbreviation:

- A	Zemědělství, lesnictví, rybářství
- B	Těžba a dobývání
- C	Zpracovatelský průmysl
- D	Výroba a rozvod elektřiny, plynu, tepla a klimatiz. vzduchu
- E	Zásobování vodou; činnosti související s odpady a sanacemi
- F	Stavebnictví
- G	Velkoobchod a maloobchod; opravy a údržba motorových vozidel
- H	Doprava a skladování
- I	Ubytování, stravování a pohostinství
- J	Informační a komunikační činnosti
- K	Peněžnictví a pojišťovnictví
- L	Činnosti v oblasti nemovitostí
- M	Profesní, vědecké a technické činnosti
- N	Administrativní a podpůrné činnosti
- O	Veřejná správa a obrana; povinné sociální zabezpečení
- P	Vzdělávání
- Q	Zdravotní a sociální péče
- R	Kulturní, zábavní a rekreační činnosti
- S	Ostatní činnosti


- 111301 - Chléb konzumní kmínový
- 114201 - Mléko polotučné pasterované
  
Explanations:

First step was to understand which data from various sources I will need and created two tables. The first table "table_Sofiia_Veleska_SQL_primary_final" corresponds to the first four questions, while the second table, "table_Sofiia_Veleska_SQL_secondary_final", pertains to the fifth question.

https://github.com/veleskasofiia/sql_wages_vs_food_prices/blob/main/table_Sofiia_Veleska_SQL_primary_final

https://github.com/veleskasofiia/sql_wages_vs_food_prices/blob/main/table_Sofiia_Veleska_SQL_secondary_final

- 1_SQL Are wages rising in all industries over the years, or falling in some?

https://github.com/veleskasofiia/sql_wages_vs_food_prices/blob/main/1_SQL_Industry_Wage_Trends

In some industries have big increases, while others don't change much. Industry K has the highest increase at 9.68% per year, showing big growth. Next is industry B, which goes up by 3.22%, a good sign. But then, the increases slow down. Industries F, P, and R grow less at 2.10%, 1.71%, and 1.45% respectively. This slowdown continues in industries N, I, J, and G, with each growing even less. Towards the bottom, industries M, E, L, O, and D have very small increases, and industry H doesn't change at all. Overall, while wages are going up in most industries, some are doing much better than others. This shows that the economy and job market are different in each industry.

- 2_SQL How many liters of milk and kilograms of bread can be bought in the first and last comparable periods in the available price and wage data?

https://github.com/veleskasofiia/sql_wages_vs_food_prices/blob/main/2_SQL_Milk_%26_Bread_Comparative_Purchases

In year 2006, people could buy 919.22 kg of bread and 1026.16 litrs of milk. in year 2018 1579.82 kg of bread and 1763.63 litrs of milk. 

- 3_SQL Which food category is increasing in price the slowest (has the lowest percentage year-on-year increase)?

https://github.com/veleskasofiia/sql_wages_vs_food_prices/blob/main/3_SQL_Minimal_Food_Price_Growth

The category with code 117101 - "Rajská jablka červená kulatá" has a decrease of -30.28%, indicating a significant decrease in price compared to the other categories. Therefore, category 117101 is indeed increasing in price the slowest among all the categories listed.

- 4_SQL Has there been a year in which the year-on-year increase in food prices was significantly higher than wage growth (greater than 10%)?

https://github.com/veleskasofiia/sql_wages_vs_food_prices/blob/main/4_SQL_Wage_vs._Food_Inflation

The table presents data for each year between 2007 and 2018, showing the average prices of food and salaries for both the current and previous years. The "percentage_p" column reveals the percentage change in food prices, and the "percentage_increase_s" column shows the percentage change in salaries. The "differences" column indicates the gap between the percentage changes in food prices and wages.
By examining the differences column, we can spot the years where the increase in food prices surpassed 10% compared to wage growth. For example, in 2009, the difference is 9.84%, suggesting that food prices rose significantly more than salaries during that period. Likewise, in 2018, the difference is 5.03%, indicating another year where food prices outpaced wage growth, albeit not exceeding 10%.
In summary, based on the differences column, it seems that there were years when the rise in food prices exceeded wage growth, but not by more than 10% in every year.

- 5_SQL Does the level of GDP affect changes in wages and food prices? Or, if the GDP increases more significantly in one year, will this be reflected in food prices or wages in the same or the following year by a more significant increase?

https://github.com/veleskasofiia/sql_wages_vs_food_prices/blob/main/5_SQL_GDP_Impact_on_Wages_%26_Food

The data covers the years 2007 to 2018 and shows how the Czech Republic's economy changed. The Gross Domestic Product (GDP) went up and down during this time, reaching its highest point in 2018 at about 253.05 billion CZK. The GDP growth rate changed every year, sometimes increasing significantly, such as in 2007 and 2017, and sometimes decreasing, like in 2009 and 2015. Prices also changed, with inflation rates ranging from a low of 0.05% in 2013 to a high of 14.46% in 2007, indicating varying levels of price stability. 











