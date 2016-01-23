/* Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre. */
SELECT q.'Track' AS Track, q.'Album Title' AS Album, q.'Genre' AS Genre, mt.Name AS 'Media Type' 
FROM (SELECT g.Name as 'Genre', alb.* FROM (SELECT t.Name AS 'Track', a.Title AS 'Album Title', t.MediaTypeId AS 'Media Type ID', t.GenreId AS 'Genre Id' FROM Track AS t JOIN Album AS a ON t.AlbumId == a.AlbumId) AS alb JOIN Genre as g ON alb.'Genre Id' == g.GenreId) AS q JOIN MediaType AS mt ON q.'Media Type Id' == mt.MediaTypeId;
