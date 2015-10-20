SELECT *
FROM movies;

SELECT movies.title, movies.movieid
FROM movies
LIMIT 10;

SELECT *
FROM movies
WHERE movieid = 485;

SELECT movies.movieid
FROM movies
WHERE title like '%Made in America%';

SELECT *
FROM movies
ORDER BY movies.title ASC
LIMIT 10;

SELECT *
FROM movies
WHERE  movies.title like '%(2002)%';

SELECT *
FROM movies
WHERE movies.title like '%Godfather, The%';

SELECT *
FROM movies
WHERE movies.genres like '%Comedy%';

SELECT *
FROM movies
WHERE movies.genres like '%Comedy%' AND movies.title like '%(2000)%';

SELECT *
FROM movies
WHERE movies.genres like '%Comedy%' AND lower(movies.title) like '%death%';

SELECT *
FROM movies
WHERE lower(movies.title) like '%super%' AND (movies.title like '%(2001)%' OR movies.title like '%(2002)%');

SELECT movies.title, ratings.rating
FROM movies JOIN ratings ON movies.movieid = ratings.movieid
WHERE movies.title like '%Godfather, The%';

SELECT movies.title, ratings.rating
FROM movies JOIN ratings ON movies.movieid = ratings.movieid
WHERE movies.title like '%Godfather, The%'
ORDER BY ratings.timestamp DESC;

SELECT movies.title, links.imdbid
FROM movies JOIN links ON movies.movieid = links.movieid
WHERE movies.title LIKE '%2005%' AND movies.genres like '%Comedy%';

SELECT *
FROM movies LEFT JOIN ratings ON movies.movieid = ratings.movieid
WHERE ratings.rating is NULL;

SELECT *
FROM movies
  JOIN movie_genre ON movies.movieid = movie_genre.movieid
  JOIN genre ON movie_genre.genre_id = genre.id
WHERE movie_genre.genre_id = 15;

SELECT 'www.imdb.com/title/tt' || imdbid
FROM links;

SELECT 'https://www.themoviedb.org/movie/' || tmdbid
FROM links;

SELECT movies.title, ratings.rating, to_char(to_timestamp(ratings.timestamp), 'Month MM, YYYY')
from movies
  JOIN ratings ON movies.movieid = ratings.movieid
where lower(title) like '%godfather, the%'
ORDER BY ratings.timestamp ASC;
