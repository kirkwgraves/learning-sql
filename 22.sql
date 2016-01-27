/* Provide a query that shows the # of customers assigned to each sales agent. */

SELECT EmployeeName AS 'Employee Name', MAX(TotalCustomers) AS 'Total Customers'
FROM 
(SELECT Employee.FirstName || ' ' || Employee.LastName AS EmployeeName, COUNT(Customer.SupportRepId) AS TotalCustomers FROM Employee JOIN Customer ON Customer.SupportRepId == Employee.EmployeeId GROUP BY Customer.SupportRepId);