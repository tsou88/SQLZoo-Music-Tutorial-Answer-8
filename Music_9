SELECT title, price, COUNT(song)
FROM album JOIN track ON (album.asin=track.album)
GROUP BY title, price
HAVING price / COUNT(song) * 100 < 50
