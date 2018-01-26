SELECT song, COUNT(DISTINCT album)
  FROM album JOIN track
         ON (album.asin=track.album)
GROUP BY song
HAVING COUNT(DISTINCT album) > 2
