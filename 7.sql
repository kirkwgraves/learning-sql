SELECT * FROM 
(SELECT i.InvoiceId, c.SupportRepId
FROM Invoice as i 
LEFT JOIN Customer as c ON i.CustomerId = c.CustomerId) as a
LEFT JOIN Employee as b ON a.SupportRepId = b.EmployeeId;