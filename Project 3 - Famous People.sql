/*
I created these two tables to practice common JOINs.
You can view this project at the following link:
https://www.khanacademy.org/computer-programming/spin-off-of-project-famous-people/4934973341351936
*/

CREATE TABLE actors 
(id INTEGER PRIMARY KEY AUTOINCREMENT
, fullname TEXT
, age INTEGER
, nationality TEXT);

INSERT INTO actors (fullname, age, nationality) VALUES ("Tom Hanks", 67, "USA");
INSERT INTO actors (fullname, age, nationality) VALUES ("Denzel Washington", 68, "USA");
INSERT INTO actors (fullname, age, nationality) VALUES ("Ian McKellan", 84, "UK");
INSERT INTO actors (fullname, age, nationality) VALUES ("Hugh Jackman", 55, "Australia");
INSERT INTO actors (fullname, age, nationality) VALUES ("Jennifer Lawrence", 33, "USA");
INSERT INTO actors (fullname, age, nationality) VALUES ("Meryl Streep", 75, "USA");
INSERT INTO actors (fullname, age, nationality) VALUES ("Cate Blanchett", 54, "Australia");
INSERT INTO actors (fullname, age, nationality) VALUES ("Michael Caine", 90, "UK");
INSERT INTO actors (fullname, age, nationality) VALUES ("Meg Ryan", 61, "USA");
INSERT INTO actors (fullname, age, nationality) VALUES ("Patrick Stewart", 83, "UK");


CREATE TABLE movies (
id INTEGER PRIMARY KEY AUTOINCREMENT
, actor_id INTEGER
, title TEXT
, release_year TEXT
);


INSERT INTO movies (actor_id, title, release_year) VALUES (1, "Forrest Gump", "1994");
INSERT INTO movies (actor_id, title, release_year) VALUES (1, "You've Got Mail", "1998");
INSERT INTO movies (actor_id, title, release_year) VALUES (1, "Sleepless in Seattle", "1993");
INSERT INTO movies (actor_id, title, release_year) VALUES (1, "Philadelphia", "1993");
INSERT INTO movies (actor_id, title, release_year) VALUES (2, "Training Day", "2001");
INSERT INTO movies (actor_id, title, release_year) VALUES (2, "Remember the Titans", "2000");
INSERT INTO movies (actor_id, title, release_year) VALUES (2, "Courage Under Fire", "1996");
INSERT INTO movies (actor_id, title, release_year) VALUES (2, "Philadelphia", "1993");
INSERT INTO movies (actor_id, title, release_year) VALUES (3, "Lord of the Rings: Fellowship of the Ring", "2001");
INSERT INTO movies (actor_id, title, release_year) VALUES (3, "X-Men: Days of Future Past", "2014");
INSERT INTO movies (actor_id, title, release_year) VALUES (3, "X-Men", "2000");
INSERT INTO movies (actor_id, title, release_year) VALUES (4, "X-Men", "2000");
INSERT INTO movies (actor_id, title, release_year) VALUES (4, "X-Men: Days of Future Past", "2014");
INSERT INTO movies (actor_id, title, release_year) VALUES (4, "The Prestige", "2006");
INSERT INTO movies (actor_id, title, release_year) VALUES (4, "The Greatest Showman", "2017");
INSERT INTO movies (actor_id, title, release_year) VALUES (5, "Don't Look Up", "2021");
INSERT INTO movies (actor_id, title, release_year) VALUES (5, "X-Men: Days of Future Past", "2014");
INSERT INTO movies (actor_id, title, release_year) VALUES (5, "The Hunger Games", "2012");
INSERT INTO movies (actor_id, title, release_year) VALUES (5, "Silver Linings Playbook", "2012");
INSERT INTO movies (actor_id, title, release_year) VALUES (6, "Don't Look Up", "2021");
INSERT INTO movies (actor_id, title, release_year) VALUES (6, "The Devil Wears Prada", "2006");
INSERT INTO movies (actor_id, title, release_year) VALUES (6, "Mama Mia!", "2008");
INSERT INTO movies (actor_id, title, release_year) VALUES (6, "Into The Woods", "2014");
INSERT INTO movies (actor_id, title, release_year) VALUES (7, "Lord of the Rings: Fellowship of the Ring", "2001");
INSERT INTO movies (actor_id, title, release_year) VALUES (7, "Don't Look Up", "2021");
INSERT INTO movies (actor_id, title, release_year) VALUES (7, "Tár", "2022");
INSERT INTO movies (actor_id, title, release_year) VALUES (7, "Thor: Ragnarok", "2017");
INSERT INTO movies (actor_id, title, release_year) VALUES (8, "The Prestige", "2006");
INSERT INTO movies (actor_id, title, release_year) VALUES (8, "The Dark Knight", "2008");
INSERT INTO movies (actor_id, title, release_year) VALUES (8, "Inception", "2010");
INSERT INTO movies (actor_id, title, release_year) VALUES (8, "Miss Congeniality", "2000");
INSERT INTO movies (actor_id, title, release_year) VALUES (9, "You've Got Mail", "1998");
INSERT INTO movies (actor_id, title, release_year) VALUES (9, "Sleepless in Seattle", "1993");
INSERT INTO movies (actor_id, title, release_year) VALUES (9, "Courage Under Fire", "1996");
INSERT INTO movies (actor_id, title, release_year) VALUES (9, "When Harry Met Sally", "1989");
INSERT INTO movies (actor_id, title, release_year) VALUES (10, "X-Men: Days of Future Past", "2014");
INSERT INTO movies (actor_id, title, release_year) VALUES (10, "X-Men", "2000");
INSERT INTO movies (actor_id, title, release_year) VALUES (10, "Star Trek: First Contact", "1996");
INSERT INTO movies (actor_id, title, release_year) VALUES (10, "The Pagemaster", "1994");


SELECT * FROM actors;
SELECT * FROM movies;


/* Return actors not from USA with their movie titles and release year */
SELECT actors.fullname, actors.nationality, movies.title, movies.release_year
FROM actors
JOIN movies
ON actors.id = movies.actor_id
WHERE nationality IS NOT "USA"
GROUP BY release_year
ORDER BY fullname, release_year DESC;


/* Return all the actors, their age, and their nationality that were in X-Men: Days of Future Past grouped by name. */
SELECT movies.title, actors.fullname, actors.nationality, actors.age
FROM movies
JOIN actors
ON movies.actor_id = actors.id
WHERE title = "X-Men: Days of Future Past"
GROUP BY fullname
;
