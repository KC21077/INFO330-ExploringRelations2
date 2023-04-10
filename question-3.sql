-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT artists.Name AS Artist_name, tracks.Name AS tracks_name, invoice_items.InvoiceLineId
FROM invoice_items
JOIN tracks ON invoice_items.TrackId=tracks.TrackId
JOIN albums ON tracks.AlbumId=albums.AlbumId
JOIN artists ON artists.ArtistId=albums.ArtistId;
