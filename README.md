# Movie SQL Search

## Description

This assignment is intended to get more familiar with reading from a sql
database.  You will take the included sql and load the database.  Then 
complete the normal mode objectives

## Objectives

### Learning Objectives

After completing this assignment, you should understand:

* SQL Select Statements
* Inner Joins
* Left Joins
* Many to Many Relationships

## Details

### Deliverables

* A Git repo fork of movie-sql
* A .sql (text) file with each of the required queries 

### Requirements  

* Need to work on provided database

## Normal Mode

Complete the following query objectives:

* Select all columns and rows from the movies table
* Select only the title and id of the first 10 rows
* Find the movie with the id of 485
* Find the id (only that column) of the movie Made in America (1993)
* Find the first 10 sorted alphabetically
* Find all movies from 2002
* Find out what year the Godfather came out
* Without using joins find the comedies
* Find all comedies in the year 2000
* Find any movies that are about death and are a comedy
* Find any movies from either 2001 or 2002 with a title containing super

### With Joins
* Find all the ratings for the movie Godfather show just the title and the rating
* Order the previous objective by newest to oldest
* Find the comedies from 2005 and get the title and imdbid from the links table
* Find all movies that have no ratings
* Find all fantasy movies using the many to many join between movies and genres through movie_genre table.

## Hard Mode
* Use concat and research about internet movie database to produce a valid url from the imdbid
* Use concat and research about the movie database to produce a valid url from tmdbid
* Get the ratings for The Unusuals and convert the timestamp into a human readable date time
* Using SQL normalize the tags in the tags table.  Make them lowercased and replace the spaces with -
* The movie_genre table was produced by a sql query that could match a movie to the appropriate rows in genre without the use of the join table.  Reproduce that query.
