-- Nama : muhamad restu al fazhuri 
-- Nim : 24241070
-- Kelas : B

-- menampilkan list database
Show databases;

-- menggunakan database
use db_mart;

-- menampilkan tabel
show tables;

DROP TABLE IF EXISTS produk;

-- membuat tabel
CREATE TABLE produk (
    kode_produk   VARCHAR(10)    NOT NULL PRIMARY KEY,
    no_urut       INT            NOT NULL,
    kategori_produk VARCHAR(50)  NOT NULL,
    nama_produk   VARCHAR(100)   NOT NULL,
    harga         DECIMAL(12,2)  NOT NULL
);

-- mengisi data pada tabel

INSERT INTO produk (kode_produk, no_urut, kategori_produk, nama_produk, harga)
VALUES
("prod-01", 1, "Alat Tulis Kantor", "Kotak Pensil DQLab", 62500.0),
("prod-02", 2, "Aksesoris Komputer", "Flashdisk DQLab 64 GB", 55000.0),
("prod-03", 3, "Gift & Voucher", "Gift Voucher DQLab 100rb", 100000.0),
("prod-04", 4, "Aksesoris Komputer", "Flashdisk DQLab 32 GB", 40000.0),
("prod-05", 5, "Gift & Voucher", "Gift Voucher DQLab 250rb", 250000.0),
("prod-06", 6, "Alat Tulis Kantor", "Pulpen Multifunction + Laser DQLab", 92500.0),
("prod-07", 7, "Gift & Voucher", "Tas Travel Organizer DigiSkills.id", 48000.0),
("prod-08", 8, "Gift & Voucher", "Gantungan Kunci DQLab", 15800.0),
("prod-09", 9, "Alat Tulis Kantor", "Buku Planner Agenda DQLab", 92000.0),
("prod-10", 10, "Alat Tulis Kantor", "Sticky Notes DQLab 500 sheets", 55000.0);

-- hasilnya
SELECT * FROM produk;