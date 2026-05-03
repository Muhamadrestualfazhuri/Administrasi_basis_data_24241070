-- Nama : muhamad restu al fazhuri 
-- Nim : 24241070
-- Kelas : B

Show databases;
drop database if exists db_mart;
create database db_mart;
use db_mart;

show tables;
DROP TABLE IF EXISTS penjualan;
CREATE TABLE penjualan (
    kode_urut_transaksi INT            NOT NULL PRIMARY KEY,
    kode_transaksi      VARCHAR(10)    NOT NULL,
    kode_pelanggan      VARCHAR(15)    NOT NULL,
    tgl_transaksi       DATETIME       NOT NULL,
    no_urut             INT            NOT NULL,
    kode_produk         VARCHAR(10)    NOT NULL,
    nama_produk         VARCHAR(100)   NOT NULL,
    qty                 INT            NOT NULL,
    harga               DECIMAL(12,2)  NOT NULL,
    diskon_persen       DECIMAL(5,2)   NOT NULL
);

-- INSERT DATA
INSERT INTO penjualan (kode_urut_transaksi,
	kode_transaksi,
	kode_pelanggan, 
    tgl_transaksi, 
    no_urut, 
    kode_produk, 
    nama_produk, 
    qty, 
    harga, 
    diskon_persen)
VALUES
(1,  "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 1, "prod-01", "Kotak Pensil DQLab", 5, 62500.0, 0.0),
(2,  "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 2, "prod-03", "Flash disk DQLab 32 GB", 1, 100000.0, 25.0),
(3,  "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 3, "prod-09", "Buku Planner Agenda DQSQuad", 3, 92000.0, 0.0),
(4,  "tr-001", "dqlabcust07", "2020-05-01 00:00:00", 4, "prod-04", "Flashdisk DQLab 32 GB", 3, 40000.0, 0.0),
(5,  "tr-002", "dqlabcust00", "2020-05-01 00:00:00", 1, "prod-03", "Gift Voucher DQLab 100rb", 2, 100000.0, 0.0),
(6,  "tr-002", "dqlabcust00", "2020-05-01 00:00:00", 2, "prod-10", "Sticky Notes DQLab 500 sheets", 4, 55000.0, 0.0),
(7,  "tr-002", "dqlabcust00", "2020-05-01 00:00:00", 3, "prod-07", "Tas Travel Organizer DQLab", 1, 48000.0, 0.0),
(8,  "tr-003", "dqlabcust03", "2020-05-03 00:00:00", 1, "prod-02", "Flashdisk DQLab 64 GB", 2, 55000.0, 12.5),
(9,  "tr-004", "dqlabcust03", "2020-05-03 00:00:00", 1, "prod-10", "Sticky Notes DQLab 500 sheets", 5, 55000.0, 0.0),
(10, "tr-004", "dqlabcust03", "2020-05-03 00:00:00", 2, "prod-04", "Flashdisk DQLab 32 GB", 4, 40000.0, 0.0),
(11, "tr-005", "dqlabcust00", "2020-06-12 00:00:00", 1, "prod-09", "Buku Planner Agenda DQSQuad", 3, 92000.0, 0.0),
(12, "tr-005", "dqlabcust00", "2020-06-12 00:00:00", 2, "prod-01", "Kotak Pensil DQLab", 1, 62500.0, 5.0),
(13, "tr-005", "dqlabcust00", "2020-06-12 00:00:00", 3, "prod-04", "Flashdisk DQLab 32 GB", 2, 40000.0, 0.0),
(14, "tr-006", "dqlabcust02", "2020-06-19 00:00:00", 1, "prod-05", "Gift Voucher DQLab 250rb", 4, 250000.0, 0.0),
(15, "tr-006", "dqlabcust02", "2020-06-19 00:00:00", 2, "prod-08", "Gantungan Kunci DQLab", 2, 15800.0, 0.0);

SELECT * FROM penjualan;