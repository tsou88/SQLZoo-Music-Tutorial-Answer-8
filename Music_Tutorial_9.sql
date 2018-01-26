/*#9 A "good value" album is one where the price per track is less than 50 pence. Find the good value album - show the title, the price and the number of tracks.*/

SELECT title, price, COUNT(song)
FROM album JOIN track ON (album.asin=track.album)
GROUP BY title, price
HAVING price / COUNT(song) * 100 < 50
