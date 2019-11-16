/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.1.13-MariaDB : Database - db_lingkungan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_lingkungan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_lingkungan`;

/*Table structure for table `tb_agama` */

DROP TABLE IF EXISTS `tb_agama`;

CREATE TABLE `tb_agama` (
  `kode_agama` int(11) NOT NULL AUTO_INCREMENT,
  `agama` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kode_agama`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_agama` */

insert  into `tb_agama`(`kode_agama`,`agama`) values 
(1,'Islam'),
(2,'Kristen'),
(3,'Hindu'),
(4,'Budha'),
(5,'sasaas');

/*Table structure for table `tb_akses` */

DROP TABLE IF EXISTS `tb_akses`;

CREATE TABLE `tb_akses` (
  `id_akses` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(16) NOT NULL,
  `pass_akses` varchar(60) NOT NULL,
  `akses` enum('Ketua','Petugas','Admin') NOT NULL,
  `blokir` set('Y','T') DEFAULT NULL,
  `lastlogin` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `kode_wilayah` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_akses`),
  KEY `nik` (`nik`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_akses` */

insert  into `tb_akses`(`id_akses`,`nik`,`pass_akses`,`akses`,`blokir`,`lastlogin`,`ipaddress`,`kode_wilayah`) values 
(1,'2222222222','827ccb0eea8a706c4c34a16891f84e7b','Admin',NULL,'2019-10-26 10:57:37','127.0.0.1',NULL);

/*Table structure for table `tb_aktivasi` */

DROP TABLE IF EXISTS `tb_aktivasi`;

CREATE TABLE `tb_aktivasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(16) NOT NULL,
  `passsword` varchar(50) NOT NULL,
  `notlp` varchar(13) NOT NULL,
  `aktif` set('Y','T') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_aktivasi` */

insert  into `tb_aktivasi`(`id`,`nik`,`passsword`,`notlp`,`aktif`) values 
(1,'1234567890','123456','2356890','Y');

/*Table structure for table `tb_etnis` */

DROP TABLE IF EXISTS `tb_etnis`;

CREATE TABLE `tb_etnis` (
  `kode_etnis` int(11) NOT NULL AUTO_INCREMENT,
  `etnis` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode_etnis`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tb_etnis` */

insert  into `tb_etnis`(`kode_etnis`,`etnis`) values 
(1,'Tionghoa'),
(2,'Eropa'),
(3,'Sunda'),
(4,'Arab'),
(5,'Jawa'),
(6,'Batak'),
(7,'Bugis');

/*Table structure for table `tb_kk` */

DROP TABLE IF EXISTS `tb_kk`;

CREATE TABLE `tb_kk` (
  `no_kk` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(16) DEFAULT NULL,
  `status_kk` enum('Kepala Keluarga','Istri','Anak') DEFAULT NULL,
  `status_kawin` varchar(12) DEFAULT NULL,
  `kode_wilayah` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_kk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_kk` */

/*Table structure for table `tb_laporan` */

DROP TABLE IF EXISTS `tb_laporan`;

CREATE TABLE `tb_laporan` (
  `id_laporan` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(16) DEFAULT NULL,
  `tgl_pergi` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `jenis_laporan` enum('Bertamu','Pergi','Warga Baru') DEFAULT NULL,
  `pesan` text,
  `tgl_laporan` date DEFAULT NULL,
  `status_lap` enum('Proses','Selesai') DEFAULT NULL,
  PRIMARY KEY (`id_laporan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_laporan` */

insert  into `tb_laporan`(`id_laporan`,`nik`,`tgl_pergi`,`tgl_kembali`,`jenis_laporan`,`pesan`,`tgl_laporan`,`status_lap`) values 
(1,'2222222222','2019-10-09','2019-10-11','Pergi','kami sekeluarga pergi meninggalkan rumah selama 3 hari','2019-10-09','Proses');

/*Table structure for table `tb_masyarakat` */

DROP TABLE IF EXISTS `tb_masyarakat`;

CREATE TABLE `tb_masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama_lengkap` varchar(60) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `alamat` text,
  `warganegara` varchar(60) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_masyarakat` */

insert  into `tb_masyarakat`(`nik`,`nama_lengkap`,`jenis_kelamin`,`alamat`,`warganegara`,`tgl_lahir`,`tempat_lahir`) values 
('1111111111111111','Test Edit','Laki-Laki','Sukabumi','Indonesia','1999-11-15',NULL),
('1111111111111113','Coba','Laki-Laki','Sukabumi','Indonesia','1970-01-01',NULL),
('1111111111111115','Coba','Perempuan','Sukabumi','Indonesia','1970-01-16',NULL),
('1111111111111116','Coba','Perempuan','Sukabumi','Indonesia','2010-01-01',NULL),
('1111111111111117','Coba','Laki-Laki','Sukabumi','Indonesia','1970-01-15',NULL),
('1111111111111118','Coba','Laki-Laki','Sukabumi','Indonesia','2001-11-01',NULL),
('1111111111111119','Coba','Perempuan','Sukabumi','Indonesia','2019-11-15',NULL),
('1111111111111122','Coba','Laki-Laki','Sukabumi','Indonesia','2019-11-15',NULL),
('1111111111111123','Coba','Laki-Laki','Sukabumi','Indonesia','1990-06-25',NULL),
('1111111111111124','Coba','Perempuan','Sukabumi','Indonesia','1994-09-26',NULL),
('1111111111111125','Coba','Perempuan','Sukabumi','Indonesia','1989-01-02',NULL),
('1111111111111126','Coba','Laki-Laki','Sukabumi','Indonesia','1975-01-12',NULL),
('1111111111111127','Coba','Laki-Laki','Sukabumi','Indonesia','1930-01-12',NULL),
('1111111111111128','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111129','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111130','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111131','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111132','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111133','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111134','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111135','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111136','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111137','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111138','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111139','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111140','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111141','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111142','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111143','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111144','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111145','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111146','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111147','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111148','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111149','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111150','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111151','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111153','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111154','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111155','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111156','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111157','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111158','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111159','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111160','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111161','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1111111111111162','Coba','Laki-Laki','Sukabumi','Indonesia','1992-01-02',NULL),
('1213344545565465','Jajang Myon','Laki-Laki','Korea','Asing','2019-11-15',NULL),
('1222222222222222','Arim','Perempuan',NULL,'Indonesia','2019-11-15',NULL),
('1234567890','Edit Lagi ','Perempuan','Bogor','Indonesia','2019-11-15',NULL),
('2222222222','Web Admin','Perempuan',NULL,'Asing','2019-11-15',NULL),
('3333333333333333','Cristiano Ronaldo','Laki-Laki','Sukakarya','Asing','2019-11-15',NULL);

/*Table structure for table `tb_pekerjaan` */

DROP TABLE IF EXISTS `tb_pekerjaan`;

CREATE TABLE `tb_pekerjaan` (
  `kode_pekerjaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pekerjaan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kode_pekerjaan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pekerjaan` */

insert  into `tb_pekerjaan`(`kode_pekerjaan`,`nama_pekerjaan`) values 
(1,'Karyawan Swasta');

/*Table structure for table `tb_pendidikan` */

DROP TABLE IF EXISTS `tb_pendidikan`;

CREATE TABLE `tb_pendidikan` (
  `kode_pendidikan` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_pendidikan` varchar(12) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode_pendidikan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pendidikan` */

insert  into `tb_pendidikan`(`kode_pendidikan`,`jenis_pendidikan`,`pendidikan`) values 
(1,'Formal','SD'),
(2,'Non-Formal','Pondok Pesantren'),
(3,'Formal','SMP'),
(4,'Formal','SMA');

/*Table structure for table `tb_penghasilan` */

DROP TABLE IF EXISTS `tb_penghasilan`;

CREATE TABLE `tb_penghasilan` (
  `kode_penghasilan` int(11) NOT NULL AUTO_INCREMENT,
  `penghasilan` int(11) NOT NULL,
  PRIMARY KEY (`kode_penghasilan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_penghasilan` */

insert  into `tb_penghasilan`(`kode_penghasilan`,`penghasilan`) values 
(1,1300000),
(2,0);

/*Table structure for table `tb_sarana` */

DROP TABLE IF EXISTS `tb_sarana`;

CREATE TABLE `tb_sarana` (
  `kode_sarana` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_sarana` varchar(12) DEFAULT NULL,
  `sarana` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`kode_sarana`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_sarana` */

/*Table structure for table `tb_tahundata` */

DROP TABLE IF EXISTS `tb_tahundata`;

CREATE TABLE `tb_tahundata` (
  `kode_tahun` int(11) NOT NULL AUTO_INCREMENT,
  `data_tahun` year(4) NOT NULL,
  PRIMARY KEY (`kode_tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_tahundata` */

insert  into `tb_tahundata`(`kode_tahun`,`data_tahun`) values 
(1,2019),
(2,2018),
(3,2017),
(4,2016),
(5,2015);

/*Table structure for table `tb_warga` */

DROP TABLE IF EXISTS `tb_warga`;

CREATE TABLE `tb_warga` (
  `no_masyarakat` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(16) DEFAULT NULL,
  `kode_wilayah` int(11) DEFAULT NULL,
  `kode_pendidikan` int(11) DEFAULT NULL,
  `kode_pekerjaan` int(11) DEFAULT NULL,
  `kode_etnis` int(11) DEFAULT NULL,
  `kode_agama` int(11) DEFAULT NULL,
  `kode_penghasilan` int(11) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_kk` int(11) DEFAULT NULL,
  `kode_tahun` int(11) NOT NULL,
  PRIMARY KEY (`no_masyarakat`),
  KEY `nik` (`nik`),
  KEY `kode_wilayah` (`kode_wilayah`),
  KEY `kode_pendidikan` (`kode_pendidikan`),
  KEY `kode_pekerjaan` (`kode_pekerjaan`),
  KEY `kode_etnis` (`kode_etnis`),
  KEY `kode_agama` (`kode_agama`),
  KEY `no_kk` (`no_kk`),
  KEY `kode_tahun` (`kode_tahun`),
  CONSTRAINT `tb_warga_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tb_masyarakat` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_2` FOREIGN KEY (`kode_wilayah`) REFERENCES `tb_wilayah` (`kode_wilayah`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_3` FOREIGN KEY (`kode_pendidikan`) REFERENCES `tb_pendidikan` (`kode_pendidikan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_4` FOREIGN KEY (`kode_pekerjaan`) REFERENCES `tb_pekerjaan` (`kode_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_5` FOREIGN KEY (`kode_etnis`) REFERENCES `tb_etnis` (`kode_etnis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_6` FOREIGN KEY (`kode_agama`) REFERENCES `tb_agama` (`kode_agama`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_7` FOREIGN KEY (`no_kk`) REFERENCES `tb_kk` (`no_kk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_8` FOREIGN KEY (`kode_tahun`) REFERENCES `tb_tahundata` (`kode_tahun`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tb_warga` */

insert  into `tb_warga`(`no_masyarakat`,`nik`,`kode_wilayah`,`kode_pendidikan`,`kode_pekerjaan`,`kode_etnis`,`kode_agama`,`kode_penghasilan`,`tgl_lahir`,`no_kk`,`kode_tahun`) values 
(1,'1111111111111117',1,1,1,1,1,NULL,NULL,NULL,2),
(2,'1111111111111113',1,2,1,3,2,NULL,NULL,NULL,2),
(3,'1111111111111116',1,1,1,1,2,NULL,NULL,NULL,1),
(4,'1111111111111137',1,3,1,5,1,NULL,NULL,NULL,1),
(5,'1111111111111129',1,1,1,1,1,NULL,NULL,NULL,1),
(6,'1111111111111111',1,3,1,4,1,NULL,NULL,NULL,1);

/*Table structure for table `tb_wilayah` */

DROP TABLE IF EXISTS `tb_wilayah`;

CREATE TABLE `tb_wilayah` (
  `kode_wilayah` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi` varchar(30) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kelurahan` varchar(30) DEFAULT NULL,
  `rw` varchar(3) DEFAULT NULL,
  `rt` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`kode_wilayah`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_wilayah` */

insert  into `tb_wilayah`(`kode_wilayah`,`provinsi`,`kecamatan`,`kelurahan`,`rw`,`rt`) values 
(1,'Jawa Barat','Cikole','Cikole','002','004');

/*Table structure for table `data_kk` */

DROP TABLE IF EXISTS `data_kk`;

/*!50001 DROP VIEW IF EXISTS `data_kk` */;
/*!50001 DROP TABLE IF EXISTS `data_kk` */;

/*!50001 CREATE TABLE  `data_kk`(
 `NO_KK` int(11) ,
 `NIK` varchar(16) ,
 `NAMA` varchar(60) ,
 `KODE_WIL` int(11) ,
 `PROVINSI` varchar(30) ,
 `KECAMATAN` varchar(30) ,
 `KELURAHAN` varchar(30) ,
 `RW` varchar(3) ,
 `RT` varchar(3) 
)*/;

/*Table structure for table `data_warga_agama` */

DROP TABLE IF EXISTS `data_warga_agama`;

/*!50001 DROP VIEW IF EXISTS `data_warga_agama` */;
/*!50001 DROP TABLE IF EXISTS `data_warga_agama` */;

/*!50001 CREATE TABLE  `data_warga_agama`(
 `agama` varchar(30) ,
 `tahun` year(4) ,
 `jumlah` bigint(21) ,
 `Prosentase` varchar(60) 
)*/;

/*Table structure for table `data_warga_etnis` */

DROP TABLE IF EXISTS `data_warga_etnis`;

/*!50001 DROP VIEW IF EXISTS `data_warga_etnis` */;
/*!50001 DROP TABLE IF EXISTS `data_warga_etnis` */;

/*!50001 CREATE TABLE  `data_warga_etnis`(
 `etnis` varchar(20) ,
 `jumlah` bigint(21) ,
 `Prosentase` varchar(50) 
)*/;

/*Table structure for table `data_warga_jk` */

DROP TABLE IF EXISTS `data_warga_jk`;

/*!50001 DROP VIEW IF EXISTS `data_warga_jk` */;
/*!50001 DROP TABLE IF EXISTS `data_warga_jk` */;

/*!50001 CREATE TABLE  `data_warga_jk`(
 `jenis_kelamin` enum('Laki-Laki','Perempuan') ,
 `jumlah` bigint(21) ,
 `Prosentase` varchar(39) 
)*/;

/*Table structure for table `data_warga_negara` */

DROP TABLE IF EXISTS `data_warga_negara`;

/*!50001 DROP VIEW IF EXISTS `data_warga_negara` */;
/*!50001 DROP TABLE IF EXISTS `data_warga_negara` */;

/*!50001 CREATE TABLE  `data_warga_negara`(
 `warganegara` varchar(60) ,
 `jumlah` bigint(21) ,
 `Prosentase` varchar(90) 
)*/;

/*Table structure for table `data_warga_pendidikan` */

DROP TABLE IF EXISTS `data_warga_pendidikan`;

/*!50001 DROP VIEW IF EXISTS `data_warga_pendidikan` */;
/*!50001 DROP TABLE IF EXISTS `data_warga_pendidikan` */;

/*!50001 CREATE TABLE  `data_warga_pendidikan`(
 `pendidikan` varchar(20) ,
 `total_pendidikan` bigint(21) 
)*/;

/*Table structure for table `data_warga_usia` */

DROP TABLE IF EXISTS `data_warga_usia`;

/*!50001 DROP VIEW IF EXISTS `data_warga_usia` */;
/*!50001 DROP TABLE IF EXISTS `data_warga_usia` */;

/*!50001 CREATE TABLE  `data_warga_usia`(
 `range_umur` varchar(13) ,
 `Laki` decimal(23,0) ,
 `Perempuan` decimal(23,0) ,
 `jumlah` bigint(21) 
)*/;

/*View structure for view data_kk */

/*!50001 DROP TABLE IF EXISTS `data_kk` */;
/*!50001 DROP VIEW IF EXISTS `data_kk` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_kk` AS (select `tb_kk`.`no_kk` AS `NO_KK`,`tb_masyarakat`.`nik` AS `NIK`,`tb_masyarakat`.`nama_lengkap` AS `NAMA`,`tb_wilayah`.`kode_wilayah` AS `KODE_WIL`,`tb_wilayah`.`provinsi` AS `PROVINSI`,`tb_wilayah`.`kecamatan` AS `KECAMATAN`,`tb_wilayah`.`kelurahan` AS `KELURAHAN`,`tb_wilayah`.`rw` AS `RW`,`tb_wilayah`.`rt` AS `RT` from ((`tb_kk` join `tb_masyarakat`) join `tb_wilayah`) where ((`tb_kk`.`nik` = `tb_masyarakat`.`nik`) and (`tb_kk`.`kode_wilayah` = `tb_wilayah`.`kode_wilayah`) and (`tb_kk`.`status_kk` = 'Kepala Keluarga'))) */;

/*View structure for view data_warga_agama */

/*!50001 DROP TABLE IF EXISTS `data_warga_agama` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_agama` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_agama` AS (select `tb_agama`.`agama` AS `agama`,`tb_tahundata`.`data_tahun` AS `tahun`,count(`tb_warga`.`kode_agama`) AS `jumlah`,concat(`tb_agama`.`agama`,' ',round(((count(`tb_agama`.`kode_agama`) / (select count(`tb_warga`.`kode_agama`) from `tb_warga`)) * 100),2),'%') AS `Prosentase` from ((`tb_agama` join `tb_warga`) join `tb_tahundata`) where ((`tb_agama`.`kode_agama` = `tb_warga`.`kode_agama`) and (`tb_warga`.`kode_tahun` = `tb_tahundata`.`kode_tahun`)) group by `tb_agama`.`kode_agama`) */;

/*View structure for view data_warga_etnis */

/*!50001 DROP TABLE IF EXISTS `data_warga_etnis` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_etnis` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_etnis` AS (select `tb_etnis`.`etnis` AS `etnis`,count(`tb_warga`.`kode_etnis`) AS `jumlah`,concat(`tb_etnis`.`etnis`,' ',round(((count(`tb_etnis`.`kode_etnis`) / (select count(`tb_warga`.`kode_etnis`) from `tb_warga`)) * 100),2),'%') AS `Prosentase` from (`tb_etnis` join `tb_warga`) where (`tb_etnis`.`kode_etnis` = `tb_warga`.`kode_etnis`) group by `tb_etnis`.`kode_etnis`) */;

/*View structure for view data_warga_jk */

/*!50001 DROP TABLE IF EXISTS `data_warga_jk` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_jk` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_jk` AS (select `tb_masyarakat`.`jenis_kelamin` AS `jenis_kelamin`,count(`tb_masyarakat`.`nik`) AS `jumlah`,concat(`tb_masyarakat`.`jenis_kelamin`,' ',round(((count(`tb_masyarakat`.`nik`) / (select count(0) from `tb_masyarakat`)) * 100),2),'%') AS `Prosentase` from `tb_masyarakat` group by `tb_masyarakat`.`jenis_kelamin`) */;

/*View structure for view data_warga_negara */

/*!50001 DROP TABLE IF EXISTS `data_warga_negara` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_negara` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_negara` AS (select `tb_masyarakat`.`warganegara` AS `warganegara`,count(`tb_masyarakat`.`nik`) AS `jumlah`,concat(`tb_masyarakat`.`warganegara`,' ',round(((count(`tb_masyarakat`.`nik`) / (select count(0) from `tb_masyarakat`)) * 100),2),'%') AS `Prosentase` from `tb_masyarakat` group by `tb_masyarakat`.`warganegara`) */;

/*View structure for view data_warga_pendidikan */

/*!50001 DROP TABLE IF EXISTS `data_warga_pendidikan` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_pendidikan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_pendidikan` AS (select `tb_pendidikan`.`pendidikan` AS `pendidikan`,count(0) AS `total_pendidikan` from (`tb_warga` join `tb_pendidikan`) where (`tb_warga`.`kode_pendidikan` = `tb_pendidikan`.`kode_pendidikan`) group by `tb_pendidikan`.`pendidikan`) */;

/*View structure for view data_warga_usia */

/*!50001 DROP TABLE IF EXISTS `data_warga_usia` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_usia` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_usia` AS (select (case when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 0 and 4) then '0-4' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 5 and 9) then '5-9' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 10 and 14) then '10-14' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 15 and 19) then '15-19' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 20 and 24) then '20-24' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 25 and 29) then '25-29' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 30 and 34) then '30-34' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 35 and 39) then '35-39' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 40 and 44) then '40-44' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 45 and 49) then '45-49' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 50 and 54) then '50-54' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 55 and 59) then '55-59' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 60 and 64) then '60-64' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 65 and 69) then '65-69' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 70 and 74) then '70-74' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) >= 75) then '75+' else 'Tidak Dikenal' end) AS `range_umur`,sum(if((`tb_masyarakat`.`jenis_kelamin` = 'Laki-Laki'),1,0)) AS `Laki`,sum(if((`tb_masyarakat`.`jenis_kelamin` = 'Perempuan'),1,0)) AS `Perempuan`,count(1) AS `jumlah` from `tb_masyarakat` group by (case when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 0 and 4) then '0-4' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 5 and 9) then '5-9' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 10 and 14) then '10-14' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 15 and 19) then '15-19' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 20 and 24) then '20-24' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 25 and 29) then '25-29' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 30 and 34) then '30-34' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 35 and 39) then '35-39' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 40 and 44) then '40-44' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 45 and 49) then '45-49' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 50 and 54) then '50-54' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 55 and 59) then '55-59' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 60 and 64) then '60-64' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 65 and 69) then '65-69' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 70 and 74) then '70-74' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) >= 75) then '75+' else 'Tidak Dikenal' end)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
