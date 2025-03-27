<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    // Query untuk menampilkan data dari tabel dqlabregex yang kota diakhiri dengan 'ng'
    SELECT * FROM dqlabregex WHERE kota REGEXP 'ng$'

    // Query untuk menampilkan data dari tabel dqlabregex yang dimana staff_pencatat diawali dengan 'Sen' dan diakhiri dengan 'ja'
    SELECT * FROM dqlabregex WHERE staf_pencatat REGEXP 'Sen.?ja'

    // Query untuk menampilkan data dari tabel dqlabregex yang jumlah_member tidak diawali dengan angka
    SELECT * FROM dqlabregex WHERE jumlah_member REGEXP '[^0-9]'

    // Query untuk menampilkan data dari tabel dqlabregex yang staf_pencatat diawali dengan 'AN'
    SELECT * FROM dqlabregex WHERE REGEXP_LIKE(staf_pencatat, '^AN')
    
    // Query untuk menampilkan data dari tabel dqlabregex yang staf_pencatat diakhiri dengan 'ja' dan tidak case sensitive
    SELECT * FROM dqlabregex WHERE REGEXP_LIKE( staf_pencatat,'sen.?ja','i')

    // Query untuk menampilkan data dari tabel dqlabregex yang jumlah_member tidak diawali dengan angka dan tidak case sensitive
    SELECT * FROM dqlabregex WHERE REGEXP_LIKE( jumlah_member, '[^0-9]', 'i')

    // Query untuk mengganti anomali pada kata 'Senja' (Sendja, Sentja, etc.) menjadi 'Senja' pada kolom staf_pencatat
    SELECT REGEXP_REPLACE(staf_pencatat, 'Sen.?ja', 'Senja') AS pencatat FROM dqlabregex

    // Query untuk menghapus karakter selain angka pada kolom jumlah_member
    SELECT no_pencatatan, tanggal_catat, kota, REGEXP_REPLACE(jumlah_member, '[^0-9]', "") AS jumlah_member, staf_pencatat FROM dqlabregex

    // Query untuk mengubah format tanggal dari 'dd-mm-yyyy' menjadi 'mm/dd/yyyy' pada kolom tanggal_catat
    SELECT tanggal_catat, REGEXP_REPLACE(tanggal_catat, '([0-9]{2})-([0-9]{2})-([0-9]{4})', '$2/$1/$3') AS tanggal_pencatatan FROM dqlabregex
    ?>
</body>
</html>