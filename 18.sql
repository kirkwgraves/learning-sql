/* Provide a query that shows total sales made by each sales agent. */

SELECT Employee.FirstName || ' ' || Employee.LastName AS 'Employee Name', ROUND(SUM(Invoice.Total),2) AS 'Total Sales'
FROM Invoice JOIN Customer ON Customer.CustomerId == Invoice.CustomerId JOIN Employee ON Employee.EmployeeId == Customer.SupportRepId GROUP BY Customer.SupportRepId;
