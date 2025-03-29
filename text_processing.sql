SELECT * FROM dqlabdatateks;

-- Query to find the position of the first occurrence of '|||'
SELECT LOCATE('|||', isi) as posisi_1
FROM dqlabdatateks;

-- SQL query to find the position of the second occurrence of '|||'
SELECT LOCATE('|||', isi, LOCATE('|||',isi) + 1) as posisi_2
FROM dqlabdatateks;

-- SQL query to find the position of the third occurrence of '|||'
SELECT LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) as posisi_3
FROM dqlabdatateks;

-- SQL query to select the first name from the text
SELECT LEFT(isi, LOCATE('|||', isi) -1) as Nama
FROM dqlabdatateks;

-- SQL query to extract the KotaLahir from the text
SELECT SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3) as KotaLahir
FROM dqlabdatateks;

-- SQL query to extract the TanggalLahir from the text
SELECT SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, 
LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3) as TanggalLahir
FROM dqlabdatateks;

-- SQL query to extract the Propinsi from the text  
SELECT RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - 3 + 1) as Propinsi
FROM dqlabdatateks;

-- SQL query to extract the TempatLahir from the text
SELECT CONCAT_WS(' - ',
SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 3) - LOCATE('|||', isi) - 3),
RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - 3 + 1)) AS TempatLahir
FROM dqlabdatateks;

-- SQL query to extract the DD from the text
SELECT LEFT(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 2), 2) AS DD
FROM dqlabdatateks;

-- SQL query to extract the YYYY from the text
SELECT RIGHT(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4) AS YYYY
FROM dqlabdatateks;

-- SQL query to extract the Bulan from the text
SELECT SUBSTR(
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 
4, 
LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) AS Bulan
FROM dqlabdatateks;

-- SQL query to extract the MM from the text by Encoding the month names to their respective numbers
SELECT CASE
WHEN
SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Januari'
THEN '01'

WHEN
SUBSTR(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3), 4, LENGTH(SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3)) - 8) = 'Februari'
THEN '02'

ELSE '00'
END AS MM 
FROM dqlabdatateks;