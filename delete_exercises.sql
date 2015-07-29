USE codeup_test_db;
-- First:
SELECT name, release_date FROM albums WHERE release_date > 1991;
/*Albums released after 1991. Output:
+---------------+--------------+
| name          | release_date |
+---------------+--------------+
| The Bodyguard |         1992 |
+---------------+--------------+
1 row in set (0.00 sec)*/

-- Convert to:
DELETE FROM albums WHERE release_date > 1991;



-- First:
SELECT name, genre FROM albums WHERE genre = 'disco';
/*Albums with the genre "disco". Output:
+----------------------+-------+
| name                 | genre |
+----------------------+-------+
| Saturday Night Fever | Disco |
+----------------------+-------+
1 row in set (0.00 sec)*/

-- Convert to:
DELETE FROM albums WHERE genre = 'disco';


-- First:
SELECT name, artist FROM albums WHERE artist = 'Meat Loaf';
/*Albums by "Meat Loaf". Output: 
+-----------------+-----------+
| name            | artist    |
+-----------------+-----------+
| Bat Out of Hell | Meat Loaf |
+-----------------+-----------+
1 row in set (0.00 sec)*/

-- Convert to:
DELETE FROM albums WHERE artist = 'Meat Loaf';

/*Final output after all the deletes were run:
mysql> SELECT * FROM albums;
+----+-----------------+---------------------------------------+--------------+-------------------+----------------------------+
| id | artist          | name                                  | release_date | sales_in_millions | genre                      |
+----+-----------------+---------------------------------------+--------------+-------------------+----------------------------+
|  1 | Michael Jackson | Thriller                              |         1982 |              42.4 | Pop, rock, R&B             |
|  2 | Eagles          | Their Greatest Hits (1971–1975)       |         1976 |              32.2 | Rock, soft rock, folk rock |
|  3 | Fleetwood Mac   | Rumours                               |         1977 |              27.9 | Soft rock                  |
|  5 | AC/DC           | Back in Black                         |         1980 |              25.9 | Hard rock                  |
|  6 | Pink Floyd      | The Dark Side of the Moon             |         1973 |              22.7 | Progressive rock           |
|  9 | The Beatles     | Sgt. Pepper's Lonely Hearts Club Band |         1967 |              13.1 | Rock                       |
+----+-----------------+---------------------------------------+--------------+-------------------+----------------------------+
6 rows in set (0.00 sec)
*/
