-- Menampilkan total nilai semester 1 dan semester 2 dari tabel students
SELECT SUM(Semester1) as Total_1, SUM(Semester2) as Total_2 FROM students;

-- Menampilkan total nama depan dari tabel students
SELECT COUNT(FirstName) as Total_Student FROM students;

-- Menampilkan rata-rata nilai semester 1 dan semester 2 dari tabel students
SELECT AVG(Semester1) as AVG_1, AVG(Semester2) as AVG_2 FROM students;