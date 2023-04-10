-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT employees.FirstName, employees.LastName, invoices.InvoiceId
FROM invoices
INNER JOIN customers
ON invoices.CustomerId=customers.CustomerId
INNER JOIN employees
ON customers.SupportRepId=employees.EmployeeId;
