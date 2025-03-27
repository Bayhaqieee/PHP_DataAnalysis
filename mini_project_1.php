<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    select kode_pelanggan, nama_produk, qty, harga, qty*harga AS total from tr_penjualan where qty*harga >= 100000 ORDER BY total DESC;
    ?>
    
</body>
</html>