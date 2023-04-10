-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.

SELECT customers.FirstName, customers.LastName, invoices.CustomerId, invoices.InvoiceDate, invoices.BillingCountry
FROM customers, invoices
WHERE  BillingCountry = 'Brazil';
