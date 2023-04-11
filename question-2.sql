-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT employees.FirstName  || " " || employees.LastName AS " Agent_Name", invoices.InvoiceId, invoices.CustomerId, invoices.InvoiceDate, invoices.BillingAddress, invoices.BillingCity, invoices.BillingState, invoices.BillingCountry, invoices.BillingPostalCode, invoices.Total
FROM invoices
INNER JOIN customers
ON invoices.CustomerId=customers.CustomerId
INNER JOIN employees
ON customers.SupportRepId=employees.EmployeeId;
