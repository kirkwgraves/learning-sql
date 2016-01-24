/* Provide a query that shows all Invoices but includes the # of invoice line items. */

SELECT q.'No. of Invoice Line Items', inv.* FROM Invoice AS inv 
JOIN (SELECT i.InvoiceId, COUNT(i.InvoiceId) as 'No. of Invoice Line Items' FROM InvoiceLine AS i GROUP BY i.InvoiceId) as q WHERE inv.InvoiceId == q.InvoiceId;