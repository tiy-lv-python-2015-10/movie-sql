SELECT * FROM movies;

SELECT movies.title, movies.movieid FROM movies;

SELECT * FROM movies WHERE movieid = 485;

SELECT movieid FROM movies WHERE title = 'Made in America (1993)';

SELECT * FROM  movies LIMIT 10;

SELECT * FROM movies WHERE title LIKE '%(2002)%';

SELECT * FROM movies WHERE title Like '%Godfather,%';

SELECT * FROM movies WHERE genres LIKE '%Comedy%';

SELECT * FROM movies WHERE  genres LIKE '%Comedy%' and movies.title LIKE '%(2000)%';

SELECT * FROM movies WHERE genres LIKE '%Comedy%' and (movies.genres LIKE'%Thriller%' or movies.genres LIKE'%Horror%' );

SELECT * FROM movies WHERE  (title LIKE '%(2001)%' OR title LIKE '%(2002)%') AND lower(title) LIKE '%super%';

SELECT movies.title, ratings.rating From movies INNER JOIN ratings ON movies.movieid = ratings.movieid  WHERE movies.title
Like '%Godfather,%';

SELECT movies.title, ratings.rating, ratings.timestamp From movies INNER JOIN ratings ON movies.movieid = ratings.movieid
WHERE movies.title Like '%Godfather,%' ORDER BY ratings.timestamp ASC;

SELECT movies.title, links.imdbid from movies INNER JOIN links ON movies.movieid = links.movieid
WHERE movies.genres LIKE '%Comedy%';

SELECT movies.title, ratings.rating from movies LEFT JOIN ratings on movies.movieid = ratings.movieid
WHERE ratings.rating IS NULL;
