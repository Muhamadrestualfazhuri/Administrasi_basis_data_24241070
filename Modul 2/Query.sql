-- nama  = muhamad restu al fazhuri --
-- nim   = 24241070
-- menggunakan database
USE db_mart;
-- deskripsi
describe produk;
-- select statment
select nama_produk from produk;
-- ambil lebih dari 1 kolom
select nama_produk, harga from produk;
-- ambil semua kolom
select * from produk;

select kode_produk from produk;
select * from penjualan;

-- prefix dan alias
-- prefix adalah bagian dari db yg hirarki lebih tinggi
-- kolom ke tabel
select produk.nama_produk from produk;
-- kolom ke tabel ke db
select db_mart.produk.nama_produk from produk;

-- alias adalah nama sementara pengganti nama objek db
-- allias pada kolom 
select nama_produk as np from produk;
-- alias tabel
select nama_produk from produk as pr;

-- penggunaan prefix dan alias dlm 1 query
select pr.nama_produk from produk as pr;

-- latihan
-- case 1
SELECT p.nama_pelanggan, p.alamat FROM db_mart.pelanggan AS p;
-- case 2
SELECT pr.nama_produk, pr.harga FROM db_mart.produk AS pr;