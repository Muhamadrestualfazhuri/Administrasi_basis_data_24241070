-- Nama : Muhamad Restu Al Fazhuri
-- Nim 	: 24241070
-- Kelas : B
-- Modul : 3 

-- Nilai literal, operator matematika, perbandingan
-- fungsi matematika dan tanggal (Data)
-- Klausal, Where, Like

-- Praktek 1 
-- Menggunakan nilai literal pada select
SELECT 67;
-- praktek 2
-- menggunakan select untuk menampilkan nilai literar dengan tipe data yang berbeda
SELECT 67 AS angka, True AS nilai_logika, 'PTI' AS teks;
-- NULL 
-- null berarti tidak memiliki nilai apapun atau kosong
-- praktek 3
-- Menggunakan SELECT untuk menampilkan NULL
SELECT NULL as kosong;
-- Operator matematika
-- Praktek 4
SELECT 5%2 as sisa_bagi, 5/2 as hasil_bagi_1, 5 DIV 2 as Hasil_bagi_2;
-- Latihan mandiri 1
SELECT 4*2;
SELECT (4*8)%7;
SELECT (4*8) mod 7;
SELECT 4*2, (4*8)%7, (4*8) mod 7;
-- latihan sendiri
SELECT 5*4;
SELECT 12+4;
SELECT 30-17;
SELECT 81/9;
SELECT 25 mod 4;
SELECT (10+5)*2;
SELECT ((8*5)+10)%6;
-- praktek 5
-- menggunakan database
USE db_mart;
-- operator matematika untuk dua kolom dalam tabel penjualan
SELECT qty*harga AS total_beli FROM penjualan;
-- Ambil data hasil penjualan perkalian kolom qty  dan harga simpan dalam kolom total beli
-- praktek 6
SELECT 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4; 
-- operator perbandingan
-- simnbol untuk membandingkan nilai dari nilai literal ataupun hasil eksperimen
-- latihan mandiri 2
SELECT 1 = true;
SELECT 1 = false;
SELECT 5 >= 5;
SELECT 5.2=5.20000;
SElECT NULL = 1;
SELECT NULL = NULL;
SELECT NULL is NULL;
-- yang mengahsilkan 1  atau 0 adalah:
SElECT NULL = 1;
SELECT NULL = NULL;
-- karena hasilnya NULL
-- Fungsi
-- proses yang memiliki nama dan simbol seperti operator
-- praktek 7
SELECT QTY > 3 FROM penjualan;
-- praktek 8
SELECT POW(5,2), ROUND(3.14), ROUND(3.54), ROUND (3.155, 1),
ROUND (3.155,2), FLOOR (4.28), FLOOR(4.78), CEILING(4.39), CEILING (4.55);
-- praktek 9
SELECT NOW() , YEAR('2022-05-03'),
DATEDIFF ('2022-07-22', '2022-05-03'),
DATEDIFF (now(), '2022-05-03'),
ROUND (DATEDIFF (now(), '2022-05-03') / 30),
DAY('2022-05-03');
-- latihan mandiri 3
SELECT DATEDIFF('2022-07-23', NOW());
SElECT YEAR('2022-07-23');
SELECT MONTH('2022-07-23');
SELECT  DAY('2022-07-23');
SELECT YEAR(NOW());
-- fungsi penting lainnya
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
-- Praktek 10
SELECT datediff(NOW(),tgl_transaksi) FROM penjualan;
SELECT datediff(tgl_transaksi, NOW()) FROM penjualan;
-- Filtering with where
-- untuk mefirtel ataau menyaring data
SELECT nama_produk, qty FROM penjualan WHERE qty>2;
-- Praktek 11
-- ambil semua data pada kolom nama produk dan qty, yang qty > 3
SELECT nama_produk, qty 
FROM penjualan 
WHERE qty>3;
-- ambil semua data pada kolom nama produk dan hargan, dengan max 10000
SELECT nama_produk, harga
FROM penjualan 
WHERE harga <=10000;
-- praktek 12
-- multi kriteria dalam WHERE
SELECT nama_produk, qty, tgl_transaksi FROM penjualan;
-- ambil semua produk dan qty yang qty > 3 DAN tgl transasksi pada bulan 7
SELECT nama_produk, qty
FROM penjualan WHERE qty>3 AND
MONTH(tgl_transaksi) =6;
-- praktek 13
-- WHERE dengan Kriteria teks
-- ambil semua nama_produk yang bernama 'Flashdisk DQLab 32 GB'
SELECT nama_produk, qty
FROM penjualan
WHERE nama_produk  = 'Flashdisk DQLab 32 GB';
-- Operator perbandingan LIKE
-- Praktek 14
-- WHERE dengan operator LIKE
-- ambil semua nama_produk yang namanya berawala huruf 'f'
SELECT nama_produk FROM  penjualan
WHERE nama_produk LIKE 'F%';
-- latihan mandiri
-- 1. nama_produk yang memiliki karakter kedua 'a' pada tabel tr_penjualan_dqlab
SELECT *
FROM penjualan
WHERE nama_produk LIKE '_a%';
-- 2. kategori_produk yang mengandung huruf 'f' pada tabel ms_produk_dqlab
SELECT *
FROM produk
WHERE kategori_produk LIKE '%f%';
-- 3. kategori_produk yang mengandung karakter 'un' pada tabel ms_produk_dqlab
SELECT *
FROM produk
WHERE kategori_produk LIKE '%un%';
-- Praktek 15
-- WHERE dengan operator perbandingan (AND, OR, NOT, XOR)
-- Ambil semua produk yang berawalan huruf 'F' AND/dan qty > 2
SELECT nama_produk, qty FROM penjualan
WHERE nama_produk LIKE 'F%' AND qty > 2;
-- Praktek 16
-- Ambil semua produk 
SELECT nama_produk, qty
FROM penjualan
WHERE nama_produk LIKE 'F%' OR qty > 2;