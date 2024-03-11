drop SCHEMA if exists Movies;
CREATE SCHEMA if not exists Movies;
use Movies;

drop table if exists Rating;
drop table if exists Reviewer;
drop table if exists Movie_Genres;
drop table if exists Movie_Direction;
drop table if exists Movie_cast;
drop table if exists Movie;
drop table if exists Genres;
drop table if exists Director;
drop table if exists Actor;

CREATE TABLE Actor(
	act_id int PRIMARY KEY,
	act_fname varchar(20) NULL,
	act_lname varchar(20) NULL,
	act_gender varchar(1) NULL
);

CREATE TABLE Director(
	dir_id int PRIMARY KEY,
	dir_fname varchar(20) NULL,
	dir_lname varchar(20) NULL
);



CREATE TABLE Genres(
	gen_id int PRIMARY KEY,
	gen_title varchar(20) NULL
);

 
CREATE TABLE Movie(
	mov_id int PRIMARY KEY,
	mov_title varchar(50) NULL,
	mov_year int NULL,
	mov_time int NULL,
	mov_lang varchar(15) NULL,
	mov_dt_rel date NULL,
	mov_rel_country varchar(5) NULL
);



CREATE TABLE Movie_cast(
	mov_id int NULL,
	act_id int NULL,
	role varchar(30) NULL
);



CREATE TABLE Movie_Direction(
	mov_id int NULL,
	dir_id int NULL
);



CREATE TABLE Movie_Genres(
	mov_id int NULL,
	gen_id int NULL
);



CREATE TABLE Rating(
	mov_id int NULL,
	rev_id int NULL,
	rev_stars numeric(4, 2) NULL,
	num_o_ratings int NULL
);



CREATE TABLE Reviewer(
	rev_id int NULL,
	rev_name varchar(30) NULL
);

INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (101, 'James', 'Stewart', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (102, 'Deborah', 'Kerr', 'F');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (103, 'Peter', 'OToole', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (104, 'Robert', 'De Niro', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (105, 'F. Murray', 'Abraham', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (106, 'Harrison', 'Ford', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (107, 'Nicole', 'Kidman', 'F');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (108, 'Stephen', 'Baldwin', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (109, 'Jack', 'Nicholson', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (110, 'Mark', 'Wahlberg', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (111, 'Woody', 'Allen', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (112, 'Claire', 'Danes', 'F');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (113, 'Tim', 'Robbins', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (114, 'Kevin', 'Spacey', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (115, 'Kate', 'Winslet', 'F');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (116, 'Robin', 'Williams', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (117, 'Jon', 'Voight', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (118, 'Ewan', 'McGregor', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (119, 'Christian', 'Bale', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (120, 'Maggie', 'Gyllenhaal', 'F');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (121, 'Dev', 'Patel', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (122, 'Sigourney', 'Weaver', 'F');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (123, 'David', 'Aston', 'M');
INSERT INTO  Actor (act_id, act_fname, act_lname, act_gender) VALUES (124, 'Ali', 'Astin', 'F');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (125, 'James', 'Camer', 'M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (126, 'Kill', 'Joy', 'F');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (127, 'John', 'AbH', 'M');
INSERT INTO actor (act_id, act_fname, act_lname, act_gender) VALUES (128, 'Stress', 'Don', 'M');

INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (201, 'Alfred', 'Hitchcock');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (202, 'Jack', 'Clayton');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (203, 'David', 'Lean');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (204, 'Michael', 'Cimino');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (205, 'Milos', 'Forman');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (206, 'Ridley', 'Scott');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (207, 'Stanley', 'Kubrick');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (208, 'Bryan', 'Singer');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (209, 'Roman', 'Polanski');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (210, 'Paul', 'Thomas Anderson');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (211, 'Woody', 'Allen');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (212, 'Hayao', 'Miyazaki');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (213, 'Frank', 'Darabont');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (214, 'Sam', 'Mendes');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (215, 'James', 'Cameron');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (216, 'Gus', 'Van Sant');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (217, 'John', 'Boorman');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (218, 'Danny', 'Boyle');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (219, 'Christopher', 'Nolan');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (220, 'Richard', 'Kelly');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (221, 'Kevin', 'Spacey');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (222, 'Andrei', 'Tarkovsky');
INSERT INTO   Director (dir_id, dir_fname, dir_lname) VALUES (223, 'Peter', 'Jackson');


INSERT INTO   Genres (gen_id, gen_title) VALUES (1001, 'Action');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1002, 'Adventure');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1003, 'Animation');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1004, 'Biography');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1005, 'Comedy');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1006, 'Crime');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1007, 'Drama');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1008, 'Horror');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1009, 'Music');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1010, 'Mystery');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1011, 'Romance');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1012, 'Thriller');
INSERT INTO   Genres (gen_id, gen_title) VALUES (1013, 'War');
INSERT INTO  Genres (gen_id, gen_title) VALUES (1014, 'Scientific');
INSERT INTO  Genres (gen_id, gen_title) VALUES (1015, 'Sci-fi');
INSERT INTO  Genres (gen_id, gen_title) VALUES (1016, 'Fantasy');
INSERT INTO  Genres (gen_id, gen_title) VALUES (1017, 'Magic');



INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (901, 'Vertigo', 1958, 128, 'English', CAST('1958-08-24' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (902, 'The Innocents', 1961, 100, 'English', CAST('1962-02-19' AS Date), 'SW');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (903, 'Lawrence of Arabia', 1962, 216, 'English', CAST('1962-12-11' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (904, 'The Deer Hunter', 1978, 183, 'English', CAST('1979-03-08' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (905, 'Amadeus', 1984, 160, 'English', CAST('1985-01-07' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (906, 'Blade Runner', 1982, 117, 'English', CAST('1982-09-09' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (907, 'Eyes Wide Shut', 1999, 159, 'English', NULL, 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (908, 'The Usual Suspects', 1995, 106, 'English', CAST('1995-08-25' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (909, 'Chinatown', 1974, 130, 'English', CAST('1974-08-09' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (910, 'Boogie Nights', 1997, 155, 'English', CAST('1998-02-16' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (911, 'Annie Hall', 1977, 93, 'English', CAST('1977-04-20' AS Date),  'USA');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (912, 'Princess Mononoke', 1997, 134, 'Japanese', CAST('2001-10-19' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (913, 'The Shawshank Redemption', 1994, 142, 'English', CAST('1995-02-17' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (914, 'American Beauty', 1999, 122, 'English', NULL,'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (915, 'Titanic', 1997, 194, 'English', CAST('1998-01-23' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (916, 'Good Will Hunting', 1997, 126, 'English', CAST('1998-06-03' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (917, 'Deliverance', 1972, 109, 'English', CAST('1982-10-05' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (918, 'Trainspotting', 1996, 94, 'English', CAST('1996-02-23' AS Date),  'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (919, 'The Prestige', 2006, 130, 'English', CAST('2006-11-10' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (920, 'Donnie Darko', 2001, 113, 'English', NULL,'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (921, 'Slumdog Millionaire', 2008, 120, 'English', CAST('2009-01-09' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (922, 'Aliens', 1986, 137, 'English', CAST('1986-08-29' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (923, 'Beyond the Sea', 2004, 118, 'English', CAST('2004-11-26' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (924, 'Avatar', 2009, 162, 'English', CAST('2009-12-17' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (926, 'Seven Samurai', 1954, 207, 'Japanese', CAST('1954-04-26' AS Date), 'JP');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (927, 'Spirited Away', 2001, 125, 'Japanese', CAST('2003-09-12' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (928, 'Back to the Future', 1985, 116, 'English', CAST('1985-12-04' AS Date), 'UK');
INSERT INTO   Movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country) VALUES (925, 'Braveheart', 1995, 178, 'English', CAST('1995-09-08' AS Date), 'UK');



INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (901, 101, 'John Scottie Ferguson');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (902, 102, 'Miss Giddens');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (903, 103, 'T.E. Lawrence');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (904, 104, 'Michael');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (905, 105, 'Antonio Salieri');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (906, 106, 'Rick Deckard');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (907, 107, 'Alice Harford');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (908, 108, 'McManus');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (910, 110, 'Eddie Adams');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (911, 111, 'Alvy Singer');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (912, 112, 'San');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (913, 113, 'Andy Dufresne');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (914, 114, 'Lester Burnham');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (915, 115, 'Rose DeWitt Bukater');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (916, 116, 'Sean Maguire');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (917, 117, 'Ed');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (918, 118, 'Renton');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (920, 120, 'Elizabeth Darko');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (921, 121, 'Older Jamal');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (922, 122, 'Ripley');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (923, 114, 'Bobby Darin');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (909, 109, 'J.J. Gittes');
INSERT INTO Movie_cast (mov_id, act_id, role) VALUES (919, 119, 'Alfred Borden');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (901, 105, 'Mr. Jonson');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (902, 113, 'Best Man');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (903, 122, 'Super Queen');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (904, 111, 'Gun Boy');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (905, 121, 'Judge');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (906, 101, 'Bad Man');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (907, 101, 'Villain');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (908, 123, 'Miramax');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (910, 109, 'A24');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (911, 124, 'Fox Searchlight');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (912, 101, 'Lionsgate');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (912, 122, 'Alex Bailey');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (913, 104, 'Weinstein Company');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (913, 102, 'Worker');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (914, 115, 'PickUP Boy');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (915, 123, 'Hotel Manager');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (920, 124, 'CID');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (923, 123, 'Pilot');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (919, 124, 'Dancer');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (916, 107, 'Fighter');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (917, 120, 'Murray Close');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (918, 106, 'Father Charls');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (921, 107, 'Monica Geller');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (922, 123, 'Police');
INSERT INTO movie_cast (mov_id, act_id, role) VALUES (909, 119, 'Judge');


INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (901, 201);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (902, 202);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (903, 203);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (904, 204);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (905, 205);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (906, 206);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (907, 207);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (908, 208);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (909, 209);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (910, 210);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (911, 211);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (912, 212);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (913, 213);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (914, 214);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (915, 215);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (916, 216);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (917, 217);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (918, 218);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (919, 219);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (920, 220);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (921, 218);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (922, 215);
INSERT INTO   Movie_Direction (mov_id, dir_id) VALUES (923, 221);


INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (922, 1001);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (917, 1002);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (903, 1002);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (912, 1003);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (911, 1005);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (908, 1006);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (913, 1006);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (926, 1007);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (928, 1007);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (918, 1007);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (921, 1007);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (902, 1008);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (923, 1009);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (907, 1010);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (927, 1010);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (901, 1010);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (914, 1011);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (906, 1012);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (904, 1013);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (922, 1001);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (917, 1002);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (903, 1002);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (912, 1003);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (911, 1005);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (908, 1006);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (913, 1006);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (926, 1007);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (928, 1007);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (918, 1007);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (921, 1007);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (902, 1008);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (923, 1009);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (907, 1010);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (927, 1010);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (901, 1010);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (914, 1011);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (906, 1012);
INSERT INTO   Movie_Genres (mov_id, gen_id) VALUES (904, 1013);


INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (901, 9001, 8.40, 263575);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (902, 9002, 7.90, 20207);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (903, 9003, 8.30, 202778);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (906, 9005, 8.20, 484746);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (924, 9006, 7.30, NULL);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (908, 9007, 8.60, 779489);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (909, 9008, NULL, 227235);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (910, 9009, 3.00, 195961);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (911, 9010, 8.10, 203875);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (912, 9011, 8.40, NULL);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (914, 9013, 7.00, 862618);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (915, 9001, 7.70, 830095);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (916, 9014, 4.00, 642132);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (925, 9015, 7.70, 81328);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (918, 9016, NULL, 580301);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (920, 9017, 8.10, 609451);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (921, 9018, 8.00, 667758);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (922, 9019, 8.40, 511613);
INSERT INTO   Rating (mov_id, rev_id, rev_stars, num_o_ratings) VALUES (923, 9020, 6.70, 13091);

INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9001, 'Righty Sock');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9002, 'Jack Malvern');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9003, 'Flagrant Baronessa');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9004, 'Alec Shaw');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9005, NULL);
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9006, 'Victor Woeltjen');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9007, 'Simon Wright');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9008, 'Neal Wruck');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9009, 'Paul Monks');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9010, 'Mike Salvati');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9011, NULL);
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9012, 'Wesley S. Walker');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9013, 'Sasha Goldshtein');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9014, 'Josh Cates');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9015, 'Krug Stillo');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9016, 'Scott LeBrun');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9017, 'Hannah Steele');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9018, 'Vincent Cadena');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9019, 'Brandt Sponseller');
INSERT INTO   Reviewer (rev_id, rev_name) VALUES (9020, 'Richard Adams');




