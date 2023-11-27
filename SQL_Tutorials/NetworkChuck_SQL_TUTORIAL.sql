--CREATE TABLE tea_table(
--id int,
--name varchar(255),
--region varchar(255),
--tea_type varchar(255)
--)

 
--INSERT INTO tea_table VALUES( 
--1, 'Mango', 'Ethiopia', 'Black tea')

--INSERT INTO tea_table
--VALUES
--(2, 'Docker run', 'Mexico', 'Green Tea'),
--(3, 'on-call', 'Tanzania', 'Chamomile Tea')


INSERT INTO tea_table
VALUES
(4, 'HP', 'Somalia', 'Green Tea'),
(5, 'on-call', 'Tanzania', 'Chamomile Tea'),
(8, 'Mars', 'Kenya', 'Black Tea'),
(6, 'Jeep', 'China', 'Green Tea'),
(7, 'IBM', 'Peru', 'Green Tea')

SELECT * 
FROM tea_table
WHERE tea_type = 'Green Tea'


UPDATE tea_table SET name = 'SQL' WHERE region = 'Ethiopia'

ALTER TABLE tea_table ADD Antioxidants BIT

