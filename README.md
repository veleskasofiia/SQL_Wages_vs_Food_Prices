# SQL Project Wages Vs Food Prices (in process)

abbreviation:

A	Zemědělství, lesnictví, rybářství
B	Těžba a dobývání
C	Zpracovatelský průmysl
D	Výroba a rozvod elektřiny, plynu, tepla a klimatiz. vzduchu
E	Zásobování vodou; činnosti související s odpady a sanacemi
F	Stavebnictví
G	Velkoobchod a maloobchod; opravy a údržba motorových vozidel
H	Doprava a skladování
I	Ubytování, stravování a pohostinství
J	Informační a komunikační činnosti
K	Peněžnictví a pojišťovnictví
L	Činnosti v oblasti nemovitostí
M	Profesní, vědecké a technické činnosti
N	Administrativní a podpůrné činnosti
O	Veřejná správa a obrana; povinné sociální zabezpečení
P	Vzdělávání
Q	Zdravotní a sociální péče
R	Kulturní, zábavní a rekreační činnosti
S	Ostatní činnosti

1_SQL Are wages rising in all industries over the years, or falling in some?

Wages are different in each industry. Some industries have big increases, while others don't change much. Industry K has the highest increase at 9.68% per year, showing big growth. Next is industry B, which goes up by 3.22%, a good sign. But then, the increases slow down. Industries F, P, and R grow less at 2.10%, 1.71%, and 1.45% respectively. This slowdown continues in industries N, I, J, and G, with each growing even less. Towards the bottom, industries M, E, L, O, and D have very small increases, and industry H doesn't change at all. Overall, while wages are going up in most industries, some are doing much better than others. This shows that the economy and job market are different in each industry.

2_SQL How many liters of milk and kilograms of bread can be bought in the first and last comparable periods in the available price and wage data?

Back in 2006, when people earned about 21165.18 units, they could buy around 20.63 liters of milk for 1026.16 units per liter. But by 2018, with wages at 114201 units, they could afford roughly 5319.34 kilograms of bread at 21.47 units per kilogram. This shows a big difference in what people could buy with their wages between 2006 and 2018. In 2018, they could get a lot more bread compared to the amount of milk they could buy in 2006 with the same amount of money.

3_SQL Which food category is increasing in price the slowest (has the lowest percentage year-on-year increase)?

The category with code 117101 - "Rajská jablka červená kulatá" has a decrease of -30.28%, indicating a significant decrease in price compared to the other categories. Therefore, category 117101 is indeed increasing in price the slowest among all the categories listed.

4_SQL Has there been a year in which the year-on-year increase in food prices was significantly higher than wage growth (greater than 10%)?

The table presents data for each year between 2007 and 2018, showing the average prices of food and salaries for both the current and previous years. The "percentage_p" column reveals the percentage change in food prices, while the "percentage_increase_s" column shows the percentage change in salaries. The "differences" column indicates the gap between the percentage changes in food prices and wages.
By examining the differences column, we can spot the years where the increase in food prices surpassed 10% compared to wage growth. For example, in 2009, the difference is 9.84%, suggesting that food prices rose significantly more than salaries during that period. Likewise, in 2018, the difference is 5.03%, indicating another year where food prices outpaced wage growth, albeit not exceeding 10%.
In summary, based on the differences column, it seems that there were years when the rise in food prices exceeded wage growth, although not necessarily by more than 10% in every instance.

5_SQL 











