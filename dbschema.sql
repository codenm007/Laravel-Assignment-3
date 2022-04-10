-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: homestead
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Indian','2022-04-07 05:48:00','2022-04-07 05:48:00'),(2,'','2022-04-07 05:49:30','2022-04-07 05:49:30');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuisines`
--

DROP TABLE IF EXISTS `cuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuisines` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuisines`
--

LOCK TABLES `cuisines` WRITE;
/*!40000 ALTER TABLE `cuisines` DISABLE KEYS */;
INSERT INTO `cuisines` VALUES (1,'North','2022-04-07 05:48:00','2022-04-07 05:48:00'),(2,'','2022-04-07 05:49:30','2022-04-07 05:49:30');
/*!40000 ALTER TABLE `cuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_recipe`
--

DROP TABLE IF EXISTS `ingredient_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient_recipe` (
  `ingredient_id` int unsigned NOT NULL,
  `recipe_id` int unsigned NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `unit_id` int unsigned NOT NULL,
  PRIMARY KEY (`ingredient_id`,`recipe_id`),
  KEY `ingredient_recipe_ingredient_id_index` (`ingredient_id`),
  KEY `ingredient_recipe_recipe_id_index` (`recipe_id`),
  KEY `ingredient_recipe_unit_id_index` (`unit_id`),
  CONSTRAINT `ingredient_recipe_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ingredient_recipe_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ingredient_recipe_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_recipe`
--

LOCK TABLES `ingredient_recipe` WRITE;
/*!40000 ALTER TABLE `ingredient_recipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingredient_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_01_07_073615_create_tagged_table',1),(2,'2014_01_07_073615_create_tags_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_05_30_130720_create_cuisines_table',1),(6,'2016_05_30_130745_create_courses_table',1),(7,'2016_05_30_130755_create_units_table',1),(8,'2016_05_30_130807_create_ingredients_table',1),(9,'2016_05_30_130817_create_recipes_table',1),(10,'2016_05_30_130914_create_ingredient_recipe_pivot_table',1),(11,'2016_05_30_185747_add_abbreviation_to_units_table',1),(12,'2016_05_31_080022_add_description_to_recipes_table',1),(13,'2016_06_06_074927_add_photo_to_recipes_table',1),(14,'2016_09_20_193709_add_lastPrepared_to_recipes_table',1),(15,'2016_09_22_211725_add_rating_to_recipes_table',1),(16,'2017_01_16_155705_add_favourite_to_recipes_table',1),(17,'2018_03_26_205155_create_posts_table',2),(18,'2018_03_29_014155_add_user_id_to_posts',2),(19,'2018_03_29_223316_add_cover_image_to_posts',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://picsum.photos/200/300',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Butter chicken 3','sdsdsdsddsadwdaawd','2022-04-07 06:41:34','2022-04-07 06:42:08',1,'https://picsum.photos/200/300'),(2,'Coool coolfi','233242332','2022-04-07 06:41:46','2022-04-07 06:51:09',1,'https://picsum.photos/200/300'),(3,'Garmi ka amul coolfi','1) Use milk \r\n2) ICE\r\n3) Water\r\n4) Sugar\r\n5) Mali','2022-04-07 06:52:01','2022-04-07 06:52:01',1,'https://picsum.photos/200/300'),(4,'Dum alu ka receipe','1) Namak\r\n2) Alooo - 2kg \r\n3) kuchnbi','2022-04-07 06:54:01','2022-04-07 06:54:01',2,'https://picsum.photos/200/300'),(5,'butter chicken (murgh makhani)','a super easy, full flavoured butter chicken recipe that rivals any restaurant or take out!\r\nSimilar to Chicken Tikka Masala, Butter Chicken is one of the most popular curries at any Indian restaurant around the world. Aromatic golden chicken pieces in an incredible creamy curry sauce, this Butter Chicken recipe is one of the best you will try! You will love how easy it is to make in the comfort of your own home, especially with garlic butter rice and fresh homemade Naan bread.\r\n\r\nA super easy, full flavoured Butter Chicken recipe that rivals any restaurant. Aromatic golden chicken pieces in an incredible curry sauce. | cafedelites.com\r\nbutter chicken\r\nTender and juicy chicken thanks to a deliciously spiced yogurt marinade, Butter Chicken is ridiculously easy to make. The curry sauce is out of this world!\r\n\r\nI know you all love food with beautiful, bold flavours, and nothing beats sitting down to a good great curry to finish off a chaotic day. The aromas alone transport you to a completely different world.\r\n\r\nThe best part about cooking up Butter Chicken at home is the ingredients list. Every ingredient is easy to find from any grocery store or supermarket.\r\n\r\nWIN-WIN!\r\n\r\nButter Chicken recipe that rivals Indian restaurants. | cafedelites.com\r\nwhy is it called butter chicken\r\nButter chicken originated from Northern India in 1948. Created by Kundan Lal Gujral, you may notice that Butter Chicken (known as murgh makhani — chicken with butter), is similar to British tikka masala.\r\n\r\nPrepared in a buttery gravy with the addition of cream gives the curry sauce a silky smooth rich texture. Most restaurants are known to add in copious amounts of butter, which as a result can leave you feeling bloated or ill from the slick of grease.\r\n\r\nHowever, we found while recipe testing that we prefer to start the sauce off in Ghee (clarified butter, or you can use a combination of half regular butter and half oil).\r\n\r\nAdding cream at the end of cooking provides enough of that richness you look for in an authentic butter chicken. Our less oily version leaves you feeling good and satisfied.\r\n\r\nHow to make butter chicken | cafedelites.com\r\nhow do you make homemade butter chicken\r\nA milder curry when compared to other Indian curries makes Butter Chicken a favourite among families with little ones. You can certainly add as much or as little chili as you wish. In other words, YOU are in total control of how spicy you make it.\r\n\r\nAs mentioned above, the juicy and tender, flavour infused chicken starts with an easy yogurt marinade made from scratch: plain yogurt, fresh garlic and ginger, and easy to find spices.\r\n\r\nYou can use boneless, skinless chicken thighs or breasts. We prefer dark meat, but go with what you like.\r\n\r\nFirst, mix your yogurt marinade together.\r\nMarinate chicken for 20 minutes, or overnight if time allows. (The longer it marinates, the more tender your chicken will be.)\r\nSear chicken in a skillet or pan. Keep those charred bits on the pan to make your sauce. Browned bits = flavour. If you have too many burnt pieces stuck to the pan, you can discard some of them if you wish.\r\nFinally, make your curry sauce in the same skillet.\r\nwhat spices go in butter chicken\r\nEasy to find spices, for example: Garam masala, Tumeric, Cumin, Red Chili Powder and Salt, are all you need to make a great sauce. You may even already have some of these in your kitchen cupboards! If you don’t, there’s no doubt you may use them again.\r\n\r\nHow to make butter chicken sauce | cafedelites.com\r\nwhat is butter chicken sauce made of\r\nIt’s all about that sauce when it comes to authentic butter chicken. You’ll be surprised to find that you only need an onion, a can of crushed tomatoes, garlic and ginger, and some added spices to continue those beautiful flavours in the sauce.\r\n\r\nThe trick to making a great sauce is to let the tomatoes cook off for at least 10-15 minutes, until they are almost dry on your pan. Additionally, you can add in a couple tablespoons of water if it dries to early.\r\n\r\nAfter that, blend until smooth and add in your cream (heavy whipping cream or thickened cream). You can use evaporated milk or half and half for a lower calorie option.\r\n\r\nIf you want a richer sauce, feel free to add a couple tablespoons of butter (or ghee) right at the end, letting it melt though the sauce, before serving.\r\n\r\nA super easy, full flavoured Butter Chicken recipe with aromatic golden chicken thigh or breast pieces in an incredible curry sauce. | cafedelites.com\r\nmake ahead option\r\nThe beauty of this gravy/sauce is that you can prepare it ahead of time if you want or need to. Allow it to cool completely, store it in an airtight glass jar or container and refrigerate for up to 48 hours.\r\n\r\nThose deep flavours will have plenty of time to develop and shine through before adding your chicken. Of course, this is completely optional.\r\n\r\nIf there’s any Indian recipe that’s worth making at home, its Butter Chicken, and this is the BEST butter chicken you’ll make!\r\n\r\nButter chicken with rice for dinner | cafedelites.com\r\nServe over basmati rice and our garlic naan bread! Similarly, you can use our NO YEAST flatbread recipe if you’re looking for something easy to dip into the delicious curry gravy/sauce.\r\n\r\nlooking for more chicken recipes? try these!\r\nFrench Onion Stuffed Chicken\r\nCreamy Garlic Chicken Breasts\r\nChicken Piccata\r\n\r\nA super easy, full flavoured Butter Chicken with aromatic golden chicken pieces in an incredible curry sauce. | cafedelites.com\r\nBUTTER CHICKEN\r\nButter Chicken is creamy and easy to make right at home in one pan with simple ingredients! Full of incredible flavours, it rivals any Indian restaurant! Aromatic golden chicken pieces in an incredible creamy curry sauce, this Butter Chicken recipe is one of the best you will try!\r\n PRINT  SAVE\r\nPREP:\r\n15 MINS\r\nCOOK:\r\n30 MINS\r\nTOTAL:\r\n45 MINS\r\nSERVES: \r\n5\r\n - 6 PEOPLE\r\nINGREDIENTS\r\nFor the chicken marinade:\r\n28 oz (800g) boneless and skinless chicken thighs or breasts cut into bite-sized pieces\r\n1/2 cup plain yogurt\r\n1 1/2 tablespoons minced garlic\r\n1 tablespoon minced ginger (or finely grated)\r\n2 teaspoons garam masala\r\n1 teaspoon turmeric\r\n1 teaspoon ground cumin\r\n1 teaspoon red chili powder\r\n1 teaspoon of salt\r\nFor the sauce:\r\n2 tablespoons olive oil\r\n2 tablespoons ghee (or 1 tbs butter + 1 tbs oil)\r\n1 large onion, sliced or chopped\r\n1 1/2 tablespoons garlic, minced\r\n1 tablespoon ginger, minced or finely grated\r\n1 1/2 teaspoons ground cumin\r\n1 1/2 teaspoons garam masala\r\n1 teaspoon ground coriander\r\n14 oz (400 g) crushed tomatoes\r\n1 teaspoon red chili powder (adjust to your taste preference)\r\n1 1/4 teaspoons salt (or to taste)\r\n1 cup of heavy or thickened cream (or evaporated milk to save calories)\r\n1 tablespoon sugar\r\n1/2 teaspoon kasoori methi (or dried fenugreek leaves)\r\nINSTRUCTIONS\r\nIn a bowl, combine chicken with all of the ingredients for the chicken marinade; let marinate for 30 minutes to an hour (or overnight if time allows).\r\nHeat oil in a large skillet or pot over medium-high heat. When sizzling, add chicken pieces in batches of two or three, making sure not to crowd the pan. Fry until browned for only 3 minutes on each side. Set aside and keep warm. (You will finish cooking the chicken in the sauce.)\r\nHeat butter or ghee in the same pan. Fry the onions until they start to sweat (about 6 minutes) while scraping up any browned bits stuck on the bottom of the pan. \r\nAdd garlic and ginger and sauté for 1 minute until fragrant, then add ground coriander, cumin and garam masala. Let cook for about 20 seconds until fragrant, while stirring occasionally.\r\nAdd crushed tomatoes, chili powder and salt. Let simmer for about 10-15 minutes, stirring occasionally until sauce thickens and becomes a deep brown red colour.\r\nRemove from heat, scoop mixture into a blender and blend until smooth. You may need to add a couple tablespoons of water to help it blend (up to 1/4 cup). Work in batches depending on the size of your blender.\r\nPour the puréed sauce back into the pan. Stir the cream, sugar and crushed kasoori methi (or fenugreek leaves) through the sauce. Add the chicken with juices back into the pan and cook for an additional 8-10 minutes until chicken is cooked through and the sauce is thick and bubbling.\r\nGarnish with chopped cilantro and serve with fresh, hot garlic butter rice and fresh homemade Naan bread!\r\nNOTES\r\nOPTIONAL: To thin out the sauce, add a couple tablespoons of ghee or butter at the end of cooking, and gently simmer it through. Alternatively, add a small amount of water.\r\nNUTRITION\r\nCalories: 580kcal | Carbohydrates: 17g | Protein: 36g | Fat: 41g | Saturated Fat: 19g | Cholesterol: 250mg | Sodium: 1601mg | Potassium: 973mg | Fiber: 3g | Sugar: 8g | Vitamin A: 1895IU | Vitamin C: 19.5mg | Calcium: 171mg | Iron: 4.1mg\r\nother recipes you may like\r\nCreamy Garlic Chicken Breasts\r\nHoney Garlic Sriracha Chicken\r\nCreamy Dijon Chicken\r\nEasy Cajun Butter Chicken Breasts\r\nJuicy Oven Baked Chicken Breast\r\nSheet Pan Garlic Herb Butter Chicken & Potatoes\r\n« MEAL PLAN WEEK 44\r\nCreamy Garlic Mushrooms & Bacon »\r\nSUBSCRIBE TO CAFE DELITES FOR FREE AND RECEIVE RECIPES STRAIGHT INTO YOUR INBOX!\r\nE-Mail Address\r\nThe best, juicy roast Beef Tenderloin slathered with garlic butter that melts in your mouth with every bite! Even better when served with a rich and rustic, easy to make red wine sauce (or jus) | cafedelites.com\r\n\r\nGarlic Herb Butter Roast Turkey recipe is succulent and tender on the inside with a golden, buttery skin and so much flavour! | cafedelites.com\r\nEasy Creamy Mashed Potatoes | cafedelites.com\r\nGarlic Herb Butter Roast Chicken | https://cafedelites.com\r\nEasy Buttermilk Cornbread with a hint of honey is the perfect side to chili\'s, soups or stews! Crunchy buttery edges with a soft and fluffy centre!','2022-04-09 18:43:58','2022-04-10 11:36:55',3,'https://picsum.photos/200/300');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preparation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cooking_time` int unsigned NOT NULL,
  `servings` int unsigned NOT NULL,
  `cuisine_id` int unsigned NOT NULL,
  `course_id` int unsigned NOT NULL,
  `rating` decimal(8,2) NOT NULL,
  `favourite` tinyint(1) NOT NULL,
  `lastPrepared` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipes_cuisine_id_index` (`cuisine_id`),
  KEY `recipes_course_id_index` (`course_id`),
  CONSTRAINT `recipes_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipes_cuisine_id_foreign` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisines` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_tagged`
--

DROP TABLE IF EXISTS `tagging_tagged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagging_tagged` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `taggable_id` int unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagging_tagged_taggable_id_index` (`taggable_id`),
  KEY `tagging_tagged_taggable_type_index` (`taggable_type`),
  KEY `tagging_tagged_tag_slug_index` (`tag_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_tagged`
--

LOCK TABLES `tagging_tagged` WRITE;
/*!40000 ALTER TABLE `tagging_tagged` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_tagged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_tags`
--

DROP TABLE IF EXISTS `tagging_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagging_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suggest` tinyint(1) NOT NULL DEFAULT '0',
  `count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tagging_tags_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_tags`
--

LOCK TABLES `tagging_tags` WRITE;
/*!40000 ALTER TABLE `tagging_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nilanjan Majumdar','someone123@gmail.com','$2y$10$OASWdHqUL2RE74NEfP6pbe5aUNjvTVWLl0afyFAmM4euY0WN4fKF6','maSHwcber5JOdnUrXx7XEosqWXWELDKfaDFhkcBT0OrnjEFTpvBYVcPgXQl3','2022-04-07 06:32:06','2022-04-07 06:32:06'),(2,'Satyam Kumar','satyam@gmail.com','$2y$10$sLBk5NJ/JpqU4m7.MF01m.WpXTRQs1HrrFb3x7LHeRpqSl6/i7TQe','l6TY9kPDibenccU1nT7TTiGZzeOr5fomUgmR7L4rHsKbQ1pFkNcXGPJ6lRqD','2022-04-07 06:52:45','2022-04-07 06:52:45'),(3,'Nilanjan majumdar','nilanjan@gmail.com','$2y$10$bWjhsiL4EDkAK1YvcDADKeGCfuJS10O3WqM/.xHmJ.i6EGHlaAWe6','ur1D1JPhetoviPbflCNmRSKlNQuX7yDk81R8lSquhbBS7HjyR4CAlEuV6pom','2022-04-09 18:43:41','2022-04-09 18:43:41');
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

-- Dump completed on 2022-04-10 23:04:34
