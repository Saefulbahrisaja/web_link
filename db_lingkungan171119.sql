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

/*Table structure for table `datawarga` */

DROP TABLE IF EXISTS `datawarga`;

CREATE TABLE `datawarga` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jeniskelamin` varchar(10) DEFAULT NULL,
  `tempatlahir` varchar(25) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `pendidikan` varchar(10) DEFAULT NULL,
  `jenispekerjaan` varchar(25) DEFAULT NULL,
  `statusperkawinan` varchar(12) DEFAULT NULL,
  `statusdalamkeluarga` varchar(10) DEFAULT NULL,
  `ayah` varchar(50) DEFAULT NULL,
  `ibu` varchar(50) DEFAULT NULL,
  `kepalakeluarga` char(2) DEFAULT NULL,
  `nokk` varchar(16) DEFAULT NULL,
  `statustinggal` varchar(10) DEFAULT NULL,
  `rt` varchar(2) DEFAULT NULL,
  `rw` varchar(2) DEFAULT NULL,
  `keterangan` text,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `datawarga` */

insert  into `datawarga`(`nik`,`nama`,`jeniskelamin`,`tempatlahir`,`tanggallahir`,`agama`,`pendidikan`,`jenispekerjaan`,`statusperkawinan`,`statusdalamkeluarga`,`ayah`,`ibu`,`kepalakeluarga`,`nokk`,`statustinggal`,`rt`,`rw`,`keterangan`,`status`) values 
('3203091101800012','Yuswo Wiyoto','Laki-laki','Malang','1980-01-11','Islam','SLTA/Seder','Wiraswasta','Kawin','Suami','Sugeng','Titing','Ya','3203091911050317','Tetap','01','01','Warga asli',1),
('3203091911050311','Muhammad Zainul','Laki-laki','Cilacap','1986-08-12','Islam','Akademi/Di','Pegawai','Belum Kawin','Anak','Ahmad Zubair','Siti Fatimah','Bu','3203091911050355','Tidak Teta','01','01','Pindahan dari Jakarta',0),
('3203091911050313','As3','Laki-laki','Cilacap','2018-07-18','Islam','Tidak/Belu','Pedagang','Belum Kawin','Anak','Muh. Chaelani','Murniyati','Bu','3203091911050319','Tetap','01','01','as',1),
('3203096206890001','Nurjanah','Perempuan','Cianjur','1989-06-22','Islam','Tamat SD/S','Ibu Rumah Tangga','Kawin','Istri','Nani','Nunung','Bu','3203091911050317','Tetap','01','01','',1),
('3313041108760002','Suwarno','Laki-laki','Karanganyar','1978-08-11','Islam','Tamat SD/S','Pedagang','Kawin','Suami','Ngatmin','Warni','Ya','3313041303090002','Tidak Teta','01','01','Warga pendatang di kontrakan H. Saeful',0),
('3313041303090001','Ahmad Subkhi','Laki-laki','Tegal','2018-06-24','Islam','Diploma IV','Pegawai','Kawin','Anak','Suwarno','Sartini','Bu','3313041303090002','Tidak Teta','01','01','Kebumen',0),
('3313041303090005','asas','Laki-laki','tegal','2018-07-23','Islam','Diploma I/','Pelajar','Belum Kawin','Suami','Abdul Ghoni','Sartini','Ya','3313041303090002','Tidak Teta','01','01','sd',1),
('3313042009080001','Ilham Adi Wibowo','Laki-laki','Karanganyar','2008-09-20','Islam','Belum Tama','Pelajar','Belum Kawin','Anak','Suwarno','Sartini','Bu','3313041303090002','Tidak Teta','01','01','Warga pendatang di kontrakan H. Saeful',0),
('3313044501820003','Sartini','Perempuan','Karanganyar','1982-01-05','Islam','SLTA/Seder','Pedagang','Kawin','Istri','Gito Wiyono','Sri Murtani','Bu','3313041303090002','Tidak Teta','01','01','Warga pendatang di kontrakan H. Saeful',0),
('3313046004020001','Irtifa Nurul Hidayati','Perempuan','Karanganyar','2002-04-20','Islam','SLTA/Seder','Pelajar','Belum Kawin','Anak','Suwarno','Sartini','Bu','3313041303090002','Tidak Teta','01','01','Warga pendatang di kontrakan H. Saeful',0),
('3328110712920000','Abqina Khairaul Azmi','Laki-laki','Tegal','1992-12-07','Islam','SLTA/Seder','Pelajar','Belum Kawin','Anak','Mahfudi','Chasiati','Bu','3328111508115220','Tetap','01','01','Warga Asli',1),
('3328116104780000','Chasiati','Perempuan','Tegal','1978-04-21','Islam','SLTA/Seder','Wiraswasta','Cerai Mati','Istri','Abdurokhim','Muayah','Ya','3328111508115220','Tetap','01','01','Warga asli',1),
('3328130100970001','Mukhlis','Laki-laki','Tegal','1966-03-09','Islam','SLTP/Seder','Swasta','Kawin','Suami','Harjo Sumito','Sumiyati','Ya','3328131901140354','Tetap','01','01','',1),
('3328130106970001','Ayub Supriandi','Laki-laki','Jakarta','2018-02-06','Kristen','Diploma IV','Pelajar/Mahasiswa','Belum Kawin','Anak','Sholeh','Marni','Bu','3328131901110354','Tetap','01','01','Jalan Kemuning No Rumah 10',1),
('3328130106970003','Abdul Aziz','Laki-laki','Semarang','1997-06-01','Hindu','Diploma 3','Penulis','Belum Kawin','Anak','Abu Seri','Nur Eti Iswanti','Bu','3328131901110337','Tetap','01','01','Jalan Kemuning No Rumah 10',1),
('3328130106970004','Windi Witari','Perempuan','Tegal','2005-06-20','Islam','SMP','Pelajar/Mahasiswa','Belum Kawin','Anak','Abu Seri','Nur Eti Iswanti','Bu','3328131901110337','Tetap','01','01','Jalan Kemuning No Rumah 10',1),
('3328130106970005','Cahyo Pambudi','Laki-laki','Cilacap','2018-02-06','Islam','SLTA/Seder','Pelajar/Mahasiswa','Kawin','Suami','Rudi Asya','Syarifah','Ya','3328131901110336','Tetap','01','01','Jalan Kemuning No Rumah 10',1),
('3328130106970009','Budi Sentosa','Laki-laki','Jakarta','1998-02-10','Konghuchu','Diploma 3','Swasta','Belum Kawin','Anak','Rudi Asya','Musripah','Bu','3328131901110337','Tetap','01','01','Jalan Kemuning No Rumah 10',1),
('3328130106970098','Alfian noer Arbi','Laki-laki','Cilacap','2018-02-20','Islam','Akademi/Di','Petani','Belum Kawin','Anak','Rohman','Fatimah','Bu','3328131901110332','Tidak Teta','01','01','Jalan Kemuning No Rumah 10',0),
('3328130106990007','Agus Budiharjo','Laki-laki','Tegal','2018-02-08','Kristen','Tidak/Belu','Pelajar/Mahasiswa','Belum Kawin','Anak','Hambali','Putri','Bu','3328131902110339','Tetap','01','01','Jalan Kemuning No Rumah 10',0),
('3328130111680003','Abu Seri','Laki-laki','Tegal','1968-11-01','Islam','SLTA','Wiraswasta','Kawin','Kepala Kel','Masrah','Raswi','Ya','3328131901110337','Tetap','01','01','Jalan Kemuning No Rumah 10',1),
('3328130196970003','Agung Priyanto','Laki-laki','Kuningan','1997-08-14','Budha','Akademi/Di','Karyawan Bank','Belum Kawin','Anak','Jupri','Sartini','Bu','3328131901110334','Tetap','01','01','Jalan Kemuning No Rumah 10',0),
('3328130809660004','Rustono','Laki-laki','Tegal','1966-09-08','Islam','SLTP/Seder','Pedagang','Kawin','Suami','Radis','Kartinah','Ya','3328131801110297','Tetap','01','01','',1),
('3328130810140003','Akhdan Dwi Nilani','Laki-laki','Tegal','2014-10-08','Islam','Tidak/Belu','Belum Bekerja','Belum Kawin','Anak','Muh. Chaelani','Murniyati','Bu','3328131801110284','Tetap','01','01','Warga asli',1),
('3328131507790002','Muh. Chaelani','Laki-laki','Tegal','1979-07-15','Islam','SLTP/Seder','Karyawan Swasta','Kawin','Suami','Sodikin','Kasmuah','Ya','3328131801110284','Tetap','01','01','Warga asli',1),
('3328131634140354','Mafruchah','Perempuan','Tegal','1969-06-17','Islam','SLTP/Seder','Ibu Rumah Tangga','Kawin','Istri','Ahmad','Sopiyah','Bu','3328131901140354','Tetap','01','01','',1),
('3328131806840005','Imron Rosyadi','Laki-laki','Tegal','1984-06-18','Islam','SLTP/Seder','Karyawan Swasta','Belum Kawin','Anak','Wartono','Darsini','Bu','3328131801110297','Tetap','01','01','',1),
('3328131901110356','Muhammad Hadi','Laki-laki','Cikarang','2018-07-23','Islam','Akademi/Di','Guru','Belum Kawin','Anak','Afifudin','Sartini','Bu','3328131901110353','Tidak Teta','02','01','Pindahan dari cikarang',0),
('3328132102080312','Hadi Purnomo','Laki-laki','Cilacap','2002-06-18','Islam','Akademi/Di','Wiraswasta','Kawin','Suami','Abdul Ghoni','Chunaeni','Ya','3328132102080310','Tetap','01','01','Pindahan dari Jakarta',1),
('3328132403090577','Khikmatul Umroh','Perempuan','Tegal','1968-10-23','Islam','SLTP/Seder','Dagang','Cerai Mati','Istri','Makmuri','Tarisi','Ya','3328132403090576','Tetap','01','01','Warga asli',1),
('3328132403090578','Anisul Fuad','Laki-laki','Tegal','1989-03-19','Islam','SLTA/Seder','Wiraswasta','Belum Kawin','Anak','Afifudin','Khikmatul Umroh','Bu','3328132403090576','Tetap','01','01','Warga asli',1),
('3328132403090579','Dzikri Afif','Laki-laki','Tegal','1993-06-03','Islam','SLTP/Seder','Pelajar','Belum Kawin','Anak','Afifudin','Khikmatul Umroh','Ya','3328132403090576','Tetap','01','01','Warga asli',1),
('3328134109840006','Murniyati','Perempuan','Tegal','1984-09-01','Islam','SLTP/Seder','Mengurus Rumah Tangga','Kawin','Istri','Dasum','Dailah','Bu','3328131801110284','Tetap','01','01','Warga asli',1),
('3328134807980001','Khumairoh Intani','Perempuan','Tegal','1998-07-08','Islam','SLTA/Seder','Pelajar','Belum Kawin','Anak','Abdul Ghoni','Chunaeni','Bu','3328132102080312','Tidak Teta','01','01','Warga pendatang di kontrakan Bpk. Tibrizi',0),
('3328135111950003','Ummi Khanifah','Perempuan','Tegal','1995-11-11','Islam','Diploma IV','Guru','Belum Kawin','Anak','Abdul Ghoni','Chunaeni','Bu','3328132102080312','Tidak Teta','01','01','Warga pendatang di kontrakan Bpk. Tibrizi',0),
('3328135503950005','Ulfah Idawati','Perempuan','Tegal','1995-03-15','Islam','SLTA/Seder','Karyawan Swasta','Belum Kawin','Anak','Rustono','Darsini','Bu','3328131801110297','Tetap','01','01','',1),
('3328135906060002','Nilla Ayuningtyas','Perempuan','Tegal','2006-06-19','Islam','Belum Tama','Pelajar','Belum Kawin','Anak','Muh. Chaelani','Murniyati','Bu','3328131801110284','Tetap','01','01','Warga asli',1),
('3328136402930002','Nailan Nurul Alfiah','Perempuan','Tegal','1993-02-24','Islam','Diploma IV','Guru','Belum Kawin','Anak','Abdul Ghoni','Chunaeni','Bu','3328132102080312','Tidak Teta','01','01','Warga pendatang di kontrakan Bpk. Tibrizi',0),
('3328136503690002','Chunaeni','Perempuan','Tegal','1967-03-25','Islam','Diploma IV','Guru','Cerai Mati','Istri','Sabrawi','Tuminah','Ya','3328132102080312','Tidak Teta','01','01','Warga pendatang di kontrakan Bpk. Tibrizi',0),
('3328137004750005','Nur Eti Iswanti','Perempuan','Tegal','1975-04-30','Islam','SLTA','Pedagang','Kawin','Istri','Samhari','Mafrochah','Bu','3328131901110337','Tetap','01','01','Jalan Kemuning No Rumah 10',1),
('3328137112610102','Darsini','Perempuan','Tegal','1961-12-31','Islam','Tamat SD/S','Pedagang','Kawin','Istri','Washadi','Nahyati','Bu','3328131801110297','Tetap','02','01','',1),
('3376011508730001','Ricky Manasa','Laki-laki','Tegal','1973-08-15','Islam','SLTA/Seder','Pegawai Swasta','Kawin','Suami','Syarifudin Manasa','Regina Thie Hua','Ya','3376111102083615','Tetap','01','01','Warga asli',1),
('3376015111770002','Karomah','Perempuan','Tegal','1977-11-11','Islam','SLTA/Seder','Ibu Rumah Tangga','Kawin','Istri','M. Kurdi','Toricha','Bu','3376111102083615','Tetap','01','01','Warga asli',1),
('3601212011170013','Susi Amelia','Perempuan','Tegal','1982-03-10','Islam','SLTA/Seder','Ibu Rumah Tangga','Kawin','Istri','Slamet','Suheni','Bu','3601212011170014','Tetap','01','01','',1),
('3601212511570001','Hendra Purnama','Laki-laki','Pandeglang','1957-11-25','Islam','SLTA/Seder','Wiraswasta','Kawin','Suami','Heru','Iis','Ya','3601212011170014','Tetap','01','01','',1);

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

/*Table structure for table `tb_ajuansurat` */

DROP TABLE IF EXISTS `tb_ajuansurat`;

CREATE TABLE `tb_ajuansurat` (
  `no_ajuan` int(20) NOT NULL AUTO_INCREMENT,
  `kode_wilayah` int(11) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `jenis_surat` varchar(16) NOT NULL,
  `no_surat` varchar(25) NOT NULL,
  `keterangan` enum('Selesai','Proses') NOT NULL,
  PRIMARY KEY (`no_ajuan`)
) ENGINE=InnoDB AUTO_INCREMENT=1407296 DEFAULT CHARSET=latin1;

/*Data for the table `tb_ajuansurat` */

insert  into `tb_ajuansurat`(`no_ajuan`,`kode_wilayah`,`tgl_pengajuan`,`jenis_surat`,`no_surat`,`keterangan`) values 
(1407284,0,'2018-07-17','3328135111950003','107','Selesai'),
(1407285,0,'2018-07-17','3203096206890001','105','Selesai'),
(1407286,0,'2018-07-17','3328130100970001','105','Selesai'),
(1407287,0,'2018-07-17','3328116104780000','103','Selesai'),
(1407288,0,'2018-07-22','3328116104780000','101','Selesai'),
(1407289,0,'2018-07-23','3313046004020001','101','Selesai'),
(1407290,0,'2018-07-23','3328130106970001','103','Selesai'),
(1407291,0,'2018-07-23','3203091101800012','103','Selesai'),
(1407292,0,'2018-07-23','3203091101800012','103','Selesai'),
(1407293,0,'2018-07-24','3328130106970005','101','Selesai'),
(1407294,0,'2018-07-24','3328130106970001','101','Selesai'),
(1407295,0,'2018-07-25','3328130100970001','101','Selesai');

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

/*Table structure for table `tb_jenissurat` */

DROP TABLE IF EXISTS `tb_jenissurat`;

CREATE TABLE `tb_jenissurat` (
  `kode_jenissurat` int(20) NOT NULL AUTO_INCREMENT,
  `jenis_surat` varchar(30) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_jenissurat`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

/*Data for the table `tb_jenissurat` */

insert  into `tb_jenissurat`(`kode_jenissurat`,`jenis_surat`,`keterangan`) values 
(101,'Surat Membuat SKCK','Surat pengantar untuk membuat SKCK'),
(102,'Surat Keterangan Tidak Mampu','Surat Pengantar Keterangan Tidak Mampu'),
(103,'Surat Pengantar Domisili','Surat Pengantar Keterangan Domisili'),
(104,'Surat Pengantar Mengurus KTP','Surat Pengantar Untuk Mengurus KTP'),
(105,'Surat Pengantar Mengurus KK','Surat Pengantar Untuk Mengurus Kartu Keluarga'),
(106,'Surat Keterangan Kematian','Surat Pengantar Untuk Keterangan Kematian'),
(107,'Surat Pengantar Nikah','Surat Pengantar Untuk Mengurus Pernikahan'),
(108,'Surat Untuk Akte Kelahiran','Surat Pengantar Untuk Membuat Akte Kelahiran'),
(109,'Kebutuhan Lainya','Surat Pengantar Untuk Kebutuhan Lainya');

/*Table structure for table `tb_kk` */

DROP TABLE IF EXISTS `tb_kk`;

CREATE TABLE `tb_kk` (
  `no_kk` varchar(16) NOT NULL,
  `status_kk` enum('Kepala Keluarga','Istri','Anak') DEFAULT NULL,
  `status_kawin` varchar(12) DEFAULT NULL,
  `kode_wilayah` int(11) DEFAULT NULL,
  `no_masyarakat` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_kk`),
  KEY `kode_wilayah` (`kode_wilayah`),
  KEY `no_masyarakat` (`no_masyarakat`),
  CONSTRAINT `tb_kk_ibfk_1` FOREIGN KEY (`kode_wilayah`) REFERENCES `tb_wilayah` (`kode_wilayah`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_kk_ibfk_3` FOREIGN KEY (`no_masyarakat`) REFERENCES `tb_warga` (`no_masyarakat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_kk` */

insert  into `tb_kk`(`no_kk`,`status_kk`,`status_kawin`,`kode_wilayah`,`no_masyarakat`) values 
('121233331','Anak','Kawin',1,4),
('123456678','Kepala Keluarga','Kawin',1,1),
('43343','Kepala Keluarga','Belum Kawin',1,2);

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
('1111111111111113','Coba','Perempuan','Sukabumi','Indonesia','2011-10-05','Bandung'),
('1111111111111115','Coba','Perempuan','Sukabumi','Indonesia','1970-01-16','Cibadak'),
('1111111111111116','Coba','Laki-Laki','Sukabumi','Indonesia','2010-01-01','Bandung'),
('1111111111111117','Coba','Laki-Laki','Sukabumi','Asing','1970-01-15','Jakarta'),
('1111111111111118','Coba','Perempuan','Sukabumi','Indonesia','2001-11-01','Bogor'),
('1111111111111119','Anita Gayatri','Perempuan','Sukabumi','Indonesia','2019-11-15','Sukabumi'),
('1111111111111122','Gianala Aizza Nawa','Perempuan','Sukabumi','Indonesia','2019-11-15','Sukabumi'),
('1111111111111124','Coba','Perempuan','Sukabumi','Indonesia','1994-09-26','Banjarnegara'),
('1111111111111125','Coba','Perempuan','Sukabumi','Indonesia','1989-01-02','Subang'),
('1111111111111126','Coba','Perempuan','Sukabumi','Indonesia','1975-01-12','Cianjur'),
('1111111111111128','Coba','Perempuan','Sukabumi','Indonesia','1992-01-02','Tuban'),
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
('1213344545565465','Jajang Myon','Laki-Laki','Korea','Asing','2019-11-15','Seol'),
('1222222222222222','Arim','Perempuan','sukabumi','Indonesia','1994-03-23','Serang'),
('1234567890','Edit Lagi ','Perempuan','Bogor','Indonesia','2019-11-15',NULL),
('1234567890909090','Dania Anitya','Perempuan','Perum cemerlang','Indonesia','1994-05-22','Sukabumi'),
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
  `kode_tahun` int(11) NOT NULL,
  PRIMARY KEY (`no_masyarakat`),
  KEY `nik` (`nik`),
  KEY `kode_wilayah` (`kode_wilayah`),
  KEY `kode_pendidikan` (`kode_pendidikan`),
  KEY `kode_pekerjaan` (`kode_pekerjaan`),
  KEY `kode_etnis` (`kode_etnis`),
  KEY `kode_agama` (`kode_agama`),
  KEY `kode_tahun` (`kode_tahun`),
  CONSTRAINT `tb_warga_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tb_masyarakat` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_2` FOREIGN KEY (`kode_wilayah`) REFERENCES `tb_wilayah` (`kode_wilayah`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_3` FOREIGN KEY (`kode_pendidikan`) REFERENCES `tb_pendidikan` (`kode_pendidikan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_4` FOREIGN KEY (`kode_pekerjaan`) REFERENCES `tb_pekerjaan` (`kode_pekerjaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_5` FOREIGN KEY (`kode_etnis`) REFERENCES `tb_etnis` (`kode_etnis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_6` FOREIGN KEY (`kode_agama`) REFERENCES `tb_agama` (`kode_agama`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_warga_ibfk_8` FOREIGN KEY (`kode_tahun`) REFERENCES `tb_tahundata` (`kode_tahun`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tb_warga` */

insert  into `tb_warga`(`no_masyarakat`,`nik`,`kode_wilayah`,`kode_pendidikan`,`kode_pekerjaan`,`kode_etnis`,`kode_agama`,`kode_penghasilan`,`tgl_lahir`,`kode_tahun`) values 
(1,'1111111111111117',1,1,1,1,1,NULL,NULL,2),
(2,'1111111111111113',1,2,1,3,2,NULL,NULL,2),
(3,'1111111111111116',1,1,1,1,2,NULL,NULL,1),
(4,'1111111111111137',1,3,1,5,1,NULL,NULL,1),
(5,'1111111111111129',1,1,1,1,1,NULL,NULL,1),
(6,'1111111111111111',1,3,1,4,1,NULL,NULL,1);

/*Table structure for table `tb_wargameninggal` */

DROP TABLE IF EXISTS `tb_wargameninggal`;

CREATE TABLE `tb_wargameninggal` (
  `kode_wargameninggal` int(11) NOT NULL AUTO_INCREMENT,
  `no_masyarakat` int(11) NOT NULL,
  `tgl_meninggal` date NOT NULL,
  `jam_meninggal` time NOT NULL,
  PRIMARY KEY (`kode_wargameninggal`),
  KEY `no_masyarakat` (`no_masyarakat`),
  CONSTRAINT `tb_wargameninggal_ibfk_1` FOREIGN KEY (`no_masyarakat`) REFERENCES `tb_warga` (`no_masyarakat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_wargameninggal` */

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

/*Table structure for table `tblogin` */

DROP TABLE IF EXISTS `tblogin`;

CREATE TABLE `tblogin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(42) NOT NULL,
  `jabatan` varchar(15) NOT NULL,
  `wilayah` varchar(5) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tblogin` */

insert  into `tblogin`(`username`,`password`,`jabatan`,`wilayah`) values 
('lurah','lurah','lurah','0'),
('rt1','rt1','rt','01'),
('rt10','rt10','rt','10'),
('rt11','rt11','rt','11'),
('rt12','rt12','rt','12'),
('rt2','erte','rt','02'),
('rt3','rt3','rt','03'),
('rt4','rt4','rt','04'),
('rt5','rt5','rt','05'),
('rt6','rt6','rt','06'),
('rt7','rt7','rt','07'),
('rt8','rt8','rt','08'),
('rt9','rt9','rt','09'),
('rw1','rw1','rw','01'),
('rw2','rw2','rw','02');

/*Table structure for table `data_kk` */

DROP TABLE IF EXISTS `data_kk`;

/*!50001 DROP VIEW IF EXISTS `data_kk` */;
/*!50001 DROP TABLE IF EXISTS `data_kk` */;

/*!50001 CREATE TABLE  `data_kk`(
 `NO_KK` varchar(16) ,
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

/*Table structure for table `tampil_niknama` */

DROP TABLE IF EXISTS `tampil_niknama`;

/*!50001 DROP VIEW IF EXISTS `tampil_niknama` */;
/*!50001 DROP TABLE IF EXISTS `tampil_niknama` */;

/*!50001 CREATE TABLE  `tampil_niknama`(
 `nomas` int(11) ,
 `nik` varchar(16) ,
 `nama_lengkap` varchar(60) 
)*/;

/*View structure for view data_kk */

/*!50001 DROP TABLE IF EXISTS `data_kk` */;
/*!50001 DROP VIEW IF EXISTS `data_kk` */;

/*!50001 CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_kk` AS (select `tb_kk`.`no_kk` AS `NO_KK`,`tb_warga`.`nik` AS `NIK`,`tb_masyarakat`.`nama_lengkap` AS `NAMA`,`tb_wilayah`.`kode_wilayah` AS `KODE_WIL`,`tb_wilayah`.`provinsi` AS `PROVINSI`,`tb_wilayah`.`kecamatan` AS `KECAMATAN`,`tb_wilayah`.`kelurahan` AS `KELURAHAN`,`tb_wilayah`.`rw` AS `RW`,`tb_wilayah`.`rt` AS `RT` from (((`tb_kk` join `tb_warga`) join `tb_masyarakat`) join `tb_wilayah`) where ((`tb_kk`.`kode_wilayah` = `tb_wilayah`.`kode_wilayah`) and (`tb_kk`.`no_masyarakat` = `tb_warga`.`no_masyarakat`) and (`tb_warga`.`nik` = `tb_masyarakat`.`nik`) and (`tb_kk`.`status_kk` = 'Kepala Keluarga'))) */;

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

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_jk` AS (select `tb_masyarakat`.`jenis_kelamin` AS `jenis_kelamin`,count(`tb_masyarakat`.`nik`) AS `jumlah`,concat(`tb_masyarakat`.`jenis_kelamin`,' ',round(((count(`tb_warga`.`nik`) / (select count(0) from `tb_warga`)) * 100),2),'%') AS `Prosentase` from (`tb_masyarakat` join `tb_warga`) where (`tb_masyarakat`.`nik` = `tb_warga`.`nik`) group by `tb_masyarakat`.`jenis_kelamin`) */;

/*View structure for view data_warga_negara */

/*!50001 DROP TABLE IF EXISTS `data_warga_negara` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_negara` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_negara` AS (select `tb_masyarakat`.`warganegara` AS `warganegara`,count(`tb_warga`.`nik`) AS `jumlah`,concat(`tb_masyarakat`.`warganegara`,' ',round(((count(`tb_warga`.`nik`) / (select count(0) from `tb_warga`)) * 100),2),'%') AS `Prosentase` from (`tb_masyarakat` join `tb_warga`) where (`tb_warga`.`nik` = `tb_masyarakat`.`nik`) group by `tb_masyarakat`.`warganegara`) */;

/*View structure for view data_warga_pendidikan */

/*!50001 DROP TABLE IF EXISTS `data_warga_pendidikan` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_pendidikan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_pendidikan` AS (select `tb_pendidikan`.`pendidikan` AS `pendidikan`,count(0) AS `total_pendidikan` from (`tb_warga` join `tb_pendidikan`) where (`tb_warga`.`kode_pendidikan` = `tb_pendidikan`.`kode_pendidikan`) group by `tb_pendidikan`.`pendidikan`) */;

/*View structure for view data_warga_usia */

/*!50001 DROP TABLE IF EXISTS `data_warga_usia` */;
/*!50001 DROP VIEW IF EXISTS `data_warga_usia` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_warga_usia` AS (select (case when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 0 and 4) then '0-4' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 5 and 9) then '5-9' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 10 and 14) then '10-14' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 15 and 19) then '15-19' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 20 and 24) then '20-24' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 25 and 29) then '25-29' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 30 and 34) then '30-34' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 35 and 39) then '35-39' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 40 and 44) then '40-44' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 45 and 49) then '45-49' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 50 and 54) then '50-54' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 55 and 59) then '55-59' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 60 and 64) then '60-64' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 65 and 69) then '65-69' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 70 and 74) then '70-74' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) >= 75) then '75+' else 'Tidak Dikenal' end) AS `range_umur`,sum(if((`tb_masyarakat`.`jenis_kelamin` = 'Laki-Laki'),1,0)) AS `Laki`,sum(if((`tb_masyarakat`.`jenis_kelamin` = 'Perempuan'),1,0)) AS `Perempuan`,count(1) AS `jumlah` from (`tb_masyarakat` join `tb_warga`) where (`tb_masyarakat`.`nik` = `tb_warga`.`nik`) group by (case when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 0 and 4) then '0-4' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 5 and 9) then '5-9' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 10 and 14) then '10-14' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 15 and 19) then '15-19' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 20 and 24) then '20-24' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 25 and 34) then '30-34' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 35 and 39) then '35-39' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 40 and 44) then '40-44' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 45 and 49) then '45-49' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 50 and 54) then '50-54' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 55 and 59) then '55-59' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 60 and 64) then '60-64' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 65 and 69) then '65-69' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) between 70 and 74) then '70-74' when (timestampdiff(YEAR,`tb_masyarakat`.`tgl_lahir`,curdate()) >= 75) then '75+' else 'Tidak Dikenal' end)) */;

/*View structure for view tampil_niknama */

/*!50001 DROP TABLE IF EXISTS `tampil_niknama` */;
/*!50001 DROP VIEW IF EXISTS `tampil_niknama` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_niknama` AS (select `tb_warga`.`no_masyarakat` AS `nomas`,`tb_warga`.`nik` AS `nik`,`tb_masyarakat`.`nama_lengkap` AS `nama_lengkap` from (`tb_warga` join `tb_masyarakat`) where (`tb_warga`.`nik` = `tb_masyarakat`.`nik`)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
