/*#8 Find the songs that appear on more than 2 albums. Include a count of the number of times each shows up.*/

SELECT song, COUNT(DISTINCT album)
FROM album JOIN track ON (album.asin = track.album)
GROUP BY song
HAVING COUNT(DISTINCT album) > 2
