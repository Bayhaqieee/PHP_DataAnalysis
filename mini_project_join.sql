-- This SQL script retrieves distinct customer information from the `ms_pelanggan` table
-- who have purchased specific products from the `tr_penjualan` table.
SELECT DISTINCT 
    mp.kode_pelanggan, 
    mp.nama_customer, 
    mp.alamat
FROM ms_pelanggan mp
JOIN tr_penjualan tp 
    ON mp.kode_pelanggan = tp.kode_pelanggan
WHERE tp.nama_produk IN ('Kotak Pensil DQLab', 'Flashdisk DQLab 32 GB', 'Sticky Notes DQLab 500 sheets');