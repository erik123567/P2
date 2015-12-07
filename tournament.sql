-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


-- Drop tournament database if it exists
DROP DATABASE IF EXISTS tournament;

-- Create Database 'Tournament'
CREATE DATABASE tournament;

\c tournament;

--Drop players and matches tables--
DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS players;






CREATE TABLE players (id serial primary key, name varchar(30) NOT NULL);

CREATE TABLE matches  (match_id serial primary key,
                        winner_id int references players(id),
                        loser_id int references players(id));
                        