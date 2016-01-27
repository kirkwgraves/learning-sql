/* Provide a query that shows the most purchased track of 2013. */

SELECT q.'Track Name' AS TRACK, MAX(q.'Total Sold') AS TOTAL 
FROM (SELECT Track.Name AS 'Track Name', SUM(InvoiceLine.TrackId) AS 'Total Sold'
FROM InvoiceLine JOIN Track ON InvoiceLine.TrackId == Track.TrackId JOIN Invoice ON InvoiceLine.InvoiceId == Invoice.InvoiceId WHERE strftime('%Y', Invoice.InvoiceDate) == "2013" GROUP BY Track.Name) as q;