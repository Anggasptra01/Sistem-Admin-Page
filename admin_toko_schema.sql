
CREATE DATABASE IF NOT EXISTS admin_toko;
USE admin_toko;

CREATE TABLE IF NOT EXISTS produk (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100),
  harga INT
);

CREATE TABLE IF NOT EXISTS stock_produk (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produk_id INT,
  jumlah INT
);

CREATE TABLE IF NOT EXISTS pembelian (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produk_id INT,
  jumlah INT,
  total INT,
  status ENUM('DIBELI', 'DIBATALKAN') DEFAULT 'DIBELI',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO produk (nama, harga) VALUES 
('Produk A', 10000), ('Produk B', 15000), ('Produk C', 20000),
('Produk D', 25000), ('Produk E', 30000), ('Produk F', 35000),
('Produk G', 40000), ('Produk H', 45000), ('Produk I', 50000),
('Produk J', 55000);
