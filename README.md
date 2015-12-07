This project uses Python and a PostgreSQL database to hold data 
regarding a tournament using the Swiss pairing style.

Includes:
-- functions for the tournament in python
1.	tournament.py 
-- 	setting up the db and creating required tables
2.	tournament.sql 
-- Tests all cases for the tournament
3. tournament_test.py 

To run:
	Install Vagrant / VirtualBox / Git
	clone this repository 
	use vagrant up in your vagrant/ directory
	login using vagrant ssh
	cd to /vagrant/tournament
	execute command python tournament_test.python

Expected Output:
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success!  All tests pass!
	