/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.6.24 : Database - db_lingkungan
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_agama` */

insert  into `tb_agama`(`kode_agama`,`agama`) values 
(1,'Islam'),
(2,'Kristen'),
(3,'Hindu'),
(4,'Budha');

/*Table structure for table `tb_akses` */

DROP TABLE IF EXISTS `tb_akses`;

CREATE TABLE `tb_akses` (
  `id_akses` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(16) NOT NULL,
  `pass_akses` varchar(60) NOT NULL,
  `akses` enum('Ketua','Petugas') NOT NULL,
  `blokir` set('Y','T') DEFAULT NULL,
  `lastlogin` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `kode_wilayah` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_akses`),
  KEY `nik` (`nik`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_akses` */

insert  into `tb_akses`(`id_akses`,`nik`,`pass_akses`,`akses`,`blokir`,`lastlogin`,`ipaddress`,`kode_wilayah`) values 
(1,'2222222222','12345','Ketua',NULL,'2019-10-26 10:57:37','127.0.0.1',NULL);

/*Table structure for table `tb_aktivasi` */

DROP TABLE IF EXISTS `tb_aktivasi`;

CREATE TABLE `tb_aktivasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(16) NOT NULL,
  `passsword` varchar(50) NOT NULL,
  `notlp` varchar(13) NOT NULL,
  `aktif` set('Y','T') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_aktivasi` */

insert  into `tb_aktivasi`(`id`,`nik`,`passsword`,`notlp`,`aktif`) values 
(1,'1234567890','123456','2356890','Y'),
(2,'2222222222','12345678','2345666','T');

/*Table structure for table `tb_etnis` */

DROP TABLE IF EXISTS `tb_etnis`;

CREATE TABLE `tb_etnis` (
  `kode_etnis` int(11) NOT NULL AUTO_INCREMENT,
  `etnis` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode_etnis`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_etnis` */

insert  into `tb_etnis`(`kode_etnis`,`etnis`) values 
(1,'Tionghoa'),
(2,'Eropa'),
(3,'Sunda');

/*Table structure for table `tb_kk` */

DROP TABLE IF EXISTS `tb_kk`;

CREATE TABLE `tb_kk` (
  `no_kk` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(16) DEFAULT NULL,
  `status_kk` enum('Kepala Keluarga','Istri','Anak') DEFAULT NULL,
  `status_kawin` varchar(12) DEFAULT NULL,
  `kode_wilayah` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_kk`)
) ENGINE=InnoDB AUTO_INCREMENT=2147483647 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kk` */

insert  into `tb_kk`(`no_kk`,`nik`,`status_kk`,`status_kawin`,`kode_wilayah`) values 
(2147483647,'1111111111111112','Kepala Keluarga','Kawin',1);

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
  `photo` text,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_masyarakat` */

insert  into `tb_masyarakat`(`nik`,`nama_lengkap`,`jenis_kelamin`,`alamat`,`warganegara`,`photo`) values 
('1111111111111111','Test Edit','Laki-Laki','Sukabumi','Indonesia',NULL),
('1111111111111112','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111113','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111114','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111115','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111116','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111117','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111118','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111119','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111122','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111123','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111124','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111125','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111126','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111127','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111128','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111129','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111130','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111131','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111132','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111133','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111134','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111135','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111136','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111137','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111138','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111139','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111140','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111141','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111142','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111143','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111144','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111145','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111146','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111147','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111148','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111149','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111150','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111151','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111153','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111154','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111155','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111156','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111157','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111158','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111159','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111160','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111161','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1111111111111162','Coba','Laki-Laki','Sukabumi','Indonesia','-'),
('1213344545565465','Jajang Myon','Laki-Laki','Korea','Asing',NULL),
('1234567890','Edit Lagi ','Perempuan','Bogor','Indonesia',NULL),
('2222222222','Web Admin','Perempuan',NULL,NULL,NULL);

/*Table structure for table `tb_pekerjaan` */

DROP TABLE IF EXISTS `tb_pekerjaan`;

CREATE TABLE `tb_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pekerjaan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pekerjaan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pekerjaan` */

insert  into `tb_pekerjaan`(`id_pekerjaan`,`nama_pekerjaan`) values 
(1,'Karyawan Swasta');

/*Table structure for table `tb_pendidikan` */

DROP TABLE IF EXISTS `tb_pendidikan`;

CREATE TABLE `tb_pendidikan` (
  `kode_pendidikan` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_pendidikan` varchar(12) DEFAULT NULL,
  `pendidikan` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`kode_pendidikan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pendidikan` */

insert  into `tb_pendidikan`(`kode_pendidikan`,`jenis_pendidikan`,`pendidikan`) values 
(1,'Formal','SD'),
(2,'Non-Formal','Pondok Pesan');

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

/*Table structure for table `tb_warga` */

DROP TABLE IF EXISTS `tb_warga`;

CREATE TABLE `tb_warga` (
  `no_masyarakat` int(11) NOT NULL AUTO_INCREMENT,
  `no_kk` int(11) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `kode_wilayah` int(11) DEFAULT NULL,
  `kode_pendidikan` int(11) DEFAULT NULL,
  `kode_pekerjaan` int(11) DEFAULT NULL,
  `kode_etnis` int(11) DEFAULT NULL,
  `kode_agama` int(11) DEFAULT NULL,
  `kode_penghasilan` int(11) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  PRIMARY KEY (`no_masyarakat`),
  KEY `nik` (`nik`),
  KEY `kode_wilayah` (`kode_wilayah`),
  KEY `kode_pendidikan` (`kode_pendidikan`),
  KEY `kode_pekerjaan` (`kode_pekerjaan`),
  KEY `kode_etnis` (`kode_etnis`),
  KEY `kode_agama` (`kode_agama`),
  KEY `no_kk` (`no_kk`),
  CONSTRAINT `tb_warga_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tb_masyarakat` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_2` FOREIGN KEY (`kode_wilayah`) REFERENCES `tb_wilayah` (`kode_wilayah`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_3` FOREIGN KEY (`kode_pendidikan`) REFERENCES `tb_pendidikan` (`kode_pendidikan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_4` FOREIGN KEY (`kode_pekerjaan`) REFERENCES `tb_pekerjaan` (`id_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_5` FOREIGN KEY (`kode_etnis`) REFERENCES `tb_etnis` (`kode_etnis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_6` FOREIGN KEY (`kode_agama`) REFERENCES `tb_agama` (`kode_agama`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_7` FOREIGN KEY (`no_kk`) REFERENCES `tb_kk` (`no_kk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_warga` */

insert  into `tb_warga`(`no_masyarakat`,`no_kk`,`nik`,`kode_wilayah`,`kode_pendidikan`,`kode_pekerjaan`,`kode_etnis`,`kode_agama`,`kode_penghasilan`,`tgl_lahir`) values 
(1,2147483647,'1111111111111112',1,1,1,3,1,NULL,NULL);

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

/*View structure for view data_kk */

/*!50001 DROP TABLE IF EXISTS `data_kk` */;
/*!50001 DROP VIEW IF EXISTS `data_kk` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_kk` AS (select `tb_kk`.`no_kk` AS `NO_KK`,`tb_masyarakat`.`nik` AS `NIK`,`tb_masyarakat`.`nama_lengkap` AS `NAMA`,`tb_wilayah`.`kode_wilayah` AS `KODE_WIL`,`tb_wilayah`.`provinsi` AS `PROVINSI`,`tb_wilayah`.`kecamatan` AS `KECAMATAN`,`tb_wilayah`.`kelurahan` AS `KELURAHAN`,`tb_wilayah`.`rw` AS `RW`,`tb_wilayah`.`rt` AS `RT` from ((`tb_kk` join `tb_masyarakat`) join `tb_wilayah`) where ((`tb_kk`.`nik` = `tb_masyarakat`.`nik`) and (`tb_kk`.`kode_wilayah` = `tb_wilayah`.`kode_wilayah`) and (`tb_kk`.`status_kk` = 'Kepala Keluarga'))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
