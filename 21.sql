/* Which sales agent made the most in sales over all? */

SELECT q.'Employee Name', MAX(q.'Total Sales') AS 'Total' FROM (SELECT Employee.FirstName || ' ' || Employee.LastName AS 'Employee Name', ROUND(SUM(Invoice.Total), 2) AS 'Total Sales'
FROM Invoice JOIN Customer ON Customer.CustomerId == Invoice.CustomerId JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId GROUP BY Customer.SupportRepId) AS q;