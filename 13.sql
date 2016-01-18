/* Provide a query that includes the purchased track name AND artist name with each invoice line item. */
SELECT a.Name as 'Artist Name', p.* 
FROM Artist as a JOIN (SELECT alb.ArtistId as ArtistId, q.*
FROM Album AS alb JOIN (SELECT t.Name, t.AlbumId, i.* FROM InvoiceLine AS i JOIN Track AS t ON i.TrackId == t.TrackId) AS q ON alb.AlbumId == q.AlbumId) AS p ON a.ArtistId == p.ArtistId;