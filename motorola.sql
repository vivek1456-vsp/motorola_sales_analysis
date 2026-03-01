-- Total Revenue
SELECT SUM(Revenue) AS total_revenue
FROM motorola;

-- Total Profit
SELECT SUM(Revenue - Cost) AS total_profit
FROM motorola;

-- Revenue by Product
SELECT Product,
       SUM(Revenue) AS total_revenue
FROM motorola
GROUP BY Product
ORDER BY total_revenue DESC;

-- Revenue by Region
SELECT Region,
       SUM(Revenue) AS total_revenue
FROM motorola
GROUP BY Region
ORDER BY total_revenue DESC;

-- Monthly Sales Trend
SELECT YEAR(Date) AS Year,
       MONTH(Date) AS Month,
       SUM(Revenue) AS monthly_revenue
FROM motorola
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

-- Profit Margin by Product
SELECT Product,
       SUM(Revenue - Cost) * 100.0 / SUM(Revenue) AS profit_margin_pct
FROM motorola
GROUP BY Product
ORDER BY profit_margin_pct DESC;
