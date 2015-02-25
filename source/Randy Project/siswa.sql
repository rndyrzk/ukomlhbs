-- MySQL dump 10.13  Distrib 5.6.21, for Win32 (x86)
--
-- Host: localhost    Database: laporan_siswa
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gurus`
--

DROP TABLE IF EXISTS `gurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gurus` (
  `kode_guru` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_kk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_guru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_guru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telp_guru` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`kode_guru`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gurus`
--

LOCK TABLES `gurus` WRITE;
/*!40000 ALTER TABLE `gurus` DISABLE KEYS */;
/*!40000 ALTER TABLE `gurus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kompetensi_keahlians`
--

DROP TABLE IF EXISTS `kompetensi_keahlians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kompetensi_keahlians` (
  `kode_kk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_mata_diklat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_kompetensikeahlian` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`kode_kk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kompetensi_keahlians`
--

LOCK TABLES `kompetensi_keahlians` WRITE;
/*!40000 ALTER TABLE `kompetensi_keahlians` DISABLE KEYS */;
/*!40000 ALTER TABLE `kompetensi_keahlians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laporans`
--

DROP TABLE IF EXISTS `laporans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laporans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporans`
--

LOCK TABLES `laporans` WRITE;
/*!40000 ALTER TABLE `laporans` DISABLE KEYS */;
INSERT INTO `laporans` VALUES (2,'may','12','RPL','2015-02-16 02:07:07','2015-02-16 02:07:07'),(3,'Randy','12','RPL','2015-02-16 02:23:27','2015-02-16 02:23:27'),(4,'Adam','12','Akutansi','2015-02-16 02:23:54','2015-02-16 02:23:54');
/*!40000 ALTER TABLE `laporans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_diklats`
--

DROP TABLE IF EXISTS `mata_diklats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_diklats` (
  `kode_mata_diklat` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_mata_diklat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`kode_mata_diklat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_diklats`
--

LOCK TABLES `mata_diklats` WRITE;
/*!40000 ALTER TABLE `mata_diklats` DISABLE KEYS */;
/*!40000 ALTER TABLE `mata_diklats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2015_02_11_051700_create_table_nama',1),('2015_02_13_042304_create_table_mata_diklatt',2),('2015_02_13_074411_create_table_siswa',3),('2015_02_13_123351_create_table_kompetensi_keahlian',4),('2015_02_13_124049_create_table_standar_kompetensi',5),('2015_02_13_124433_create_table_wali_murid',6),('2015_02_13_124856_create_table_nilai',7),('2015_02_13_125123_create_table_guru',8),('2015_02_15_042906_create_table_admin',9),('2015_02_15_043149_create_table_user',10),('2015_02_16_203130_create_table_nilaiii',11),('2015_02_17_191651_create_table_pemasaran1',12),('2015_02_20_035138_create_table_10xrpl',13),('2015_02_20_043328_create_table_rplss',14);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilais`
--

DROP TABLE IF EXISTS `nilais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nisn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kode_sk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_angka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_huruf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilais`
--

LOCK TABLES `nilais` WRITE;
/*!40000 ALTER TABLE `nilais` DISABLE KEYS */;
INSERT INTO `nilais` VALUES (12,'22197991','Taupan Padana','16','93','Sembilan Puluh Tiga','2015-02-17 09:32:43','2015-02-17 09:32:43'),(13,'28107990','Yanti','27','75','Tujuh puluh lima','2015-02-17 09:35:35','2015-02-17 09:35:35'),(14,'23319719','Titis Setyaningrum','15','88','Delapan puluh delapan','2015-02-17 09:39:21','2015-02-17 09:39:21'),(15,'20117983','Rismaijayanto','22','95','Sembilan Puluh Lima','2015-02-17 10:26:15','2015-02-17 10:26:15'),(16,'29811821','Rizki Insani','26','90','Sembilan Puluh','2015-02-17 10:52:08','2015-02-17 10:52:08'),(17,'21000820','Syifa Fadhillah Putri','12','98','Sembilan Puluh Delapan','2015-02-17 10:55:03','2015-02-17 10:55:03'),(18,'29900300','Zulsyika Nurfaizah','23','100','Seratus','2015-02-17 11:32:35','2015-02-17 11:32:35'),(21,'21297225','Rahman','18','95','Sembilan Puluh Lima','2015-02-17 19:38:06','2015-02-17 19:38:06'),(22,'22197990','Restu Aji Pamungkas','14','95','Sembilan Puluh Lima','2015-02-17 22:31:57','2015-02-17 22:31:57');
/*!40000 ALTER TABLE `nilais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemasaran1s`
--

DROP TABLE IF EXISTS `pemasaran1s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemasaran1s` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nisn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_angka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_huruf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemasaran1s`
--

LOCK TABLES `pemasaran1s` WRITE;
/*!40000 ALTER TABLE `pemasaran1s` DISABLE KEYS */;
INSERT INTO `pemasaran1s` VALUES (2,'21110921','Indah Nurlaila','XII-Pemasaran1','95','Sembilan Puluh Lima','2015-02-17 18:41:53','2015-02-17 18:41:53'),(3,'21297220','Lisa Ningrat','XII-Pemasaran1','88','Delapan Puluh Delapan','2015-02-17 18:43:18','2015-02-17 18:43:18'),(4,'20177090','Helfa Resha Finaya','X-Pemasaran1','95','Sembilan Puluh Lima','2015-02-17 19:24:18','2015-02-17 19:24:18');
/*!40000 ALTER TABLE `pemasaran1s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sepuluhrpladmins`
--

DROP TABLE IF EXISTS `sepuluhrpladmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sepuluhrpladmins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nisn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_angka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_huruf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepuluhrpladmins`
--

LOCK TABLES `sepuluhrpladmins` WRITE;
/*!40000 ALTER TABLE `sepuluhrpladmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `sepuluhrpladmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswas`
--

DROP TABLE IF EXISTS `siswas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswas` (
  `nisn` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_kk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_siswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_siswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto_siswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`nisn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswas`
--

LOCK TABLES `siswas` WRITE;
/*!40000 ALTER TABLE `siswas` DISABLE KEYS */;
/*!40000 ALTER TABLE `siswas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standar_kompetensis`
--

DROP TABLE IF EXISTS `standar_kompetensis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `standar_kompetensis` (
  `kode_sk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kode_kk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_sk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kelas_sk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`kode_sk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standar_kompetensis`
--

LOCK TABLES `standar_kompetensis` WRITE;
/*!40000 ALTER TABLE `standar_kompetensis` DISABLE KEYS */;
/*!40000 ALTER TABLE `standar_kompetensis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wali_murids`
--

DROP TABLE IF EXISTS `wali_murids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wali_murids` (
  `kode_wali` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nisn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_ayah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_ibu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_wali` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telp_wali` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`kode_wali`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wali_murids`
--

LOCK TABLES `wali_murids` WRITE;
/*!40000 ALTER TABLE `wali_murids` DISABLE KEYS */;
/*!40000 ALTER TABLE `wali_murids` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-20 15:29:34
