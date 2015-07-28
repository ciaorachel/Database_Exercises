USE codeup_test_db;


SELECT name FROM albums WHERE artist = 'Pink Floyd';
/*The name of all albums by Pink Floyd. Output:
+---------------------------+
| name                      |
+---------------------------+
| The Dark Side of the Moon |
+---------------------------+
1 row in set (0.00 sec)*/


SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
/*The year Sgt. Pepper's Lonely Hearts Club Band was released. Output:
+--------------+
| release_date |
+--------------+
|         1967 |
+--------------+
1 row in set (0.00 sec)*/


SELECT genre FROM albums WHERE name = 'Saturday Night Fever';
/*The genre for Saturday Night Fever. Output: 
+-------+
| genre |
+-------+
| Disco |
+-------+
1 row in set (0.01 sec)*/

SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
/*Which albums were released in the 1990s. Output:
+---------------+
| name          |
+---------------+
| The Bodyguard |
+---------------+
1 row in set (0.00 sec)*/

SELECT name, sales_in_millions FROM albums WHERE sales_in_millions < 20;
/*Which albums had less than 20 million certified sales. Output:
+---------------------------------------+-------------------+
| name                                  | sales_in_millions |
+---------------------------------------+-------------------+
| Saturday Night Fever                  |              19.0 |
| Sgt. Pepper's Lonely Hearts Club Band |              13.1 |
+---------------------------------------+-------------------+
2 rows in set (0.00 sec)*/


SELECT name, genre FROM albums WHERE genre LIKE '%rock%';
/*All the albums in the rock genre. Is this all the rock albums in the table? No. (NOT SURE if this is the correct operator to use, as we have not covered it in class.) Output:
+---------------------------------------+-----------------------------+
| name                                  | genre                       |
+---------------------------------------+-----------------------------+
| Thriller                              | Pop, rock, R&B              |
| Their Greatest Hits (1971–1975)       | Rock, soft rock, folk rock  |
| Rumours                               | Soft rock                   |
| Back in Black                         | Hard rock                   |
| The Dark Side of the Moon             | Progressive rock            |
| Bat Out of Hell                       | Hard rock, progressive rock |
| Sgt. Pepper's Lonely Hearts Club Band | Rock                        |
+---------------------------------------+-----------------------------+
7 rows in set (0.00 sec)*/


