USE codeup_test_db;

/*Write SELECT statements to output each of the following with a caption:*/

SELECT * FROM albums;
/*All albums in your table. Output:
+----+-----------------+---------------------------------------+--------------+-------------------+-----------------------------+
| id | artist          | name                                  | release_date | sales_in_millions | genre                       |
+----+-----------------+---------------------------------------+--------------+-------------------+-----------------------------+
|  1 | Michael Jackson | Thriller                              |         1982 |              42.4 | Pop, rock, R&B              |
|  2 | Eagles          | Their Greatest Hits (1971–1975)       |         1976 |              32.2 | Rock, soft rock, folk rock  |
|  3 | Fleetwood Mac   | Rumours                               |         1977 |              27.9 | Soft rock                   |
|  4 | Whitney Houston | The Bodyguard                         |         1992 |              27.4 | Soundtrack/R&B, soul, pop   |
|  5 | AC/DC           | Back in Black                         |         1980 |              25.9 | Hard rock                   |
|  6 | Pink Floyd      | The Dark Side of the Moon             |         1973 |              22.7 | Progressive rock            |
|  7 | Meat Loaf       | Bat Out of Hell                       |         1977 |              20.6 | Hard rock, progressive rock |
|  8 | Bee Gees        | Saturday Night Fever                  |         1977 |              19.0 | Disco                       |
|  9 | The Beatles     | Sgt. Pepper's Lonely Hearts Club Band |         1967 |              13.1 | Rock                        |
+----+-----------------+---------------------------------------+--------------+-------------------+-----------------------------+
9 rows in set (0.00 sec)*/


SELECT name, release_date FROM albums WHERE release_date < 1980;
/*All albums released before 1980. Output:
+---------------------------------------+--------------+
| name                                  | release_date |
+---------------------------------------+--------------+
| Their Greatest Hits (1971–1975)       |         1976 |
| Rumours                               |         1977 |
| The Dark Side of the Moon             |         1973 |
| Bat Out of Hell                       |         1977 |
| Saturday Night Fever                  |         1977 |
| Sgt. Pepper's Lonely Hearts Club Band |         1967 |
+---------------------------------------+--------------+
6 rows in set (0.00 sec)*/

SELECT name, artist FROM albums WHERE artist = 'Michael Jackson';
/*All albums by Michael Jackson. Output:
+----------+-----------------+
| name     | artist          |
+----------+-----------------+
| Thriller | Michael Jackson |
+----------+-----------------+
1 row in set (0.00 sec)*/


UPDATE albums 
SET sales_in_millions = sales_in_millions* 10
WHERE sales_in_millions is not null;
SELECT name, sales_in_millions FROM albums;
/*Make all the albums 10 times more popular (sales * 10). Output:
+---------------------------------------+-------------------+
| name                                  | sales_in_millions |
+---------------------------------------+-------------------+
| Thriller                              |             424.0 |
| Their Greatest Hits (1971–1975)       |             322.0 |
| Rumours                               |             279.0 |
| The Bodyguard                         |             274.0 |
| Back in Black                         |             259.0 |
| The Dark Side of the Moon             |             227.0 |
| Bat Out of Hell                       |             206.0 |
| Saturday Night Fever                  |             190.0 |
| Sgt. Pepper's Lonely Hearts Club Band |             131.0 |
+---------------------------------------+-------------------+
9 rows in set (0.00 sec)*/


UPDATE albums 
SET release_date = release_date - 50
WHERE release_date < 1980;
SELECT name, release_date FROM albums;
/*Move all the albums before 1980 back 50 years. (Earliest date in the YEAR format is 1901, so tweaked this question to move back 50 years, instead of back to the 1800s.) Output:
+---------------------------------------+--------------+
| name                                  | release_date |
+---------------------------------------+--------------+
| Thriller                              |         1982 |
| Their Greatest Hits (1971–1975)       |         1926 |
| Rumours                               |         1927 |
| The Bodyguard                         |         1992 |
| Back in Black                         |         1980 |
| The Dark Side of the Moon             |         1923 |
| Bat Out of Hell                       |         1927 |
| Saturday Night Fever                  |         1927 |
| Sgt. Pepper's Lonely Hearts Club Band |         1917 |
+---------------------------------------+--------------+
9 rows in set (0.00 sec)*/


UPDATE albums 
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT name, artist FROM albums WHERE artist = 'Peter Jackson';
/*Change "Michael Jackson" to "Peter Jackson". Output:
+----------+---------------+
| name     | artist        |
+----------+---------------+
| Thriller | Peter Jackson |
+----------+---------------+
1 row in set (0.00 sec)*/

