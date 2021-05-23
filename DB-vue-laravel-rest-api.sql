-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: articoli_db
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articolo`
--

DROP TABLE IF EXISTS `articolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articolo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `titolo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articolo`
--

LOCK TABLES `articolo` WRITE;
/*!40000 ALTER TABLE `articolo` DISABLE KEYS */;
INSERT INTO `articolo` VALUES (126,'qqq 2 nuovo valore gg mm','qqq','2021-02-25 06:57:48','2021-04-02 22:36:46'),(127,'tt','ttt','2021-02-25 06:59:00','2021-02-25 06:59:00'),(128,'Repellendus id sed. dssds','Totam dolorem a nostrum quia quia natus et odit aliquam rerum necessitatibus recusandae aspernatur est quidem ex labore omnis cumque eum sint expedita explicabo alias dolorem id molestias et aut natus.','2021-02-25 10:02:50','2021-04-05 10:29:08'),(129,'Vel minima.','Nesciunt voluptatum cupiditate et et ad occaecati est atque assumenda accusantium tempora optio amet.','2021-02-25 10:02:50','2021-02-25 10:02:50'),(130,'In et nihil et est.','Totam in qui ullam neque repudiandae eos sed recusandae officiis voluptatem ratione quam dolor sed beatae repudiandae reiciendis.','2021-02-25 10:02:50','2021-02-25 10:02:50'),(131,'Consequatur vel.','Est similique omnis quos modi ea repellendus voluptatem sit sit assumenda ex voluptatem commodi ducimus temporibus nihil rerum accusantium molestiae.','2021-02-25 10:02:50','2021-02-25 10:02:50'),(132,'Provident sit.','Odio maiores nihil et vero dolores occaecati consequuntur similique aliquid atque tempore ut delectus et vitae et maxime alias recusandae quia id.','2021-02-25 10:02:50','2021-02-25 10:02:50'),(133,'Sit quia id dolorem.','Qui dolorem consequatur rerum rerum dignissimos harum esse exercitationem quia harum pariatur nihil repellendus repellendus qui quo excepturi fugiat enim sequi temporibus iure porro quidem molestiae velit unde ratione in.','2021-02-25 10:02:50','2021-02-25 10:02:50'),(134,'Qui sint soluta.','Saepe voluptas perspiciatis dolores labore vitae quas sed earum in sint quia illo rerum est.','2021-02-25 10:02:50','2021-02-25 10:02:50'),(135,'Velit nisi ipsum nam.','Magnam illum voluptas facilis sapiente tenetur architecto optio dolorem rerum fugit voluptatem optio deserunt minima voluptas consequatur libero aspernatur maxime harum autem enim labore illo nobis voluptas.','2021-02-25 10:02:50','2021-02-25 10:02:50'),(136,'Ducimus sed occaecati.','Eos et dolor consectetur est nesciunt et itaque culpa ipsa exercitationem eveniet omnis tenetur mollitia ut vitae voluptas culpa optio et veritatis.','2021-02-25 10:02:50','2021-02-25 10:02:50'),(137,'Aliquam sapiente ipsa.','Excepturi nulla beatae fugit nesciunt vitae repellendus sunt rerum sint at et voluptatem repellat nemo nihil sit odit laborum consequatur consequatur provident et recusandae suscipit laboriosam et.','2021-02-25 10:02:50','2021-04-04 20:36:00'),(138,'Voluptas minus.','Voluptatem laudantium unde eum autem id voluptatem aperiam id corrupti voluptatibus atque esse ea eos minus est eum deleniti minus aut totam qui qui autem maxime incidunt facilis earum architecto.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(139,'Quas doloribus.','Beatae ea placeat culpa sed ex quidem ratione doloribus dicta fugiat ipsam dicta enim adipisci sed suscipit numquam eum omnis sint maiores sed ex occaecati unde quos qui illo dolores.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(140,'Perferendis sit.','Sapiente dolorum in debitis impedit nulla quia sapiente dignissimos vel libero similique accusantium ut voluptas sed nesciunt numquam cupiditate unde laboriosam id soluta ipsam rerum fugiat labore voluptate.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(141,'Consequatur illum qui.','Eum quod veniam porro voluptatibus quae beatae vel debitis repellat odio vel aliquid nisi veritatis quia dolorem.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(142,'Qui ea omnis possimus.','Debitis dolorem neque vitae id atque iste ut aut dolorum dolores non quo voluptatem eveniet.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(143,'Ducimus omnis tenetur.','Earum voluptas inventore nihil in facere assumenda est explicabo neque voluptatum sit non maxime voluptatum eos voluptatem quo corrupti omnis vitae ut provident quisquam et dolor hic impedit.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(144,'Nobis maxime.','Sunt neque distinctio eveniet consequatur autem ducimus ut voluptatem ab voluptas asperiores dolore unde.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(145,'Autem beatae vel.','Odit quasi perferendis culpa commodi dignissimos culpa velit non enim consequatur iusto corrupti magnam est rem nostrum voluptatem dolore quis eius enim fuga asperiores quo libero ab molestias.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(146,'At reprehenderit qui.','Ipsam explicabo aut accusantium error aperiam quaerat qui recusandae magni qui itaque ut incidunt voluptatem possimus facilis vitae excepturi est perspiciatis illum quos.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(147,'Voluptatibus.','Accusantium vero dolores expedita in dolorum voluptas molestias sequi rerum ut rem mollitia est accusantium atque ea fuga ullam velit molestiae porro eius quia dolor.','2021-02-25 10:02:52','2021-02-25 10:02:52'),(148,'Numquam qui ea.','Dolor laudantium fuga et tempora rerum aspernatur aut eius neque natus perferendis quis consequatur odit qui laborum quibusdam id dolorem minus iure et aut.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(149,'Voluptatem commodi.','Sit illum eum est doloremque nisi in aut omnis rem harum fugit sint quis consequuntur fugiat minima maiores assumenda aut.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(150,'Ipsam ab ut eveniet.','Aut dignissimos natus vel repellat placeat eos iure velit quia a laborum et ut assumenda.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(151,'Modi commodi.','Inventore ea nisi quam quo sint totam fuga non itaque voluptas assumenda omnis optio quia aperiam quam consequuntur amet voluptatem delectus quia perspiciatis et amet labore nostrum sunt in ipsam.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(152,'Aliquid totam autem.','Ut eum voluptate earum delectus laudantium porro et voluptatem totam similique omnis quod consequatur quos doloremque error eligendi et dolorem in.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(153,'Inventore iure fugiat.','Accusamus in numquam et quibusdam magnam eos commodi dignissimos omnis sed facilis et fugiat.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(154,'Ea aut modi est.','Sequi ipsum modi molestiae numquam asperiores voluptatibus est hic dolores ipsa dolorum ex iste quidem illo autem hic.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(155,'Voluptatibus ipsum.','Architecto est in ab dolores in perferendis nam dolores est quis voluptatem consequatur impedit architecto quo et qui ipsam deserunt soluta sint quae aliquam blanditiis totam porro eius labore eum.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(156,'Unde sint excepturi.','Fugit unde possimus amet minus atque qui cumque ut repellendus et illum iusto odio rerum sed velit mollitia eius qui expedita natus consequuntur culpa.','2021-02-25 10:02:54','2021-02-25 10:02:54'),(157,'Ea beatae suscipit.','Dicta ut cum nam debitis vel excepturi cum amet consectetur ducimus et hic et aspernatur voluptas nulla qui quasi saepe molestiae aut sint tempore consectetur et culpa aut.','2021-02-25 10:02:55','2021-02-25 10:02:55'),(158,',,.//,./,.,/.','mm,.,.,','2021-02-25 21:10:45','2021-02-25 21:10:45'),(160,'wwwwwwwwwwwwwwwwwwwwwwwwww','wwwwwwwwwwwwwwwwwwwwwwwwwww','2021-02-27 14:06:15','2021-02-27 14:06:15'),(161,'vvvvvvvvvvvvv','vvvvvvvvvvvvvvvvvvvvvvv','2021-02-27 14:08:30','2021-02-27 14:08:30'),(162,'3333333333333333','33333333333333333333','2021-02-27 14:09:26','2021-02-27 14:09:26'),(163,'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','zzzzzzzzzzzzzzzzzzzzzzzz','2021-04-05 10:34:58','2021-04-05 10:34:58'),(164,'pippo zzz','pippo zzz','2021-04-05 10:38:48','2021-04-05 10:38:48');
/*!40000 ALTER TABLE `articolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_02_24_100754_articoli_struttuta_database',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05 12:11:17
