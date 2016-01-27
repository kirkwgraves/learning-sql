/* Which sales agent made the most in sales in 2009? HINT: MAX */

SELECT EmployeeName AS 'Employee Name', MAX(SalesIn2009) AS '2009 Sales'
FROM (SELECT Employee.FirstName || ' ' || Employee.LastName AS EmployeeName, ROUND(SUM(Invoice.Total), 2) AS SalesIn2009
FROM Invoice JOIN Customer ON Customer.CustomerId == Invoice.CustomerId JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId WHERE strftime('%Y', Invoice.InvoiceDate) == "2009");