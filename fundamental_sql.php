<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi ABS() pada kolom MarkGrowth
    select StudentID, FirstName, LastName, Semester1, Semester2, ABS(MarkGrowth) as MarkGrowth from students;

    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi CEILING() pada kolom Semester1 dan Semester2
    select StudentID, FirstName, LastName, CEILING(Semester1) as Semester1, CEILING(Semester2) as Semester2, MarkGrowth from students;

    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi FLOOR() pada kolom Semester1 dan Semester2
    select StudentID, FirstName, LastName, FLOOR(Semester1) as Semester1, FLOOR(Semester2) as Semester2, MarkGrowth from students;

    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi ROUND() pada kolom Semester1 dan Semester2
    select StudentID, FirstName, LastName, ROUND(Semester1,1) as Semester1, ROUND(Semester2,1) as Semester2, MarkGrowth from students;

    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi SQRT() pada kolom Semester1
    select StudentID, FirstName, LastName, SQRT(Semester1) as Semester1, Semester2, MarkGrowth from students;

    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi MOD() pada kolom Semester1 serta fungsi EXP() pada kolom MarkGrowth
    select StudentID, FirstName, LastName, MOD(Semester1,2) as Semester1, Semester2, EXP(MarkGrowth) from students;
    
    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi CONCAT() pada kolom FirstName dan LastName serta menampilkan kolom Semester1 dan Semester2
    SELECT StudentID, CONCAT(FirstName, LastName) as Name, Semester1, Semester2, MarkGrowth FROM students;
    
    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi SUBSTRING() pada kolom Email
    SELECT StudentID, SUBSTRING_INDEX(Email, '@', 1) as Name FROM students; 

    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi SUBSTR() pada kolom FirstName
    SELECT StudentID, SUBSTR(FirstName, 2, 3) as Initial FROM students;

    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi LENGTH() pada kolom FirstName
    SELECT StudentID, FirstName, LENGTH(FirstName) as Total_Char FROM students;

    // Query untuk menampilkan data dari tabel students dengan menerapkan fungsi REPLACE() pada kolom Email
    SELECT StudentID, Email, REPLACE(Email, 'yahoo', 'gmail') as New_Email FROM students;
    ?>
    
</body>
</html>