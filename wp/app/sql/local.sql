-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-10-11 05:36:51','2021-10-11 05:36:51','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=7720 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://komura.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://komura.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','古村幹夫 公式サイト','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','m.akirabo@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:25:\"mw-wp-form/mw-wp-form.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','komura','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','komura','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:25:\"mw-wp-form/mw-wp-form.php\";a:2:{i:0;s:10:\"MW_WP_Form\";i:1;s:10:\"_uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','Asia/Tokyo','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','32','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1649482610','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:8:{i:1634528211;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1634535411;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634560796;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634560797;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634560940;a:3:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634567998;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1634621811;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','|$SOC?Z5<1Kal<q7KiMN2hYODO(SCtxRM|[Q)u,Zn+)%sr<R#T/>v9o;aoOyL5{&','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','V=5Zi2|`5fAxT&s5Ifvs<X^-N/e3t1Kp)g^m@3VMq|lM]5[$9SlC@3z7_ph)@,$T','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633956834;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:48:\"HTTPS のリクエストに失敗しました。\";}}','yes');
INSERT INTO `wp_options` VALUES (129,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (130,'_site_transient_timeout_browser_a44e7ab8cc69f9e2b9db9430df373653','1634560796','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_browser_a44e7ab8cc69f9e2b9db9430df373653','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.71\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1634560797','no');
INSERT INTO `wp_options` VALUES (133,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (147,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (150,'WPLANG','ja','yes');
INSERT INTO `wp_options` VALUES (151,'new_admin_email','m.akirabo@gmail.com','yes');
INSERT INTO `wp_options` VALUES (156,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (159,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (165,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"17.3\";}','yes');
INSERT INTO `wp_options` VALUES (166,'wpseo','a:45:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:7:\"version\";s:4:\"17.3\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1633956140;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:19:\"http://komura.local\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (167,'wpseo_titles','a:106:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (168,'wpseo_social','a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (184,'current_theme','mall','yes');
INSERT INTO `wp_options` VALUES (185,'theme_mods_komura','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (186,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (208,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":6,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (215,'rewrite_rules','a:114:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"mw-wp-form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"mw-wp-form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"mw-wp-form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"mw-wp-form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"mw-wp-form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"mw-wp-form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"mw-wp-form/([^/]+)/embed/?$\";s:43:\"index.php?mw-wp-form=$matches[1]&embed=true\";s:31:\"mw-wp-form/([^/]+)/trackback/?$\";s:37:\"index.php?mw-wp-form=$matches[1]&tb=1\";s:39:\"mw-wp-form/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?mw-wp-form=$matches[1]&paged=$matches[2]\";s:46:\"mw-wp-form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?mw-wp-form=$matches[1]&cpage=$matches[2]\";s:35:\"mw-wp-form/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?mw-wp-form=$matches[1]&page=$matches[2]\";s:27:\"mw-wp-form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"mw-wp-form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"mw-wp-form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"mw-wp-form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"mw-wp-form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"mw-wp-form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=32&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (247,'_site_transient_timeout_browser_080845ddfc9fd28cc64d421dcdca199d','1634714515','no');
INSERT INTO `wp_options` VALUES (248,'_site_transient_browser_080845ddfc9fd28cc64d421dcdca199d','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.81\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (7688,'ai1wm_secret_key','IxcHLlsFAPLL','yes');
INSERT INTO `wp_options` VALUES (7697,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.8.1.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1634522994;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (7698,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1634523001;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.48\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.48.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2601679\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2601679\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:25:\"mw-wp-form/mw-wp-form.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/mw-wp-form\";s:4:\"slug\";s:10:\"mw-wp-form\";s:6:\"plugin\";s:25:\"mw-wp-form/mw-wp-form.php\";s:11:\"new_version\";s:5:\"4.4.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/mw-wp-form/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/mw-wp-form.4.4.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/mw-wp-form_ddf1dc.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/mw-wp-form/assets/banner-772x250.png?rev=821606\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:23:\"siteguard/siteguard.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/siteguard\";s:4:\"slug\";s:9:\"siteguard\";s:6:\"plugin\";s:23:\"siteguard/siteguard.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/siteguard/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/siteguard.1.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/siteguard/assets/icon-256x256.png?rev=1011863\";s:2:\"1x\";s:62:\"https://ps.w.org/siteguard/assets/icon-128x128.png?rev=1011863\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/siteguard/assets/banner-772x250.png?rev=1011863\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"17.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.17.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:8:\"requires\";s:3:\"5.6\";}}}','no');
INSERT INTO `wp_options` VALUES (7699,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1634523002;s:7:\"checked\";a:2:{s:6:\"komura\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (7700,'ai1wm_status','a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:316:\"<a href=\"http://komura.local/wp-content/ai1wm-backups/komura.local-20211016-144856-slav5u.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"komura.local\" download=\"komura.local-20211016-144856-slav5u.wpress\"><span>komura.local をダウンロード</span> <em>サイズ: 331 KB</em></a>\";}','yes');
INSERT INTO `wp_options` VALUES (7705,'_site_transient_ai1wm_last_check_for_updates','1634523001','no');
INSERT INTO `wp_options` VALUES (7706,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (7711,'_site_transient_timeout_theme_roots','1634524802','no');
INSERT INTO `wp_options` VALUES (7712,'_site_transient_theme_roots','a:2:{s:6:\"komura\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (7713,'_transient_timeout_986758a9fc81b6796de9fb92a74d76ac8fe55b59','1634524753','no');
INSERT INTO `wp_options` VALUES (7714,'_transient_986758a9fc81b6796de9fb92a74d76ac8fe55b59','a:0:{}','no');
INSERT INTO `wp_options` VALUES (7715,'_transient_timeout_07a31c22afbc263fae4f759a570c4699a66de116','1634524753','no');
INSERT INTO `wp_options` VALUES (7716,'_transient_07a31c22afbc263fae4f759a570c4699a66de116','a:0:{}','no');
INSERT INTO `wp_options` VALUES (7717,'_transient_timeout_84eeb498cc9e365e70f6e3ef13d5b0d12a4a33e7','1634524753','no');
INSERT INTO `wp_options` VALUES (7718,'_transient_84eeb498cc9e365e70f6e3ef13d5b0d12a4a33e7','a:0:{}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (4,2,'_wp_trash_meta_time','1634110276');
INSERT INTO `wp_postmeta` VALUES (5,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (6,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (7,3,'_wp_trash_meta_time','1634110278');
INSERT INTO `wp_postmeta` VALUES (8,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (9,7,'_edit_lock','1634130043:1');
INSERT INTO `wp_postmeta` VALUES (10,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (11,7,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (12,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (13,9,'_edit_lock','1634344606:1');
INSERT INTO `wp_postmeta` VALUES (14,9,'mw-wp-form','a:29:{s:11:\"querystring\";b:0;s:5:\"usedb\";b:0;s:12:\"mail_subject\";s:57:\"お申込みいただきありがとうございます。\";s:9:\"mail_from\";s:22:\"komura.mikio@gmail.com\";s:11:\"mail_sender\";s:28:\"古村幹夫 公式サイト\";s:13:\"mail_reply_to\";s:22:\"komura.mikio@gmail.com\";s:12:\"mail_content\";s:1517:\"この度は「古村幹夫後援会」の入会にお申込みいただきありがとうございます。\r\n古村幹夫 公式サイトからの自動返信メールとなります。\r\n\r\n以下の内容で申込みを受け付けました。\r\n内容のご確認をよろしくお願いいたします。\r\n２～３日しても当方よりメールでの連絡がない場合は、\r\n念のため直接お電話にてご確認をお願いいたします。\r\n\r\n────────────────────────────\r\n▼送信内容\r\n────────────────────────────\r\n\r\n【本人お名前（漢字）】\r\n[name]\r\n\r\n\r\n【本人お名前（フリガナ）】\r\n[name_kana]\r\n\r\n\r\n【郵便番号】\r\n[zip]\r\n\r\n\r\n【住所】\r\n[address01]\r\n\r\n\r\n【電話番号】\r\n[tel]\r\n\r\n\r\n【メールアドレス】\r\n[email]\r\n\r\n\r\n【メール受信の同意】\r\n[agree]\r\n\r\n\r\n【生年月日（西暦）】\r\n[year]年[mon]月[day]日\r\n\r\n\r\n【ご紹介者お名前】\r\n[introducerName]\r\n\r\n\r\n【住所】\r\n[introducerAddress]\r\n\r\n\r\n【電話番号】\r\n[introducerTel]\r\n\r\n\r\n【メールアドレス】\r\n[introducerEmail]\r\n\r\n\r\n\r\n----------------------------------------------------------------------\r\n古村幹夫 公式サイト\r\n〒399-0423 長野県上伊那郡辰野町大字澤底1760\r\nURL：komura-mikio.com\r\nE-MAIL：komura.mikio@gmail.com\r\nTEL：050-3635-4956\r\nFAX：026-403-4943\r\n\r\n----------------------------------------------------------------------\";s:21:\"automatic_reply_email\";s:5:\"email\";s:7:\"mail_to\";s:19:\"m.akirabo@gmail.com\";s:7:\"mail_cc\";s:0:\"\";s:8:\"mail_bcc\";s:0:\"\";s:19:\"admin_mail_reply_to\";s:22:\"komura.mikio@gmail.com\";s:18:\"admin_mail_subject\";s:57:\"ホームページよりお申込みがありました。\";s:16:\"mail_return_path\";s:22:\"komura.mikio@gmail.com\";s:15:\"admin_mail_from\";s:22:\"komura.mikio@gmail.com\";s:17:\"admin_mail_sender\";s:28:\"古村幹夫 公式サイト\";s:18:\"admin_mail_content\";s:1025:\"ホームページからお申込みがありました。\r\n内容の確認をお願いいたします。\r\n\r\n\r\n────────────────────────────\r\n▼送信内容\r\n────────────────────────────\r\n\r\n【本人お名前（漢字）】\r\n[name]\r\n\r\n\r\n【本人お名前（フリガナ）】\r\n[name_kana]\r\n\r\n\r\n【郵便番号】\r\n[zip]\r\n\r\n\r\n【住所】\r\n[address01]\r\n\r\n\r\n【電話番号】\r\n[tel]\r\n\r\n\r\n【メールアドレス】\r\n[email]\r\n\r\n\r\n【メール受信の同意】\r\n[agree]\r\n\r\n\r\n【生年月日（西暦）】\r\n[year]年[mon]月[day]日\r\n\r\n\r\n【ご紹介者お名前】\r\n[introducerName]\r\n\r\n\r\n【住所】\r\n[introducerAddress]\r\n\r\n\r\n【電話番号】\r\n[introducerTel]\r\n\r\n\r\n【メールアドレス】\r\n[introducerEmail]\r\n\r\n\r\n\r\n----------------------------------------------------------------------\r\n\r\nこのメールは古村幹夫 公式サイト\r\n「お問い合わせフォーム」から送信されています。\";s:14:\"akismet_author\";s:0:\"\";s:20:\"akismet_author_email\";s:0:\"\";s:18:\"akismet_author_url\";s:0:\"\";s:16:\"complete_message\";s:153:\"<p class=\"formThanks\">送信が完了いたしました。<br>「古村幹夫後援会」にお申込いただきありがとうございました。</p>\";s:9:\"input_url\";s:9:\"/contact/\";s:16:\"confirmation_url\";s:21:\"/confirm-performance/\";s:12:\"complete_url\";s:20:\"/thanks-performance/\";s:20:\"validation_error_url\";s:0:\"\";s:10:\"validation\";a:13:{i:0;a:2:{s:6:\"target\";s:7:\"agreePp\";s:8:\"required\";s:1:\"1\";}i:1;a:2:{s:6:\"target\";s:15:\"introducerEmail\";s:4:\"mail\";s:1:\"1\";}i:2;a:2:{s:6:\"target\";s:13:\"introducerTel\";s:7:\"numeric\";s:1:\"1\";}i:3;a:3:{s:6:\"target\";s:3:\"day\";s:7:\"numeric\";s:1:\"1\";s:7:\"between\";a:2:{s:3:\"min\";s:1:\"1\";s:3:\"max\";s:1:\"2\";}}i:4;a:3:{s:6:\"target\";s:3:\"mon\";s:7:\"numeric\";s:1:\"1\";s:7:\"between\";a:2:{s:3:\"min\";s:1:\"1\";s:3:\"max\";s:1:\"2\";}}i:5;a:3:{s:6:\"target\";s:4:\"year\";s:7:\"numeric\";s:1:\"1\";s:7:\"between\";a:2:{s:3:\"min\";s:1:\"2\";s:3:\"max\";s:1:\"4\";}}i:6;a:2:{s:6:\"target\";s:7:\"email02\";s:2:\"eq\";a:1:{s:6:\"target\";s:5:\"email\";}}i:7;a:2:{s:6:\"target\";s:5:\"email\";s:2:\"eq\";a:1:{s:6:\"target\";s:7:\"email02\";}}i:8;a:3:{s:6:\"target\";s:3:\"tel\";s:7:\"noempty\";s:1:\"1\";s:7:\"numeric\";s:1:\"1\";}i:9;a:2:{s:6:\"target\";s:9:\"address01\";s:7:\"noempty\";s:1:\"1\";}i:10;a:4:{s:6:\"target\";s:3:\"zip\";s:7:\"noempty\";s:1:\"1\";s:7:\"numeric\";s:1:\"1\";s:7:\"between\";a:2:{s:3:\"min\";s:1:\"7\";s:3:\"max\";s:1:\"7\";}}i:11;a:3:{s:6:\"target\";s:9:\"name_kana\";s:7:\"noempty\";s:1:\"1\";s:4:\"kana\";s:1:\"1\";}i:12;a:2:{s:6:\"target\";s:4:\"name\";s:7:\"noempty\";s:1:\"1\";}}s:5:\"style\";s:0:\"\";s:6:\"scroll\";b:0;s:6:\"extend\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (15,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (16,10,'_edit_lock','1634344062:1');
INSERT INTO `wp_postmeta` VALUES (17,10,'mw-wp-form','a:29:{s:11:\"querystring\";b:0;s:5:\"usedb\";b:0;s:12:\"mail_subject\";s:63:\"お問い合わせいただきありがとうございます。\";s:9:\"mail_from\";s:22:\"komura.mikio@gmail.com\";s:11:\"mail_sender\";s:28:\"古村幹夫 公式サイト\";s:13:\"mail_reply_to\";s:22:\"komura.mikio@gmail.com\";s:12:\"mail_content\";s:1166:\"この度はお問い合わせありがとうございます。\r\n古村幹夫 公式サイトからの自動返信メールとなります。\r\n\r\n以下の内容でお問い合わせを受け付けました。\r\n内容のご確認をよろしくお願いいたします。\r\n２～３日しても当方よりメールでの連絡がない場合は、\r\n念のため直接お電話にてご確認をお願いいたします。\r\n\r\n────────────────────────────\r\n▼送信内容\r\n────────────────────────────\r\n\r\n【お名前】\r\n[name]\r\n\r\n【フリガナ】\r\n[name_kana]\r\n\r\n【郵便番号】\r\n[zip]\r\n\r\n【住所】\r\n[address02]\r\n\r\n【電話番号】\r\n[tel]\r\n\r\n【メールアドレス】\r\n[email]\r\n\r\n【内容】\r\n[content]\r\n\r\n\r\n----------------------------------------------------------------------\r\n古村幹夫 公式サイト\r\n〒399-0423 長野県上伊那郡辰野町大字澤底1760\r\nURL：komura-mikio.com\r\nE-MAIL：komura.mikio@gmail.com\r\nTEL：050-3635-4956\r\nFAX：026-403-4943\r\n\r\n----------------------------------------------------------------------\";s:21:\"automatic_reply_email\";s:5:\"email\";s:7:\"mail_to\";s:19:\"m.akirabo@gmail.com\";s:7:\"mail_cc\";s:0:\"\";s:8:\"mail_bcc\";s:0:\"\";s:19:\"admin_mail_reply_to\";s:22:\"komura.mikio@gmail.com\";s:18:\"admin_mail_subject\";s:0:\"\";s:16:\"mail_return_path\";s:22:\"komura.mikio@gmail.com\";s:15:\"admin_mail_from\";s:22:\"komura.mikio@gmail.com\";s:17:\"admin_mail_sender\";s:28:\"古村幹夫 公式サイト\";s:18:\"admin_mail_content\";s:718:\"ホームページからお問い合わせがありました。\r\n内容の確認をお願いいたします。\r\n\r\n\r\n────────────────────────────\r\n▼送信内容\r\n────────────────────────────\r\n\r\n【お名前】\r\n[name]\r\n\r\n【フリガナ】\r\n[name_kana]\r\n\r\n【郵便番号】\r\n[zip]\r\n\r\n【住所】\r\n[address02]\r\n\r\n【電話番号】\r\n[tel]\r\n\r\n【メールアドレス】\r\n[email]\r\n\r\n【内容】\r\n[content]\r\n\r\n\r\n----------------------------------------------------------------------\r\n\r\n\r\nこのメールは古村幹夫 公式サイト\r\n「お問い合わせフォーム」から送信されています。\";s:14:\"akismet_author\";s:0:\"\";s:20:\"akismet_author_email\";s:0:\"\";s:18:\"akismet_author_url\";s:0:\"\";s:16:\"complete_message\";s:132:\"<p class=\"formThanks\">送信が完了いたしました。<br>お問い合わせいただきありがとうございました。</p>\";s:9:\"input_url\";s:17:\"/contact-inquiry/\";s:16:\"confirmation_url\";s:17:\"/confirm-inquiry/\";s:12:\"complete_url\";s:16:\"/thanks-inquiry/\";s:20:\"validation_error_url\";s:0:\"\";s:10:\"validation\";a:8:{i:0;a:2:{s:6:\"target\";s:7:\"agreePp\";s:8:\"required\";s:1:\"1\";}i:1;a:3:{s:6:\"target\";s:7:\"content\";s:7:\"noempty\";s:1:\"1\";s:9:\"minlength\";a:1:{s:3:\"min\";s:1:\"5\";}}i:2;a:4:{s:6:\"target\";s:7:\"email02\";s:7:\"noempty\";s:1:\"1\";s:4:\"mail\";s:1:\"1\";s:2:\"eq\";a:1:{s:6:\"target\";s:5:\"email\";}}i:3;a:4:{s:6:\"target\";s:5:\"email\";s:7:\"noempty\";s:1:\"1\";s:4:\"mail\";s:1:\"1\";s:2:\"eq\";a:1:{s:6:\"target\";s:7:\"email02\";}}i:4;a:3:{s:6:\"target\";s:3:\"tel\";s:7:\"noempty\";s:1:\"1\";s:7:\"numeric\";s:1:\"1\";}i:5;a:2:{s:6:\"target\";s:3:\"zip\";s:7:\"numeric\";s:1:\"1\";}i:6;a:3:{s:6:\"target\";s:9:\"name_kana\";s:7:\"noempty\";s:1:\"1\";s:4:\"kana\";s:1:\"1\";}i:7;a:2:{s:6:\"target\";s:4:\"name\";s:7:\"noempty\";s:1:\"1\";}}s:5:\"style\";s:0:\"\";s:6:\"scroll\";b:0;s:6:\"extend\";a:0:{}}');
INSERT INTO `wp_postmeta` VALUES (18,7,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (19,14,'_edit_lock','1634126980:1');
INSERT INTO `wp_postmeta` VALUES (20,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (21,14,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (22,16,'_edit_lock','1634127328:1');
INSERT INTO `wp_postmeta` VALUES (23,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (24,16,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (25,14,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (26,16,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (27,20,'_edit_lock','1634127014:1');
INSERT INTO `wp_postmeta` VALUES (28,21,'_edit_lock','1634127797:1');
INSERT INTO `wp_postmeta` VALUES (29,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (30,21,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (31,23,'_edit_lock','1634127588:1');
INSERT INTO `wp_postmeta` VALUES (32,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (33,23,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (34,23,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (35,21,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (36,27,'_edit_lock','1634130859:1');
INSERT INTO `wp_postmeta` VALUES (37,27,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (38,27,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (39,27,'_yoast_wpseo_content_score','60');
INSERT INTO `wp_postmeta` VALUES (40,32,'_edit_lock','1634345723:1');
INSERT INTO `wp_postmeta` VALUES (41,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (42,32,'_yoast_wpseo_estimated-reading-time-minutes','');
INSERT INTO `wp_postmeta` VALUES (43,32,'_yoast_wpseo_title','%%sitename%%');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-10-11 05:36:51','2021-10-11 05:36:51','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-10-11 05:36:51','2021-10-11 05:36:51','',0,'http://komura.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-10-11 05:36:51','2021-10-11 05:36:51','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://komura.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-10-13 16:31:16','2021-10-13 07:31:16','',0,'http://komura.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-10-11 05:36:51','2021-10-11 05:36:51','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://komura.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-10-13 16:31:18','2021-10-13 07:31:18','',0,'http://komura.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-10-11 12:39:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-10-11 12:39:57','0000-00-00 00:00:00','',0,'http://komura.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-10-13 16:31:16','2021-10-13 07:31:16','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://komura.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-10-13 16:31:16','2021-10-13 07:31:16','',2,'http://komura.local/?p=5',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-10-13 16:31:18','2021-10-13 07:31:18','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://komura.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-10-13 16:31:18','2021-10-13 07:31:18','',3,'http://komura.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-10-13 16:31:48','2021-10-13 07:31:48','<!-- wp:html /-->\n\n<!-- wp:shortcode -->\n [mwform_formkey key=\"9\"]\n<!-- /wp:shortcode -->','コンタクト','','publish','closed','closed','','contact','','','2021-10-13 22:01:57','2021-10-13 13:01:57','',0,'http://komura.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-10-13 16:31:48','2021-10-13 07:31:48','','コンタクト','','inherit','closed','closed','','7-revision-v1','','','2021-10-13 16:31:48','2021-10-13 07:31:48','',7,'http://komura.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-10-13 18:42:28','2021-10-13 09:42:28','      <dl class=\"formList\">\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">本人お名前（漢字）</dt>\r\n          <dd class=\"formList_dd\">\r\n            [mwform_text name=\"name\" class=\"el_input\"]\r\n          </dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">本人お名前（フリガナ）</dt>\r\n          <dd class=\"formList_dd\">\r\n             [mwform_text name=\"name_kana\" class=\"el_input\"]\r\n          </dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">郵便番号</dt>\r\n          <dd class=\"formList_dd\">\r\n            [mwform_number name=\"zip\" id=\"postalCode01\" class=\"el_input el_input__223\" step=\"1\"]<small>ハイフン無しでご入力ください。<br>※郵便番号を入力すると自動で住所が入力されます。</small>\r\n          </dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">住所</dt>\r\n          <dd class=\"formList_dd\">[mwform_text name=\"address01\" class=\"el_input\"]</dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">電話番号</dt>\r\n          <dd class=\"formList_dd\">[mwform_number name=\"tel\" class=\"el_input\" step=\"1\"]</dd>\r\n        </div>\r\n\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt any\">メールアドレス</dt>\r\n          <dd class=\"formList_dd\">\r\n            [mwform_email name=\"email\" class=\"el_input\" size=\"60\"]\r\n          </dd>\r\n        </div>\r\n\r\n        <div class=\"formList_item confirmHide\">\r\n          <dt class=\"formList_dt any\">メールアドレス（確認）</dt>\r\n          <dd class=\"formList_dd\">[mwform_email name=\"email02\" class=\"el_input\" size=\"60\"]</dd>\r\n        </div>\r\n\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt any\">メール受信の同意</dt>\r\n          <dd class=\"formList_dd\">\r\n        \r\n            [mwform_checkbox name=\"agree\" children=\"メールの受信に同意する\" separator=\",\"]\r\n\r\n        \r\n          </dd>\r\n        </div>\r\n\r\n        <div class=\"formList_item formList_item__mb\">\r\n          <dt class=\"formList_dt any\">生年月日（西暦）</dt>\r\n          <dd class=\"formList_dd\">\r\n            [mwform_number name=\"year\" class=\"el_input el_input__date\" min=\"1910\" max=\"2020\" step=\"1\"]年[mwform_number name=\"mon\" class=\"el_input el_input__date\" min=\"1\" max=\"12\" step=\"1\"]月[mwform_number name=\"day\" class=\"el_input el_input__date\" min=\"1\" max=\"31\" step=\"1\"]日\r\n          </dd>\r\n        </div>\r\n\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt any\">ご紹介者お名前</dt>\r\n          <dd class=\"formList_dd\">\r\n            [mwform_text name=\"introducerName\" class=\"el_input\"]\r\n          </dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt any\">住所</dt>\r\n          <dd class=\"formList_dd\">\r\n           [mwform_text name=\"introducerAddress\" class=\"el_input\"]\r\n          </dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt any\">電話番号</dt>\r\n          <dd class=\"formList_dd\">[mwform_number name=\"introducerTel\" class=\"el_input\" step=\"1\"]</dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt any\">メールアドレス</dt>\r\n          <dd class=\"formList_dd\">[mwform_email name=\"introducerEmail\" class=\"el_input\" size=\"60\"]</dd>\r\n        </div>\r\n      </dl>\r\n      <div class=\"formTxtRight\">下記の規約をご確認いただき、<br class=\"u-hide-pc\">確認画面にお進みください。</div>\r\n\r\n      <div class=\"termsbox\">\r\n        <h2 class=\"termsboxHeader01\">古村幹夫後援会規約<br class=\"u-hide-pc\"><span class=\"u-hide-sp\">／</span>プライバシーポリシー</h2>\r\n        <section>\r\n          <h3 class=\"termsboxHeader02\">古村幹夫後援会規約</h3>\r\n          <dl>\r\n            <div>\r\n              <dt>第１条（名称・所在地）</dt>\r\n              <dd>本会は、古村幹夫後援会と称し、主たる事務所を辰野町沢底に置く。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第２条（目的）</dt>\r\n              <dd>本会は、辰野町政発展のため尽力している古村幹夫氏の活動を支援することを本来の目的とする。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第３条（事業）</dt>\r\n              <dd>本会は前条の目的を達成するために講演会・報告会などの他、必要な事業を行う。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第４条（会員）</dt>\r\n              <dd>本会は、第２条の目的に賛同し、入会申込書を提出した者をもって会員とする。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第５条（役員）</dt>\r\n              <dd>本会に次の役員を置く。<br>会長１名、副会長 若干名、事務局長１名、会計２名、監事２名</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第６条（会議）</dt>\r\n              <dd>会長は、必要に応じ総会・役員会を招集する。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第７条（経費）</dt>\r\n              <dd>本会の経費は、寄付金・その他の収入を持って充てる。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第８条（会計年度及び監査）</dt>\r\n              <dd>会計年度は１月１日から１２月３１日までとする。会計は年末に監事による監査を受け役員会に報告する。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第９条（補則）</dt>\r\n              <dd>本規約に定めのない事項については、役員会で決定する。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>附則</dt>\r\n              <dd>本規約は、令和３年９月１０日より実施する。</dd>\r\n            </div>\r\n          </dl>\r\n        </section>\r\n        <section>\r\n          <h3 class=\"termsboxHeader02\">プライバシーポリシー</h3>\r\n\r\n          <p class=\"termsbox_txt\">\r\n            ご記入いただいた個人情報は入会の受付、業務遂行に必要な範囲で行う業務提携先等への提供に利用します。<br>\r\n            当会の活動通知を目的とし、それ以外の目的に利用されることはございません。<br>\r\n            個人情報は厳重に管理し、利用目的の達成に必要な範囲内で業者に委託する場合は、秘密を保持させるために適切な監督を行います。\r\n          </p>\r\n          <p class=\"termsbox_txt\">\r\n            古村幹夫後援会事務所<br class=\"u-hide-pc\"><span class=\"u-hide-sp\">／</span>後援会長　古村 仁士<br>\r\n            TEL.050-3635-4956 FAX.026-403-4943<br>\r\n            〒399-0423<br class=\"u-hide-pc\"> 長野県上伊那郡辰野町大字澤底1760\r\n          </p>\r\n        </section>\r\n      </div>\r\n      <div class=\"formAgree\">\r\n        [mwform_checkbox name=\"agreePp\" children=\"同意する\" separator=\",\"]\r\n        \r\n      </div>\r\n      <div class=\"btnWrapper\">\r\n[mwform_backButton class=\"btn_back\" value=\"&lt; 戻る\"][mwform_submitButton name=\"submit\" class=\"formSend\" confirm_value=\"確認画面へ >\" submit_value=\"送信する >\"]\r\n      </div>','公演会','','publish','closed','closed','','%e5%85%ac%e6%bc%94%e4%bc%9a','','','2021-10-16 09:38:55','2021-10-16 00:38:55','',0,'http://komura.local/?post_type=mw-wp-form&#038;p=9',0,'mw-wp-form','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-10-13 18:44:41','2021-10-13 09:44:41','      <dl class=\"formList\">\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">お名前（漢字）</dt>\r\n          <dd class=\"formList_dd\">[mwform_text name=\"name\" class=\"el_input\"]</dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">お名前（フリガナ）</dt>\r\n          <dd class=\"formList_dd\">[mwform_text name=\"name_kana\" class=\"el_input\"]</dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt any\">郵便番号</dt>\r\n          <dd class=\"formList_dd\">\r\n            [mwform_number name=\"zip\" id=\"postalCode02\" class=\"el_input el_input__223\" step=\"1\"]<small>ハイフン無しでご入力ください。<br>※郵便番号を入力すると自動で住所が入力されます。</small>\r\n          </dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt any\">住所</dt>\r\n          <dd class=\"formList_dd\">[mwform_text name=\"address02\" class=\"el_input\"]</dd>\r\n        </div>\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">電話番号</dt>\r\n          <dd class=\"formList_dd\">[mwform_number name=\"tel\" class=\"el_input\" step=\"1\"]</dd>\r\n        </div>\r\n\r\n        <div class=\"formList_item\">\r\n          <dt class=\"formList_dt require\">メールアドレス</dt>\r\n          <dd class=\"formList_dd\">[mwform_email name=\"email\" class=\"el_input\" size=\"60\"]</dd>\r\n        </div>\r\n\r\n        <div class=\"formList_item confirmHide\">\r\n          <dt class=\"formList_dt require\">メールアドレス（確認）</dt>\r\n          <dd class=\"formList_dd\">[mwform_email name=\"email02\" class=\"el_input\" size=\"60\"]</dd>\r\n        </div>\r\n\r\n        <div class=\"formList_item formList_item__txt\">\r\n          <dt class=\"formList_dt require\">お問い合わせ内容</dt>\r\n          <dd class=\"formList_dd\">\r\n            [mwform_textarea name=\"content\" class=\"formTxtarea\" cols=\"50\" rows=\"5\"]\r\n          </dd>\r\n        </div>\r\n\r\n      </dl>\r\n      <div class=\"formTxtRight\">下記の規約をご確認いただき、<br class=\"u-hide-pc\">確認画面にお進みください。</div>\r\n\r\n      <div class=\"termsbox\">\r\n        <h2 class=\"termsboxHeader01\">古村幹夫後援会規約<br class=\"u-hide-pc\"><span class=\"u-hide-sp\">／</span>プライバシーポリシー</h2>\r\n        <section>\r\n          <h3 class=\"termsboxHeader02\">古村幹夫後援会規約</h3>\r\n          <dl>\r\n            <div>\r\n              <dt>第１条（名称・所在地）</dt>\r\n              <dd>本会は、古村幹夫後援会と称し、主たる事務所を辰野町沢底に置く。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第２条（目的）</dt>\r\n              <dd>本会は、辰野町政発展のため尽力している古村幹夫氏の活動を支援することを本来の目的とする。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第３条（事業）</dt>\r\n              <dd>本会は前条の目的を達成するために講演会・報告会などの他、必要な事業を行う。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第４条（会員）</dt>\r\n              <dd>本会は、第２条の目的に賛同し、入会申込書を提出した者をもって会員とする。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第５条（役員）</dt>\r\n              <dd>本会に次の役員を置く。<br>会長１名、副会長 若干名、事務局長１名、会計２名、監事２名</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第６条（会議）</dt>\r\n              <dd>会長は、必要に応じ総会・役員会を招集する。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第７条（経費）</dt>\r\n              <dd>本会の経費は、寄付金・その他の収入を持って充てる。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第８条（会計年度及び監査）</dt>\r\n              <dd>会計年度は１月１日から１２月３１日までとする。会計は年末に監事による監査を受け役員会に報告する。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>第９条（補則）</dt>\r\n              <dd>本規約に定めのない事項については、役員会で決定する。</dd>\r\n            </div>\r\n            <div>\r\n              <dt>附則</dt>\r\n              <dd>本規約は、令和３年９月１０日より実施する。</dd>\r\n            </div>\r\n          </dl>\r\n        </section>\r\n        <section>\r\n          <h3 class=\"termsboxHeader02\">プライバシーポリシー</h3>\r\n\r\n          <p class=\"termsbox_txt\">\r\n            ご記入いただいた個人情報は入会の受付、業務遂行に必要な範囲で行う業務提携先等への提供に利用します。<br>\r\n            当会の活動通知を目的とし、それ以外の目的に利用されることはございません。<br>\r\n            個人情報は厳重に管理し、利用目的の達成に必要な範囲内で業者に委託する場合は、秘密を保持させるために適切な監督を行います。\r\n          </p>\r\n          <p class=\"termsbox_txt\">\r\n            古村幹夫後援会事務所<br class=\"u-hide-pc\"><span class=\"u-hide-sp\">／</span>後援会長　古村 仁士<br>\r\n            TEL.050-3635-4956 FAX.026-403-4943<br>\r\n            〒399-0423<br class=\"u-hide-pc\"> 長野県上伊那郡辰野町大字澤底1760\r\n          </p>\r\n        </section>\r\n      </div>\r\n      <div class=\"formAgree\">\r\n         [mwform_checkbox name=\"agreePp\" children=\"同意する\" separator=\",\"]\r\n      </div>\r\n      <div class=\"btnWrapper\">\r\n[mwform_backButton class=\"btn_back\" value=\"&lt; 戻る\"][mwform_submitButton name=\"submit\" class=\"formSend\" confirm_value=\"確認画面へ >\" submit_value=\"送信する >\"]\r\n      </div>','お問い合わせ','','publish','closed','closed','','%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b','','','2021-10-16 09:29:59','2021-10-16 00:29:59','',0,'http://komura.local/?post_type=mw-wp-form&#038;p=10',0,'mw-wp-form','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-10-13 18:45:30','2021-10-13 09:45:30','<!-- wp:html -->\n\n    <div id=\"form01\">\n      <h2 class=\"pageHeader02\">「古村幹夫後援会」ご入会お申込み</h2>\n      <p class=\"pageTxt\">\n        古村幹夫の信念や政治活動にご賛同いただける皆様に古村幹夫後援会」への入会をお願い申し上げます。ご紹介者がいらっしゃる場合は、ご紹介者覧にご記入ください。入会金や年会費などは一切ございません。以下のフォームに必須項目をご記入の上、送信してください。後日、入力して頂いた連絡先（電話、またはメール）に、ご連絡させていただきます。\n      </p>\n      <small class=\"formSmall\">は必須項目となります。</small>\n      [mwform_formkey key=\"9\"]\n    </div>\n\n    <div id=\"form02\">\n      <h2 class=\"pageHeader02\">お問い合わせ</h2>\n      <p class=\"pageTxt\">\n        以下のフォームに必須項目をご記入の上、送信してください。<br>後日、入力して頂いた連絡先（電話、またはメール）に、ご連絡させていただきます。\n      </p>\n      <small class=\"formSmall\">は必須項目となります。</small>\n      [mwform_formkey key=\"10\"]\n    </div>\n<!-- /wp:html -->','コンタクト','','inherit','closed','closed','','7-revision-v1','','','2021-10-13 18:45:30','2021-10-13 09:45:30','',7,'http://komura.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-10-13 22:23:59','2021-10-13 13:23:59','      <dl class=\"formList\">\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">本人お名前（漢字）</dt>\n          <dd class=\"formList_dd\">\n            [mwform_text name=\"name\" class=\"el_input\"]\n          </dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">本人お名前（フリガナ）</dt>\n          <dd class=\"formList_dd\">\n             [mwform_text name=\"name_kana\" class=\"el_input\"]\n          </dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">郵便番号</dt>\n          <dd class=\"formList_dd\">\n            [mwform_number name=\"zip\" id=\"postalCode01\" class=\"el_input el_input__223\" step=\"1\"]<small>ハイフン無しでご入力ください。<br>※郵便番号を入力すると自動で住所が入力されます。</small>\n          </dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">住所</dt>\n          <dd class=\"formList_dd\">[mwform_text name=\"address01\" class=\"el_input\"]</dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">電話番号</dt>\n          <dd class=\"formList_dd\">[mwform_number name=\"tel\" class=\"el_input\" step=\"1\"]</dd>\n        </div>\n\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt any\">メールアドレス</dt>\n          <dd class=\"formList_dd\">\n            [mwform_email name=\"email\" class=\"el_input\" size=\"60\"]\n          </dd>\n        </div>\n\n        <div class=\"formList_item confirmHide\">\n          <dt class=\"formList_dt any\">メールアドレス（確認）</dt>\n          <dd class=\"formList_dd\">[mwform_email name=\"email02\" class=\"el_input\" size=\"60\"]</dd>\n        </div>\n\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt any\">メール受信の同意</dt>\n          <dd class=\"formList_dd\">\n        \n            [mwform_checkbox name=\"agree\" children=\"メールの受信に同意する\" separator=\",\"]\n\n        \n          </dd>\n        </div>\n\n        <div class=\"formList_item formList_item__mb\">\n          <dt class=\"formList_dt any\">生年月日（西暦）</dt>\n          <dd class=\"formList_dd\">\n            [mwform_number name=\"year\" class=\"el_input el_input__date\" min=\"1910\" max=\"2020\" step=\"1\"]年[mwform_number name=\"mon\" class=\"el_input el_input__date\" min=\"1\" max=\"12\" step=\"1\"]月[mwform_number name=\"day\" class=\"el_input el_input__date\" min=\"1\" max=\"31\" step=\"1\"]日\n          </dd>\n        </div>\n\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt any\">ご紹介者お名前</dt>\n          <dd class=\"formList_dd\">\n            [mwform_text name=\"introducerName\" class=\"el_input\"]\n          </dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt any\">住所</dt>\n          <dd class=\"formList_dd\">\n           [mwform_text name=\"introducerAddress\" class=\"el_input\"]\n          </dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt any\">電話番号</dt>\n          <dd class=\"formList_dd\">[mwform_number name=\"introducerTel\" class=\"el_input\" step=\"1\"]</dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt any\">メールアドレス</dt>\n          <dd class=\"formList_dd\">[mwform_email name=\"introducerEmail\" class=\"el_input\" size=\"60\"]</dd>\n        </div>\n      </dl>\n      <div class=\"formTxtRight\">下記の規約をご確認いただき、<br class=\"u-hide-pc\">確認画面にお進みください。</div>\n\n      <div class=\"termsbox\">\n        <h2 class=\"termsboxHeader01\">古村幹夫後援会規約<br class=\"u-hide-pc\"><span class=\"u-hide-sp\">／</span>プライバシーポリシー</h2>\n        <section>\n          <h3 class=\"termsboxHeader02\">古村幹夫後援会規約</h3>\n          <dl>\n            <div>\n              <dt>第１条（名称・所在地）</dt>\n              <dd>本会は、古村幹夫後援会と称し、主たる事務所を辰野町沢底に置く。</dd>\n            </div>\n            <div>\n              <dt>第２条（目的）</dt>\n              <dd>本会は、辰野町政発展のため尽力している古村幹夫氏の活動を支援することを本来の目的とする。</dd>\n            </div>\n            <div>\n              <dt>第３条（事業）</dt>\n              <dd>本会は前条の目的を達成するために講演会・報告会などの他、必要な事業を行う。</dd>\n            </div>\n            <div>\n              <dt>第４条（会員）</dt>\n              <dd>本会は、第２条の目的に賛同し、入会申込書を提出した者をもって会員とする。</dd>\n            </div>\n            <div>\n              <dt>第５条（役員）</dt>\n              <dd>本会に次の役員を置く。<br>会長１名、副会長 若干名、事務局長１名、会計２名、監事２名</dd>\n            </div>\n            <div>\n              <dt>第６条（会議）</dt>\n              <dd>会長は、必要に応じ総会・役員会を招集する。</dd>\n            </div>\n            <div>\n              <dt>第７条（経費）</dt>\n              <dd>本会の経費は、寄付金・その他の収入を持って充てる。</dd>\n            </div>\n            <div>\n              <dt>第８条（会計年度及び監査）</dt>\n              <dd>会計年度は１月１日から１２月３１日までとする。会計は年末に監事による監査を受け役員会に報告する。</dd>\n            </div>\n            <div>\n              <dt>第９条（補則）</dt>\n              <dd>本規約に定めのない事項については、役員会で決定する。</dd>\n            </div>\n            <div>\n              <dt>附則</dt>\n              <dd>本規約は、令和３年９月１０日より実施する。</dd>\n            </div>\n          </dl>\n        </section>\n        <section>\n          <h3 class=\"termsboxHeader02\">プライバシーポリシー</h3>\n\n          <p class=\"termsbox_txt\">\n            ご記入いただいた個人情報は入会の受付、業務遂行に必要な範囲で行う業務提携先等への提供に利用します。<br>\n            当会の活動通知を目的とし、それ以外の目的に利用されることはございません。<br>\n            個人情報は厳重に管理し、利用目的の達成に必要な範囲内で業者に委託する場合は、秘密を保持させるために適切な監督を行います。\n          </p>\n          <p class=\"termsbox_txt\">\n            古村幹夫後援会事務所<br class=\"u-hide-pc\"><span class=\"u-hide-sp\">／</span>後援会長　古村 仁士<br>\n            TEL.050-3635-4956 FAX.026-403-4943<br>\n            〒399-0423<br class=\"u-hide-pc\"> 長野県上伊那郡辰野町大字澤底1760\n          </p>\n        </section>\n      </div>\n      <div class=\"formAgree\">\n        [mwform_checkbox name=\"agreePp\" children=\"同意する\" separator=\",\"]\n        \n      </div>\n      <div class=\"btnWrapper\">\n[mwform_backButton class=\"btn_back\" value=\"&lt; 戻る\"][mwform_submitButton name=\"submit\" class=\"formSend\" confirm_value=\"確認画面へ >\" submit_value=\"送信する >\"]\n      </div>','公演会','','inherit','closed','closed','','9-autosave-v1','','','2021-10-13 22:23:59','2021-10-13 13:23:59','',9,'http://komura.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-10-13 21:53:59','2021-10-13 12:53:59','      <dl class=\"formList\">\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">お名前（漢字）</dt>\n          <dd class=\"formList_dd\">[mwform_text name=\"name\" class=\"el_input\"]</dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">お名前（フリガナ）</dt>\n          <dd class=\"formList_dd\">[mwform_text name=\"name_kana\" class=\"el_input\"]</dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt any\">郵便番号</dt>\n          <dd class=\"formList_dd\">\n            [mwform_number name=\"zip\" id=\"postalCode02\" class=\"el_input el_input__223\" step=\"1\"]<small>ハイフン無しでご入力ください。<br>※郵便番号を入力すると自動で住所が入力されます。</small>\n          </dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt any\">住所</dt>\n          <dd class=\"formList_dd\">[mwform_text name=\"address02\" class=\"el_input\"]</dd>\n        </div>\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">電話番号</dt>\n          <dd class=\"formList_dd\">[mwform_number name=\"tel\" class=\"el_input\" step=\"1\"]</dd>\n        </div>\n\n        <div class=\"formList_item\">\n          <dt class=\"formList_dt require\">メールアドレス</dt>\n          <dd class=\"formList_dd\">[mwform_email name=\"email\" class=\"el_input\" size=\"60\"]</dd>\n        </div>\n\n        <div class=\"formList_item confirmHide\">\n          <dt class=\"formList_dt require\">メールアドレス（確認）</dt>\n          <dd class=\"formList_dd\">[mwform_email name=\"email02\" class=\"el_input\" size=\"60\"]</dd>\n        </div>\n\n        <div class=\"formList_item formList_item__txt\">\n          <dt class=\"formList_dt require\">お問い合わせ内容</dt>\n          <dd class=\"formList_dd\">\n            [mwform_textarea name=\"content\" class=\"formTxtarea\" cols=\"50\" rows=\"5\"]\n          </dd>\n        </div>\n\n      </dl>\n      <div class=\"formTxtRight\">下記の規約をご確認いただき、<br class=\"u-hide-pc\">確認画面にお進みください。</div>\n\n      <div class=\"termsbox\">\n        <h2 class=\"termsboxHeader01\">古村幹夫後援会規約<br class=\"u-hide-pc\"><span class=\"u-hide-sp\">／</span>プライバシーポリシー</h2>\n        <section>\n          <h3 class=\"termsboxHeader02\">古村幹夫後援会規約</h3>\n          <dl>\n            <div>\n              <dt>第１条（名称・所在地）</dt>\n              <dd>本会は、古村幹夫後援会と称し、主たる事務所を辰野町沢底に置く。</dd>\n            </div>\n            <div>\n              <dt>第２条（目的）</dt>\n              <dd>本会は、辰野町政発展のため尽力している古村幹夫氏の活動を支援することを本来の目的とする。</dd>\n            </div>\n            <div>\n              <dt>第３条（事業）</dt>\n              <dd>本会は前条の目的を達成するために講演会・報告会などの他、必要な事業を行う。</dd>\n            </div>\n            <div>\n              <dt>第４条（会員）</dt>\n              <dd>本会は、第２条の目的に賛同し、入会申込書を提出した者をもって会員とする。</dd>\n            </div>\n            <div>\n              <dt>第５条（役員）</dt>\n              <dd>本会に次の役員を置く。<br>会長１名、副会長 若干名、事務局長１名、会計２名、監事２名</dd>\n            </div>\n            <div>\n              <dt>第６条（会議）</dt>\n              <dd>会長は、必要に応じ総会・役員会を招集する。</dd>\n            </div>\n            <div>\n              <dt>第７条（経費）</dt>\n              <dd>本会の経費は、寄付金・その他の収入を持って充てる。</dd>\n            </div>\n            <div>\n              <dt>第８条（会計年度及び監査）</dt>\n              <dd>会計年度は１月１日から１２月３１日までとする。会計は年末に監事による監査を受け役員会に報告する。</dd>\n            </div>\n            <div>\n              <dt>第９条（補則）</dt>\n              <dd>本規約に定めのない事項については、役員会で決定する。</dd>\n            </div>\n            <div>\n              <dt>附則</dt>\n              <dd>本規約は、令和３年９月１０日より実施する。</dd>\n            </div>\n          </dl>\n        </section>\n        <section>\n          <h3 class=\"termsboxHeader02\">プライバシーポリシー</h3>\n\n          <p class=\"termsbox_txt\">\n            ご記入いただいた個人情報は入会の受付、業務遂行に必要な範囲で行う業務提携先等への提供に利用します。<br>\n            当会の活動通知を目的とし、それ以外の目的に利用されることはございません。<br>\n            個人情報は厳重に管理し、利用目的の達成に必要な範囲内で業者に委託する場合は、秘密を保持させるために適切な監督を行います。\n          </p>\n          <p class=\"termsbox_txt\">\n            古村幹夫後援会事務所<br class=\"u-hide-pc\"><span class=\"u-hide-sp\">／</span>後援会長　古村 仁士<br>\n            TEL.050-3635-4956 FAX.026-403-4943<br>\n            〒399-0423<br class=\"u-hide-pc\"> 長野県上伊那郡辰野町大字澤底1760\n          </p>\n        </section>\n      </div>\n      <div class=\"formAgree\">\n         [mwform_checkbox name=\"agreePp\" children=\"同意する\" separator=\",\"]\n      </div>\n      <div class=\"btnWrapper\">\n[mwform_backButton class=\"btn_back\" value=\"&lt; 戻る\"][mwform_submitButton name=\"submit\" class=\"formSend\" confirm_value=\"確認画面へ >\" submit_value=\"送信する >\"]\n      </div>','お問い合わせ','','inherit','closed','closed','','10-autosave-v1','','','2021-10-13 21:53:59','2021-10-13 12:53:59','',10,'http://komura.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-10-13 19:18:07','2021-10-13 10:18:07','<!-- wp:shortcode -->\n[mwform_formkey key=\"9\"]\n<!-- /wp:shortcode -->','公演会フォーム確認','','publish','closed','closed','','confirm-performance','','','2021-10-13 19:24:07','2021-10-13 10:24:07','',0,'http://komura.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-10-13 19:18:07','2021-10-13 10:18:07','','公演会フォーム確認','','inherit','closed','closed','','14-revision-v1','','','2021-10-13 19:18:07','2021-10-13 10:18:07','',14,'http://komura.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-10-13 19:19:27','2021-10-13 10:19:27','<!-- wp:shortcode -->\n[mwform_formkey key=\"9\"]\n<!-- /wp:shortcode -->','公演会フォーム送信済み','','publish','closed','closed','','thanks-performance','','','2021-10-13 21:15:28','2021-10-13 12:15:28','',0,'http://komura.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-10-13 19:19:27','2021-10-13 10:19:27','','公演会フォーム送信済み','','inherit','closed','closed','','16-revision-v1','','','2021-10-13 19:19:27','2021-10-13 10:19:27','',16,'http://komura.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-10-13 19:20:14','2021-10-13 10:20:14','<!-- wp:shortcode -->\n[mwform_formkey key=\"9\"]\n<!-- /wp:shortcode -->','公演会フォーム確認','','inherit','closed','closed','','14-revision-v1','','','2021-10-13 19:20:14','2021-10-13 10:20:14','',14,'http://komura.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-10-13 19:20:39','2021-10-13 10:20:39','<!-- wp:shortcode -->\n[mwform_formkey key=\"9\"]\n<!-- /wp:shortcode -->','公演会フォーム送信済み','','inherit','closed','closed','','16-revision-v1','','','2021-10-13 19:20:39','2021-10-13 10:20:39','',16,'http://komura.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-10-13 21:12:08','0000-00-00 00:00:00','','自動下書き','','auto-draft','closed','closed','','','','','2021-10-13 21:12:08','0000-00-00 00:00:00','',0,'http://komura.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-10-13 21:16:21','2021-10-13 12:16:21','<!-- wp:shortcode -->\n[mwform_formkey key=\"10\"]\n<!-- /wp:shortcode -->','お問い合わせ確認','','publish','closed','closed','','confirm-inquiry','','','2021-10-13 21:20:07','2021-10-13 12:20:07','',0,'http://komura.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-10-13 21:16:21','2021-10-13 12:16:21','','お問い合わせ確認','','inherit','closed','closed','','21-revision-v1','','','2021-10-13 21:16:21','2021-10-13 12:16:21','',21,'http://komura.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-10-13 21:16:44','2021-10-13 12:16:44','<!-- wp:shortcode -->\n[mwform_formkey key=\"10\"]\n<!-- /wp:shortcode -->','お問い合わせ送信済み','','publish','closed','closed','','thanks-inquiry','','','2021-10-13 21:19:48','2021-10-13 12:19:48','',0,'http://komura.local/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-10-13 21:16:44','2021-10-13 12:16:44','','お問い合わせ送信済み','','inherit','closed','closed','','23-revision-v1','','','2021-10-13 21:16:44','2021-10-13 12:16:44','',23,'http://komura.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-10-13 21:19:48','2021-10-13 12:19:48','<!-- wp:shortcode -->\n[mwform_formkey key=\"10\"]\n<!-- /wp:shortcode -->','お問い合わせ送信済み','','inherit','closed','closed','','23-revision-v1','','','2021-10-13 21:19:48','2021-10-13 12:19:48','',23,'http://komura.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-10-13 21:20:06','2021-10-13 12:20:06','<!-- wp:shortcode -->\n[mwform_formkey key=\"10\"]\n<!-- /wp:shortcode -->','お問い合わせ確認','','inherit','closed','closed','','21-revision-v1','','','2021-10-13 21:20:06','2021-10-13 12:20:06','',21,'http://komura.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-10-13 21:55:49','2021-10-13 12:55:49','<!-- wp:shortcode -->\n[mwform_formkey key=\"10\"]\n<!-- /wp:shortcode -->','コンタクト','','publish','closed','closed','','contact-inquiry','','','2021-10-13 22:09:20','2021-10-13 13:09:20','',0,'http://komura.local/?page_id=27',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-10-13 21:55:49','2021-10-13 12:55:49','','コンタクト','','inherit','closed','closed','','27-revision-v1','','','2021-10-13 21:55:49','2021-10-13 12:55:49','',27,'http://komura.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-10-13 22:01:56','2021-10-13 13:01:56','<!-- wp:html /-->\n\n<!-- wp:shortcode -->\n [mwform_formkey key=\"9\"]\n<!-- /wp:shortcode -->','コンタクト','','inherit','closed','closed','','7-revision-v1','','','2021-10-13 22:01:56','2021-10-13 13:01:56','',7,'http://komura.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-10-13 22:03:19','2021-10-13 13:03:19','<!-- wp:shortcode -->\n[mwform_formkey key=\"10\"]\n<!-- /wp:shortcode -->','コンタクト','','inherit','closed','closed','','27-revision-v1','','','2021-10-13 22:03:19','2021-10-13 13:03:19','',27,'http://komura.local/?p=31',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-10-16 09:39:59','2021-10-16 00:39:59','','home','','publish','closed','closed','','home','','','2021-10-16 09:40:32','2021-10-16 00:40:32','',0,'http://komura.local/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-10-16 09:39:59','2021-10-16 00:39:59','','home','','inherit','closed','closed','','32-revision-v1','','','2021-10-16 09:39:59','2021-10-16 00:39:59','',32,'http://komura.local/?p=33',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','miyamoto');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"5eb1c69a2dadfb035313bb3339d9535c04d07ef0cfb8737a402dba4d6c44b911\";a:4:{s:10:\"expiration\";i:1634516167;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1634343367;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:332:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"http://komura.local/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:8:\"miyamoto\";s:9:\"user_pass\";s:34:\"$P$BI1SKmTPjoaNZrzv0UGAtQ9ZIWnqBd/\";s:13:\"user_nicename\";s:8:\"miyamoto\";s:10:\"user_email\";s:19:\"m.akirabo@gmail.com\";s:8:\"user_url\";s:19:\"http://komura.local\";s:15:\"user_registered\";s:19:\"2021-10-11 05:36:51\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:8:\"miyamoto\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'_yoast_wpseo_profile_updated','1633956834');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','editor=html');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1634118144');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_mw-wp-form','a:1:{i:0;s:35:\"mw-wp-form_complete_message_metabox\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_mw-wp-form','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'miyamoto','$P$BI1SKmTPjoaNZrzv0UGAtQ9ZIWnqBd/','miyamoto','m.akirabo@gmail.com','http://komura.local','2021-10-11 05:36:51','',0,'miyamoto');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,NULL,NULL,2,'post','page',1,0,NULL,NULL,'Sample Page','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2021-10-11 12:42:21','2021-10-12 13:51:31',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `wp_yoast_indexable` VALUES (2,NULL,NULL,1,'post','post',1,0,NULL,NULL,'Hello world!','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-11 12:42:21','2021-10-12 13:51:31',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `wp_yoast_indexable` VALUES (3,NULL,NULL,1,'term','category',NULL,NULL,NULL,NULL,'Uncategorized',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-11 12:42:21','2021-10-12 13:51:31',1,NULL,NULL,NULL,NULL,0,NULL,0);
INSERT INTO `wp_yoast_indexable` VALUES (4,'http://komura.local/contact/','28:3bd7bd948069087a6d4e885ae45b3c45',7,'post','page',1,0,NULL,NULL,'コンタクト','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-13 07:31:48','2021-10-13 04:01:57',1,NULL,NULL,NULL,NULL,0,1,1);
INSERT INTO `wp_yoast_indexable` VALUES (5,'http://komura.local/mw-wp-form/%e5%85%ac%e6%bc%94%e4%bc%9a/','59:7c8095b99ab2afd7423cfc47eb28a196',9,'post','mw-wp-form',1,0,NULL,NULL,'公演会','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-13 09:42:28','2021-10-15 15:38:56',1,NULL,NULL,NULL,NULL,0,NULL,1);
INSERT INTO `wp_yoast_indexable` VALUES (6,'http://komura.local/mw-wp-form/%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b/','86:8170d946e79be89d78f332cd2908ed62',10,'post','mw-wp-form',1,0,NULL,NULL,'お問い合わせ','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-13 09:44:41','2021-10-15 15:30:00',1,NULL,NULL,NULL,NULL,0,NULL,1);
INSERT INTO `wp_yoast_indexable` VALUES (7,'http://komura.local/confirm-performance/','40:6cb32a34ace9fd4ce2586e8809b4df85',14,'post','page',1,0,NULL,NULL,'公演会フォーム確認','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-13 10:18:07','2021-10-13 01:24:07',1,NULL,NULL,NULL,NULL,0,1,1);
INSERT INTO `wp_yoast_indexable` VALUES (8,'http://komura.local/thanks-performance/','39:8c1177f1a19b53699bd32ce524bca575',16,'post','page',1,0,NULL,NULL,'公演会フォーム送信済み','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-13 10:19:27','2021-10-13 03:15:28',1,NULL,NULL,NULL,NULL,0,1,1);
INSERT INTO `wp_yoast_indexable` VALUES (9,'http://komura.local/confirm-inquiry/','36:39b945e4cc469b67455556214549c5a7',21,'post','page',1,0,NULL,NULL,'お問い合わせ確認','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-13 12:16:21','2021-10-13 03:20:07',1,NULL,NULL,NULL,NULL,0,1,1);
INSERT INTO `wp_yoast_indexable` VALUES (10,'http://komura.local/thanks-inquiry/','35:163fea1b117f4d48b18121b4795a2bb7',23,'post','page',1,0,NULL,NULL,'お問い合わせ送信済み','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-13 12:16:44','2021-10-13 03:19:48',1,NULL,NULL,NULL,NULL,0,1,1);
INSERT INTO `wp_yoast_indexable` VALUES (11,'http://komura.local/contact-inquiry/','36:44dd645089507c42da67bbf80afb8982',27,'post','page',1,0,NULL,NULL,'コンタクト','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,60,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-13 12:55:49','2021-10-13 04:09:20',1,NULL,NULL,NULL,NULL,0,1,1);
INSERT INTO `wp_yoast_indexable` VALUES (12,'http://komura.local/','20:6da7ff2207085ef88a47adf39ed5715f',32,'post','page',1,0,'%%sitename%%',NULL,'home','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2021-10-16 00:39:59','2021-10-15 15:40:32',1,NULL,NULL,NULL,NULL,0,NULL,1);
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (1,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (2,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (3,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (4,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (5,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (6,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (7,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (8,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (9,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (10,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (11,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (12,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
INSERT INTO `wp_yoast_migrations` VALUES (22,'20210817092415');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (1,'http://komura.local/wp-admin/',2,NULL,'internal',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-18 11:40:17
