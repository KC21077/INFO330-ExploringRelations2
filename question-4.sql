-- Which sales agent made the most in sales in 2010?
-- Jane Peacock --
SELECT employees.FirstName || ' ' || employees.LastName AS sales_agent, SUM(invoices.Total) AS total_sales
FROM employees
JOIN customers ON employees.EmployeeId=customers.SupportRepId
JOIN invoices ON customers.CustomerId=invoices.CustomerId
WHERE strftime('%Y', InvoiceDate) = '2010'
GROUP BY EmployeeId
ORDER BY total_sales DESC;
