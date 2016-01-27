/* Provide a query that shows the total sales per country. Which country's customers spent the most? */

/* Query 1: */

SELECT ROUND(SUM(Invoice.Total), 2) AS 'Total Sales', Invoice.BillingCountry AS 'Country'
FROM Invoice 
GROUP BY Invoice.BillingCountry;

/* Query 2 */

SELECT MAX(q.'Total Sales') AS 'Most Sales', q.'Country'
FROM (SELECT ROUND(SUM(Invoice.Total), 2) AS 'Total Sales', Invoice.BillingCountry AS 'Country'
FROM Invoice 
GROUP BY Invoice.BillingCountry) AS q;

/* Answer is USA */