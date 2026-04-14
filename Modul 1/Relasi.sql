show databases;
create database Rumah_sakit;
use Rumah_sakit;
CREATE TABLE `DOKTER` (
  `id_dokder` int PRIMARY KEY,
  `nama` varchar(255),
  `sp` varchar(255),
  `no_tlpn` varchar(255),
  `kode_poli` int
);

CREATE TABLE `POLIKNILIK` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(255)
);

CREATE TABLE `PASIEN` (
  `NIK` int PRIMARY KEY,
  `nama` varchar(30),
  `alamat` varchar(50),
  `BOD` datetime
);

CREATE TABLE `DAFTAR` (
  `no_antre` int PRIMARY KEY,
  `tgl` datetime,
  `NIK` int,
  `kode_poli` int
);

CREATE TABLE `Rekam_Medis` (
  `No_RM` int PRIMARY KEY,
  `NIK` int,
  `kode_obat` int
);

CREATE TABLE `OBAT` (
  `kode_obat` int PRIMARY KEY,
  `nama_obat` varchar(255),
  `harga` int
);

ALTER TABLE `DOKTER` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKNILIK` (`kode_poli`);

ALTER TABLE `DAFTAR` ADD FOREIGN KEY (`NIK`) REFERENCES `PASIEN` (`NIK`);

ALTER TABLE `POLIKNILIK` ADD FOREIGN KEY (`kode_poli`) REFERENCES `DAFTAR` (`kode_poli`);

ALTER TABLE `PASIEN` ADD FOREIGN KEY (`NIK`) REFERENCES `Rekam_Medis` (`NIK`);

ALTER TABLE `OBAT` ADD FOREIGN KEY (`kode_obat`) REFERENCES `Rekam_Medis` (`kode_obat`);
