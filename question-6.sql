-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT tracks.TrackId, tracks.Name AS Track_Name, tracks.Composer
FROM tracks
JOIN invoice_items ON tracks.TrackId=invoice_items.TrackId;
