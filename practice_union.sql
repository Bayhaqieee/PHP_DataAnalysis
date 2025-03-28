-- SQL UNION example
SELECT * FROM tabel_A
UNION
SELECT * FROM tabel_B;

-- SQL UNION example with WHERE clause
SELECT * FROM tabel_A
WHERE kode_produk = 'prod-04'
UNION
SELECT * FROM tabel_B
WHERE kode_produk = 'prod-04';

-- SQL UNION example with WHERE clause and different column names
SELECT * FROM tabel_A
WHERE kode_pelanggan = 'dqlabcust03'
UNION
SELECT * FROM tabel_B
WHERE kode_pelanggan = 'dqlabcust03';

-- SQL UNION example for different tables with different column names
-- Assuming Customers and Suppliers have similar structure
SELECT CustomerName, ContactName, City, PostalCode FROM Customers
UNION
SELECT SupplierName, ContactName, City, PostalCode FROM Suppliers;