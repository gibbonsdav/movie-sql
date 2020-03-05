1#select all columns and rows from movie table
SELECT * FROM movies.movies;

2#Select only the title and id of the first 10 rows
SELECT id, title FROM movies.movies limit 10;

3#Find the movie with the id of 485
SELECT * FROM movies.movies WHERE id=485;

4#Find the id (only that column) of the movie Made in America (1993)
SELECT id FROM movies.movies WHERE title="Made in America (1993)";

5#Find the first 10 sorted alphabetically
SELECT * FROM movies.movies ORDER BY title limit 10;

6#Find all movies from 2002
SELECT * FROM movies.movies WHERE title LIKE '%2002%';

7#Find out what year the Godfather came out
SELECT * FROM movies.movies WHERE title LIKE '%godfather, the%';

8# Without using joins find all the comedies
SELECT * FROM movies.movies WHERE genres LIKE '%comedy%';

9#Find all comedies in the year 2000
SELECT * FROM movies.movies WHERE genres LIKE '%comedy%' AND title LIKE '%2000%';

10# Find any movies that are about death and are a comedy
SELECT * FROM movies.movies WHERE genres LIKE '%comedy%' AND title LIKE '%death%';

11# Find any movies from either 2001 or 2002 with a title containing super
SELECT * FROM movies.movies WHERE (title LIKE '%2001%' OR '%2002%') AND title LIKE '%super%';

12#Create a new table called actors (We are going to pretend the actor can only play in one movie). The table should include name, character name, foreign key to movies and date of birth at least plus an id field.

13# Pick 3 movies and create insert statements for 10 actors each. You should use the multi value insert statements
Use movies;
INSERT INTO Actors (aname, charactername, foreignkey, DOB)
VALUES ('Laurie Metcalf', 'andys mom', 1, '01/01/1900'), 
('Andrew Stanton', 'toyactor', 1, '02/02/1900'), 
('R Lee Ermey', 'Sergeant', 1, '03/03/1982'), 
('Joe Ranft', 'Lenny', 1, '04/04/1980'), 
('Jack Angel', 'Rocky Gibraltar', 1, '01/01/1970'),
('Penn Jillette', 'TV announcer', 1, '02/02/1960'),
('Debi Derryberry', 'Announcer', 1, '03/03/1900'),
('Bill Farmer', 'Announcer', 1, '05/05/1956'),
('Craig Good', 'Mission Control', 1, '01/01/1970'),
('Patrick Pinney', 'Angry Driver', 1, '02/02/1970');
###I did the same statements for the other 20 records

#14Create a new column in the movie table to hold the MPAA rating. UPDATE 5 different movies to their correct rating
UPDATE movies.movies
SET 
rating = 'G'
WHERE 
id = 1;

#15Find all the ratings for the movie Godfather, show just the title and the rating
SELECT movies.title, ratings.rating
FROM movies
LEFT JOIN ratings ON movies.id = ratings.movie_id
WHERE movies.id = 858;

16# Order the previous objective by newest to oldest
SELECT movies.title, ratings.rating
FROM movies
LEFT JOIN ratings ON movies.id = ratings.movie_id
WHERE movies.id = 858
ORDER BY timestamp ASC;

#17 Find the comedies from 2005 and get the title and imdbid from the links table
SELECT movies.title, links.imdb_Id 
FROM movies 
LEFT JOIN links ON movies.id = links.movie_Id
WHERE genres LIKE '%comedy%' AND title LIKE '%2005%'; 

#18 Get the average rating for a movie
SELECT movies.title, AVG(ratings.rating) AS avgrating FROM movies 
LEFT JOIN ratings  ON movies.id = ratings.movie_id
WHERE movies.title LIKE '%Godfather%'
GROUP BY movies.title

#19 Get the total ratings for a movie

#20 Get the total movies for a genre


#21 Get the average rating for a user


#22Find the user with the most ratings


#23
#24



