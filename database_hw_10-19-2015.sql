"""Select all columns and rows from the movies table"""
SELECT *
FROM movies;

"""Select only the title and id of the first 10 rows"""
SELECT MOVIES.title, MOVIES.movieid
FROM movies
LIMIT 10;

"""Find the movie with the id of 485"""
SELECT *
FROM movies
WHERE movieid = 485;

"""Find the id (only that column) of the movie Made in America (1993)"""
SELECT *
FROM movies
WHERE title LIKE '%Made in America (1993)%';

"""Find the first 10 sorted alphabetically"""
SELECT *
from movies
ORDER BY movies.title ASC
limit 10;

"""Find all movies from 2002"""
SELECT *
FROM movies
WHERE TITLE LIKE '%(2002)%';

"""Find out what year the Godfather came out"""
SELECT *
from movies
where title like '%Godfather, The%';

"""Without using joins find all the comedies"""
SELECT *
FROM movies
where genres like '%Comedy%';

"""Find all comedies in the year 2000"""v
SELECT *
FROM movies
where title like '%(2002)%' and genres like '%Comedy%';

"""Find any movies that are about death and are a comedy"""
SELECT *
from movies
where genres like '%Comedy%' and title like '%Death%';

"""Find any movies from either 2001 or 2002 with a title containing super"""
SELECT *
from movies
WHERE (title like '%(2001)%' or title like '%(2002%)') and lower(title) like '%super%';

"""Find all the ratings for the movie Godfather, show just the title and the rating"""
SELECT movies.title, ratings.rating
from movies join ratings on movies.movieid = ratings.movieid
where movies.title like '%Godfather, The%';

"""Order the previous objective by newest to oldest"""
SELECT movies.title, ratings.rating
from movies join ratings on movies.movieid = ratings.movieid
where movies.title like '%Godfather, The%'
order by timestamp DESC;

"""Find the comedies from 2005 and get the title and imdbid from the links table"""
SELECT movies.title, links.imdbid
from movies join links on links.movieid = movies.movieid
where movies.title like '%(2005)%' and lower(movies.genres) like '%comedy%';

"""Find all movies that have no ratings"""
SELECT movies.title, ratings.rating
from  movies LEFT JOIN ratings on movies.movieid = ratings.movieid
where rating ISNULL;

"""Find all fantasy movies using the many to many join between movies """
"""and genres through movie_genre table."""
SELECT *
from movies join movie_genre ON movies.movieid = movie_genre.movieid
join genre on movie_genre.genre_id = genre.id
where genre.genres like '%Fantasy%';
