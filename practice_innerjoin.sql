-- SQL query to Inner Join ms_item_warna and ms_item_kategori table
SELECT * FROM ms_item_warna
INNER JOIN ms_item_kategori
ON ms_item_warna.nama_barang = ms_item_kategori.nama_item;

-- SQL query to show all data from tr_penjualan and ms_produk table
SELECT * FROM tr_penjualan;
SELECT * FROM ms_produk;

-- SQL query to Inner Join tr_penjualan and ms_produk table
SELECT * FROM tr_penjualan
INNER JOIN ms_produk
ON tr_penjualan.kode_produk = ms_produk.kode_produk;

-- SQL query to Inner Join tr_penjualan and ms_produk table with selected columns
SELECT tr_penjualan.kode_transaksi, tr_penjualan.kode_pelanggan, tr_penjualan.kode_produk, ms_produk.nama_produk, ms_produk.harga, tr_penjualan.qty, ms_produk.harga*tr_penjualan.qty as total
FROM tr_penjualan
INNER JOIN ms_produk
ON tr_penjualan.kode_produk = ms_produk.kode_produk;