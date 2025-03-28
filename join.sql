SELECT * FROM ms_item_kategori;
SELECT * FROM ms_item_warna;

-- Query Instruction to Merge Table ms_item_kategori and ms_item_warna
SELECT * FROM ms_item_kategori, ms_item_warna
WHERE nama_barang = nama_item;

-- Query Instruction to Merge Table ms_item_kategori and ms_item_warna
SELECT * FROM ms_item_kategori, ms_item_warna
WHERE nama_barang = nama_item;

-- Query Instruction to Merge Table ms_item_kategori and ms_item_warna using Prefix
SELECT ms_item_kategori.*, ms_item_warna.*
FROM ms_item_warna, ms_item_kategori
WHERE nama_barang = nama_item;

-- Query Instruction to Merge Table ms_item_kategori and ms_item_warna without Condition
SELECT * FROM ms_item_kategori, ms_item_warna;

