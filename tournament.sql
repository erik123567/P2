--This file contains the setup and tables required for the tournament module


-- Drop tournament database if it exists
DROP DATABASE IF EXISTS tournament;

-- Create Database 'Tournament'
CREATE DATABASE tournament;
--Connect to tournament
\connect tournament;

--Drop players and matches tables
DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS players;






CREATE TABLE players (id serial primary key, name varchar(30) NOT NULL);

CREATE TABLE matches  (match_id serial primary key,
                        winner_id int references players(id),
                        loser_id int references players(id));

CREATE VIEW standings(id,name,wins,matches) AS
	SELECT players.id as id, 
		players.name as name,
		(SELECT count(*) FROM matches WHERE players.id = matches.winner_id) as wins,
 		(SELECT count(*) FROM matches WHERE players.id = matches.loser_id OR 
		players.id = matches.winner_id) as matches
	FROM players
	ORDER BY wins DESC;		