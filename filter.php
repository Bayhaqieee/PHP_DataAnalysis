<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filtering</title>
</head>
<body>
<?php
// Query untuk menampilkan data nama_produk dari tabel ms_produk
select * from ms_produk where nama_produk = 'Tas Travel Organizer DQLab';

// Query untuk menampilkan nama produk yang dicari dengan konsep OR
select * from ms_produk where nama_produk = 'Gantungan Kunci DQLAB' OR nama_produk = 'Tas Travel Organizer DQLab' OR nama_produk = 'Flashdisk DQLab 64 GB';

// Query untuk menampilkan produk dengan harga di atas 50.000
select * from ms_produk WHERE harga > 50000;

// Query untuk menampilkan produk dengan harga di bawah 50.000 dan nama produk Gantungan Kunci DQLab
select * from ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' AND harga < 50000;
?>
</body>
</html>
