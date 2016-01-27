/* Which sales agent made the most in sales in 2010? */

SELECT EmployeeName AS 'Employee Name', MAX(SalesIn2010) AS '2010 Sales'
FROM (SELECT Employee.FirstName || ' ' || Employee.LastName AS EmployeeName, SUM(Invoice.Total) AS SalesIn2010
FROM Invoice JOIN Customer ON Customer.CustomerId == Invoice.CustomerId JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId WHERE strftime('%Y', Invoice.InvoiceDate) == "2010");