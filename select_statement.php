
<?php
// Query untuk menampilkan semua data dari tabel ms_produk
select * from ms_produk;

// Query untuk menampilkan data nama_produk dari tabel ms_produk
select nama_produk from ms_produk;

// Query untuk menampilkan data nama_produk dan harga dari tabel ms_produk
select nama_produk, harga from ms_produk;

// Query untuk menampilkan data nama_produk dan harga dari tabel ms_produk dengan batasan 5 baris
select nama_produk, harga from ms_produk limit 5;

// Query untuk menampilkan data nama_produk dan harga dari tabel ms_produk dengan batasan 5 baris dan diurutkan berdasarkan harga dari yang terkecil
select distinct nama_customer,alamat from ms_pelanggan;

// Query untuk menampilkan kode_produk dari tabel ms_produk
select ms_produk.kode_produk from ms_produk;

// Query untuk menggunakan alias pada kolom
select no_urut AS nomor,nama_produk AS nama from ms_produk;

// Query untuk menggunakan alias pada kolom tanpa menggunakan AS
select no_urut nomor,nama_produk nama from ms_produk;

// Query untuk mengganti nama kolom dari harga menjadi harga_jual yang diambil dari ms_produk
select ms_produk.harga as harga_jual from ms_produk;

// Query untuk menampilkan semua data dari tabel ms_produk dengan menggunakan alias
select * from ms_produk t2;

// Query untuk menampilkan data nama_produk dan harga dari tabel ms_produk dengan menggunakan alias
select t2.nama_produk, t2.harga from ms_produk t2;
?>