-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movie_actors;

-- Create new tables, according to your domain model
CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year INTEGER,
  rating TEXT,
  director TEXT
) ;

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name_ TEXT,
  character_ TEXT
) ;

CREATE TABLE movie_actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movies_id INTEGER,
  actors_id INTEGER
) ;

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
INSERT INTO movies (
    title,
    year,
    rating,
    director
)
VALUES (
    "Batman Begins",
    2005,
    "PG-13",
    "Christopher Nolan"
);
INSERT INTO movies (
    title,
    year,
    rating,
    director
)
VALUES (
    "The Dark Knight",
    2008,
    "PG-13",
    "Christopher Nolan"
);
INSERT INTO movies (
    title,
    year,
    rating,
    director
)
VALUES (
    "The Dark Knight Rises",
    2012,
    "PG-13",
    "Christopher Nolan"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Christian Bale",
    "Bruce Wayne"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Michael Caine",
    "Alfred"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Liam Neeson",
    "Ra's Al Ghul"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Katie Holmes",
    "Rachel Dawes"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Gary Oldman",
    "Commissioner Gordon"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Heath Ledger",
    "Joker"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Aaron Eckhart",
    "Harvey Dent"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Maggie Gyllenhaal",
    "Rachel Dawes"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Tom Hardy",
    "Bane"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Joseph Gordon-Levitt",
    "John Blake"
);
INSERT INTO actors (
    name_,
    character_
)
VALUES (
    "Anne Hathaway",
    "Selina Kyle"
);

INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    1,
    1
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    1,
    2
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    1,
    3
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    1,
    4
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    1,
    5
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    2,
    1
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    2,
    6
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    2,
    7
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    2,
    2
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    2,
    8
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    3,
    1
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    3,
    5
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    3,
    9
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    3,
    10
);
INSERT INTO movie_actors (
    movies_id,
    actors_id
)
VALUES (
    3,
    11
);

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
SELECT title, year, rating, director FROM movies;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""

-- The SQL statement for the cast output
SELECT title, name_, character_ FROM movie_actors
INNER JOIN movies ON movies.id = movies_id
INNER JOIN actors ON actors.id = actors_id;