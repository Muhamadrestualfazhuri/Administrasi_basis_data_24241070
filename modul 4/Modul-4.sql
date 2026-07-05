-- Nama : Muhamad restu al fazhuri
-- NIM	: 24241070
-- Kelas : B
-- Modul : 4

-- menggunakan database
USE db_mart;

-- ORDER BY, ASC/DESC, GROUP BY, HAVING
-- ORDER BY, menyusun urutan data sesuai nilai dari kolom
-- Praktek #1
SELECT nama_produk, qty FROM penjualan ORDER BY qty;
-- Ambil nama_produk, qty dari tabel penjualan urut berdasarkan qty

-- Praktek #2
SELECT nama_produk, qty FROM penjualan ORDER BY qty, nama_produk;
-- Ambil nama_produk, qty dari tabel penjualan urut berdasarkan qty dan nama_produk

-- Latihan Mandiri
-- Soal 1
SELECT * FROM penjualan ORDER BY qty, tgl_transaksi;
-- Soal 2
SELECT * FROM pelanggan ORDER BY nama_pelanggan;
-- Soal 3
SELECT * FROM pelanggan ORDER BY alamat;
-- ASC dan DESC pada ORDER BY
-- Praktek #3
-- Ambil nama_produk dan qty dari penjualan urut qty terbesar ke kecil
SELECT nama_produk, qty FROM penjualan ORDER BY qty DESC;

-- Praktek #4
-- Ambil nama_produk dan qty dari penjualan urut qty, nama_prdouk terbesar ke kecil
SELECT nama_produk, qty FROM penjualan ORDER BY qty DESC, nama_produk ASC;

-- Latihan Madiri
-- Soal 1
SELECT * FROM penjualan ORDER BY tgl_transaksi DESC, qty ASC;
-- Soal 2
SELECT * FROM pelanggan ORDER BY nama_pelanggan DESC;
-- Soal 3
SELECT * FROM pelanggan ORDER BY alamat DESC;

-- ORDER BY dari hasil perhitungan
-- Praktek #5
SELECT nama_produk, qty, harga, qty*harga AS total FROM penjualan ORDER BY harga*qty DESC;
-- Ambil nama_produk, qty, harga, dan total, urut berdasar total terbesar

-- Latihan Mandiri
select * from penjualan;
SELECT nama_produk, qty, harga, diskon_persen,
       (qty * harga) - (qty * harga * diskon_persen / 100) AS total_harga
FROM penjualan
ORDER BY (qty * harga) - (qty * harga * diskon_persen / 100) DESC;

-- WHERE dengan ORDER BY
-- mengurutkan (ORDER BY) hasil filter data (WHERE)
-- Praktek #6
-- Ambil semua nama_produk dan qty yang huruf depan 'F' urut qty
SELECT nama_produk, qty FROM penjualan WHERE nama_produk LIKE 'F%' ORDER BY qty DESC;

-- Latihan 
-- Soal 1 
SELECT * FROM penjualan WHERE diskon_persen > 0 ORDER BY harga DESC;
-- Soal 2
SELECT nama_produk, qty, harga FROM penjualan
WHERE harga >= 100000 ORDER BY harga DESC;

-- Soal 3
SELECT nama_produk, qty, harga FROM penjualan
WHERE harga >= 100000 OR nama_produk LIKE 'T%' ORDER BY diskon_persen DESC;


-- Fungsi Agregasi
-- fungsi untuk mengolah beberapa row (baris) data untuk menghasilkan nilai baru
-- bentuk SUM, AVERAGE, MAX, MIN
-- Praktek #7
-- Jumlahkan qty dari semua transaksi penjualan
SELECT SUM(qty) FROM penjualan;

-- Praktek #8
-- Fungsi Agregasi COUNT
SELECT COUNT(*) FROM penjualan;
-- Berapa rata-rata qty dari semua transaksi penjualan
SELECT AVG(qty) FROM penjualan;

-- Praktek #9
SELECT SUM(qty), COUNT(*) FROM penjualan;
-- Berapa jumlah transaksi

-- Praktek #10
SELECT AVG(qty), MAX(qty), MIN(qty) FROM penjualan;


-- Praktek #11

SELECT COUNT(DISTINCT nama_produk) FROM penjualan;


-- Praktek #12
SELECT COUNT(*), COUNT(DISTINCT nama_produk) FROM penjualan;
-- tampilkan jumlah seluruh baris pelanggan dan pelanggan unik

-- Praktek #13
SELECT nama_produk, MAX(qty) FROM penjualan;
-- Penggunaan kolom lain + Agregasi

-- GROUP BY
-- mengelompokkan data berdasarkan satu kolom yang dipilih
-- Praktek #14
SELECT nama_produk FROM penjualan GROUP BY nama_produk;
SELECT nama_produk FROM tr_penjualan; -- sebelum GROUP BY

-- beda dengan agregasi COUNT DISTINCT
SELECT COUNT(distinct nama_produk) FROM penjualan;

-- dua kolom atau lebih

-- Praktek #15
SELECT nama_produk, qty FROM penjualan GROUP BY nama_produk, qty;

-- Praktek #16
-- GROUP BY dengan Agregasi
-- ambil jumlah qty berdasark kelompok nama_produk 
SELECT nama_produk, sum(qty) FROM penjualan GROUP BY nama_produk;


-- Praktek #17
-- GROUP BY + Agregasi + ORDER BY
-- ambil jumlah qty berdasark kelompok nama_produk, urut qty terbesar
SELECT nama_produk, SUM(qty) FROM penjualan GROUP BY nama_produk ORDER BY SUM(qty) DESC;

-- Praktek #18
SELECT nama_produk, sum(qty) FROM penjualan GROUP BY nama_produk HAVING sum(qty) > 2;
-- HAVING
-- sama seperti WHERE yaitu sebagai filter khusus untuk GROUP BY
-- HAVING filter khusus untuk hasil fungsi agregasi
-- ambil jumlah qty berdasark kelompok nama_produk, yang jml qty < 6,
-- urut qty terbesar
SELECT nama_produk, SUM(qty) FROM penjualan
GROUP BY nama_produk 
HAVING SUM(qty) < 6
ORDER BY SUM(qty) DESC;

-- Latihan 1
SELECT nama_produk, SUM(qty) AS total_qty FROM penjualan GROUP BY nama_produk HAVING SUM(qty) > 4;

-- Latihan 2
SELECT nama_produk, SUM(qty) AS total_qty FROM penjualan GROUP BY nama_produk HAVING SUM(qty) = 9;
-- Latihan 3
SELECT nama_produk,
       SUM(harga * qty - diskon_persen) AS total_penjualan
FROM penjualan
GROUP BY nama_produk
ORDER BY total_penjualan DESC;







