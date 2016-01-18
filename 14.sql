/*Provide a query that shows the # of invoices per country. HINT: GROUP BY */

SELECT COUNT(i.BillingCountry) AS 'Number of Invoices', i.BillingCountry FROM Invoice AS i GROUP BY i.BillingCountry;
