-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers

SELECT e.FirstName as 'Sales Agent First Name', e.LastName as 'Sales Agent Last Name', q.'Invoice Total' as 'Invoice Total', q.'Customer First Name' as 'Customer First Name', q.'Customer Last Name' as 'Customer Last Name', q.'Country' as 'Country'
FROM (SELECT i.Total as 'Invoice Total', c.FirstName as 'Customer First Name', c.LastName as 'Customer Last Name', c.Country as 'Country', c.SupportRepId as 'Sales Agent ID' FROM Invoice as i LEFT JOIN Customer as c ON c.CustomerId = i.CustomerId) as q
JOIN Employee as e ON q.'Sales Agent ID' = e.EmployeeId; 


