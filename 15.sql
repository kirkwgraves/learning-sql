/* Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table. */

SELECT pl.Name, q.* 
FROM Playlist as pl JOIN (SELECT COUNT(p.PlaylistId) AS 'Total Number of Tracks', p.PlaylistId FROM PlaylistTrack AS p GROUP BY p.PlaylistId) as q ON pl.PlaylistId == q.PlaylistId;