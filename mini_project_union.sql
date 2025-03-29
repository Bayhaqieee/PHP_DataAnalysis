-- SQL UNION example with different tables and different column names
SELECT nama_produk, kode_produk, harga 
FROM ms_produk_1
WHERE harga < 100000
UNION
SELECT nama_produk, kode_produk, harga 
FROM ms_produk_2
WHERE harga < 50000