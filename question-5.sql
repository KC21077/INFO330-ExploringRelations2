-- What was the most purchased track of 2013?

SELECT tracks.Name AS Track_Name, COUNT(*) AS purchase
FROM tracks
JOIN invoice_items  ON tracks.TrackId = invoice_items.TrackId
JOIN invoices  ON invoice_items.InvoiceId = invoices.InvoiceId
WHERE strftime('%Y', invoices.InvoiceDate) = '2013'
GROUP BY tracks.TrackId
ORDER BY purchase DESC;
