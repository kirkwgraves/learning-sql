SELECT substr(InvoiceDate, 1, 4) AS 'Invoice Year',
COUNT(InvoiceId) AS 'Number of Invoices',
SUM(Total) AS 'Invoice Total'
FROM Invoice
WHERE strftime('%Y', InvoiceDate) == '2009' OR strftime('%Y', InvoiceDate) == '2011'
GROUP BY strftime('%Y', InvoiceDate);