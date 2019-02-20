# Migração da Base de Dados MySQL do WordPress
#
# Gerado: Wednesday 20. February 2019 16:08 UTC
# Nome do Servidor: localhost
# Banco de Dados: `senhoras_wp389`
# URL: //senhorasesperancaeamor.dev.br
# Path: D:\\laragon\\www\\senhorasesperancaeamor
# Tables: wpav_commentmeta, wpav_comments, wpav_links, wpav_options, wpav_postmeta, wpav_posts, wpav_term_relationships, wpav_term_taxonomy, wpav_termmeta, wpav_terms, wpav_usermeta, wpav_users
# Table Prefix: wpav_
# Post Types: revision, attachment, customize_changeset, nav_menu_item, page, post, wpforms
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Apagar qualquer tabela `wpav_commentmeta` existente
#

DROP TABLE IF EXISTS `wpav_commentmeta`;


#
# Estrutura da tabela `wpav_commentmeta`
#

CREATE TABLE `wpav_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_commentmeta`
#

#
# Fim do conteúdo da tabela `wpav_commentmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_comments` existente
#

DROP TABLE IF EXISTS `wpav_comments`;


#
# Estrutura da tabela `wpav_comments`
#

CREATE TABLE `wpav_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_comments`
#

#
# Fim do conteúdo da tabela `wpav_comments`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_links` existente
#

DROP TABLE IF EXISTS `wpav_links`;


#
# Estrutura da tabela `wpav_links`
#

CREATE TABLE `wpav_links` (
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


#
# Conteúdo da tabela `wpav_links`
#

#
# Fim do conteúdo da tabela `wpav_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_options` existente
#

DROP TABLE IF EXISTS `wpav_options`;


#
# Estrutura da tabela `wpav_options`
#

CREATE TABLE `wpav_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_options`
#
INSERT INTO `wpav_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://senhorasesperancaeamor.dev.br', 'yes'),
(2, 'home', 'http://senhorasesperancaeamor.dev.br', 'yes'),
(3, 'blogname', 'Senhoras Esperança e Amor', 'yes'),
(4, 'blogdescription', 'Entidade que atende crianças, adolescentes e pessoas com deficiência na Vila Aparecida.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'felipe@code6.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:113:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:57:"wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]";s:52:"wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]";s:33:"wpforms_log_type/([^/]+)/embed/?$";s:49:"index.php?wpforms_log_type=$matches[1]&embed=true";s:45:"wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?wpforms_log_type=$matches[1]&paged=$matches[2]";s:27:"wpforms_log_type/([^/]+)/?$";s:38:"index.php?wpforms_log_type=$matches[1]";s:44:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"amn_wpforms-lite/([^/]+)/embed/?$";s:49:"index.php?amn_wpforms-lite=$matches[1]&embed=true";s:37:"amn_wpforms-lite/([^/]+)/trackback/?$";s:43:"index.php?amn_wpforms-lite=$matches[1]&tb=1";s:45:"amn_wpforms-lite/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?amn_wpforms-lite=$matches[1]&paged=$matches[2]";s:52:"amn_wpforms-lite/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?amn_wpforms-lite=$matches[1]&cpage=$matches[2]";s:41:"amn_wpforms-lite/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?amn_wpforms-lite=$matches[1]&page=$matches[2]";s:33:"amn_wpforms-lite/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"amn_wpforms-lite/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"amn_wpforms-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"amn_wpforms-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"amn_wpforms-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"amn_wpforms-lite/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:41:"index.php?&page_id=1367&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:53:"customizer-export-import/customizer-export-import.php";i:1;s:53:"famethemes-demo-importer/famethemes-demo-importer.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";i:3;s:24:"wpforms-lite/wpforms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'onepress', 'yes'),
(41, 'stylesheet', 'senhoras', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '1368', 'yes'),
(84, 'page_on_front', '1367', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wpav_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}i:3;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wpav_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_meta', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-3";i:1;s:14:"recent-posts-3";i:2;s:17:"recent-comments-3";i:3;s:10:"archives-3";i:4;s:12:"categories-3";i:5;s:6:"meta-3";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1550682382;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1550718382;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1550761900;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1550763666;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1550675769;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'Senhoras Esperança e Amor', 'yes'),
(144, 'theme_mods_onepress', 'a:62:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:17;}s:18:"custom_css_post_id";i:-1;s:20:"onepress_contact_cf7";s:19:"[wpforms id="1431"]";s:21:"onepress_contact_text";s:369:"<h4>WE ARE ACCEPTING NEW PROJECTS.</h4>\n<p>Dorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pulvinar scelerisque dictum. Donec iaculis, diam sit amet suscipit feugiat, diam magna volutpat augue.</p>\n<p>Consectetur adipiscing elit. Suspendisse pulvinar scelerisque dictum. Donec iaculis, diam sit amet suscipit feugiat, diam magna volutpat augue.</p>";s:30:"onepress_contact_address_title";s:20:"Pulvinar scelerisque";s:24:"onepress_contact_address";s:63:"1 Infinite Loop <br> Cupertino <br> CA 95014 <br> United States";s:22:"onepress_contact_phone";s:13:"1.123.456.789";s:22:"onepress_contact_email";s:19:"contact@company.com";s:20:"onepress_contact_fax";s:19:"Fax: (123) 123-4567";s:23:"onepress_social_disable";i:0;s:23:"onepress_social_twitter";s:1:"#";s:24:"onepress_social_facebook";s:1:"#";s:22:"onepress_social_google";s:1:"#";s:25:"onepress_social_instagram";s:1:"#";s:27:"onepress_newsletter_disable";i:0;s:29:"onepress_newsletter_mailchimp";s:94:"//famethemes.us8.list-manage.com/subscribe/post?u=521c400d049a59a4b9c0550c2&#038;id=83187e0006";s:21:"onepress_team_members";a:4:{i:0;a:2:{s:7:"user_id";a:2:{s:3:"url";s:83:"https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team5.jpg";s:2:"id";i:11;}s:4:"link";s:0:"";}i:1;a:2:{s:7:"user_id";a:2:{s:3:"url";s:83:"https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team3.jpg";s:2:"id";i:9;}s:4:"link";s:0:"";}i:2;a:2:{s:7:"user_id";a:2:{s:3:"url";s:83:"https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team2.jpg";s:2:"id";i:8;}s:4:"link";s:0:"";}i:3;a:2:{s:7:"user_id";a:2:{s:3:"url";s:83:"https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team6.jpg";s:2:"id";i:12;}s:4:"link";s:0:"";}}s:20:"onepress_hero_images";a:2:{i:0;a:1:{s:5:"image";a:2:{s:3:"url";s:92:"https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/11/onepress2_hero.jpg";s:2:"id";i:1340;}}i:1;a:1:{s:5:"image";a:2:{s:3:"url";s:87:"https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/business1.jpg";s:2:"id";i:1179;}}}s:27:"onepress_hero_overlay_color";s:15:"rgba(0,0,0,0.3)";s:24:"onepress_site_image_logo";s:71:"http://senhorasesperancaeamor.dev.br/wp-content/uploads/2019/02/logo.png";s:20:"onepress_about_boxes";a:2:{i:0;a:3:{s:12:"content_page";s:2:"17";s:10:"hide_title";s:0:"";s:11:"enable_link";s:0:"";}i:1;a:3:{s:12:"content_page";s:2:"22";s:10:"hide_title";s:0:"";s:11:"enable_link";s:0:"";}}s:17:"onepress_services";a:4:{i:0;a:5:{s:9:"icon_type";s:4:"icon";s:4:"icon";s:11:"wikipedia-w";s:5:"image";a:2:{s:3:"url";s:0:"";s:2:"id";s:0:"";}s:12:"content_page";s:2:"23";s:11:"enable_link";s:0:"";}i:1;a:5:{s:9:"icon_type";s:4:"icon";s:4:"icon";s:2:"gg";s:5:"image";a:2:{s:3:"url";s:0:"";s:2:"id";s:0:"";}s:12:"content_page";s:2:"24";s:11:"enable_link";s:0:"";}i:2;a:5:{s:9:"icon_type";s:4:"icon";s:4:"icon";s:13:"balance-scale";s:5:"image";a:2:{s:3:"url";s:0:"";s:2:"id";s:0:"";}s:12:"content_page";s:2:"25";s:11:"enable_link";s:0:"";}i:3;a:5:{s:9:"icon_type";s:4:"icon";s:4:"icon";s:12:"object-group";s:5:"image";a:2:{s:3:"url";s:0:"";s:2:"id";s:0:"";}s:12:"content_page";s:2:"26";s:11:"enable_link";s:0:"";}}s:23:"onepress_news_more_link";s:42:"https://demos.famethemes.com/onepress/news";s:28:"onepress_videolightbox_title";s:44:"Parallax Effect - <strong>Perfected</strong>";s:26:"onepress_videolightbox_url";s:43:"https://www.youtube.com/watch?v=yUCFRL43Zm4";s:28:"onepress_videolightbox_image";i:36;s:22:"onepress_counter_title";s:0:"";s:25:"onepress_counter_subtitle";s:32:"Some Fun Facts about our agency?";s:22:"onepress_counter_boxes";a:4:{i:0;a:4:{s:5:"title";s:18:"Projects completed";s:6:"number";s:3:"368";s:11:"unit_before";s:0:"";s:10:"unit_after";s:0:"";}i:1;a:4:{s:5:"title";s:17:"Positive feedback";s:6:"number";s:2:"99";s:11:"unit_before";s:0:"";s:10:"unit_after";s:1:"%";}i:2;a:4:{s:5:"title";s:14:"Pizzas ordered";s:6:"number";s:3:"254";s:11:"unit_before";s:0:"";s:10:"unit_after";s:0:"";}i:3;a:4:{s:5:"title";s:21:"Average cost per hour";s:6:"number";s:2:"32";s:11:"unit_before";s:1:"$";s:10:"unit_after";s:0:"";}}s:24:"onepress_hero_fullscreen";i:0;s:29:"onepress_hero_overlay_opacity";s:3:"0.6";s:19:"onepress_about_desc";s:120:"We provide <i>creative solutions</i> to clients around the world,<br>\ncreating things that get attention and meaningful.";s:23:"onepress_features_boxes";a:4:{i:0;a:6:{s:5:"title";s:17:"Responsive Design";s:9:"icon_type";s:4:"icon";s:4:"icon";s:9:"fa-laptop";s:5:"image";a:2:{s:3:"url";s:0:"";s:2:"id";s:0:"";}s:4:"desc";s:71:"The theme is responsive, your website will look great on touch devices.";s:4:"link";s:0:"";}i:1;a:6:{s:5:"title";s:15:"Parallax Effect";s:9:"icon_type";s:4:"icon";s:4:"icon";s:5:"photo";s:5:"image";a:2:{s:3:"url";s:0:"";s:2:"id";s:0:"";}s:4:"desc";s:72:"Create memorable pages with smooth parallax effects that everyone loves.";s:4:"link";s:0:"";}i:2;a:6:{s:5:"title";s:11:"WooCommerce";s:9:"icon_type";s:4:"icon";s:4:"icon";s:18:"fa-cart-arrow-down";s:5:"image";a:2:{s:3:"url";s:0:"";s:2:"id";s:0:"";}s:4:"desc";s:57:"Build a front page for your WooCommerce store in minutes.";s:4:"link";s:0:"";}i:3;a:6:{s:5:"title";s:14:"Content Blocks";s:9:"icon_type";s:4:"icon";s:4:"icon";s:7:"reorder";s:5:"image";a:2:{s:3:"url";s:0:"";s:2:"id";s:0:"";}s:4:"desc";s:75:"Change the sections contents, display each block exactly where you need it.";s:4:"link";s:0:"";}}s:11:"custom_logo";i:16;s:23:"onepress_hide_sitetitle";i:1;s:21:"onepress_hide_tagline";i:1;s:24:"onepress_gallery_disable";i:0;s:21:"onepress_gallery_desc";s:90:"NEW: Gallery section support advanced layouts: Grid, Slider, Carousel, Masonry, Justified.";s:28:"onepress_gallery_source_page";s:4:"1245";s:23:"onepress_gallery_layout";s:10:"full-width";s:24:"onepress_gallery_display";s:7:"masonry";s:18:"onepress_g_spacing";s:1:"2";s:14:"onepress_g_col";s:1:"5";s:22:"onepress_hero_parallax";i:0;s:27:"onepress_header_transparent";i:0;s:21:"onepress_header_width";s:9:"contained";s:30:"onepress_sections_nav___enable";s:1:"1";s:26:"onepress_sections_nav_hero";i:1;s:34:"onepress_sections_nav_hero_inverse";i:1;s:30:"onepress_sections_nav_features";i:1;s:27:"onepress_sections_nav_about";i:1;s:30:"onepress_sections_nav_services";i:1;s:35:"onepress_sections_nav_videolightbox";i:1;s:43:"onepress_sections_nav_videolightbox_inverse";i:1;s:29:"onepress_sections_nav_gallery";i:1;s:29:"onepress_sections_nav_counter";i:0;s:26:"onepress_sections_nav_team";i:1;s:26:"onepress_sections_nav_news";i:1;s:29:"onepress_sections_nav_contact";i:1;s:29:"onepress_sections_nav___color";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1550677124;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-3";i:1;s:14:"recent-posts-3";i:2;s:17:"recent-comments-3";i:3;s:10:"archives-3";i:4;s:12:"categories-3";i:5;s:6:"meta-3";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(152, 'wpforms_version', '1.5.1', 'yes'),
(153, 'wpforms_activated', 'a:1:{s:4:"lite";i:1550675837;}', 'yes'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(157, 'widget_wpforms-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(158, '_amn_wpforms-lite_last_checked', '1550620800', 'yes'),
(159, 'wpforms_review', 'a:2:{s:4:"time";i:1550675839;s:9:"dismissed";b:0;}', 'yes'),
(181, 'woocommerce_shop_page_id', '1182', 'yes'),
(182, 'woocommerce_cart_page_id', '1183', 'yes'),
(183, 'woocommerce_checkout_page_id', '1184', 'yes'),
(184, 'woocommerce_myaccount_page_id', '1185', 'yes'),
(189, 'category_children', 'a:0:{}', 'yes'),
(196, 'theme_mods_senhoras', 'a:18:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:17;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1550676885;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-3";i:1;s:14:"recent-posts-3";i:2;s:17:"recent-comments-3";i:3;s:10:"archives-3";i:4;s:12:"categories-3";i:5;s:6:"meta-3";}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}s:20:"onepress_about_boxes";a:1:{i:0;a:3:{s:12:"content_page";s:4:"1453";s:10:"hide_title";i:1;s:11:"enable_link";i:1;}}s:17:"onepress_about_id";s:5:"sobre";s:20:"onepress_about_title";s:13:"Sobre o Grupo";s:23:"onepress_about_subtitle";s:8:"Conheça";s:20:"onepress_services_id";s:8:"servicos";s:23:"onepress_services_title";s:0:"";s:25:"onepress_services_disable";i:1;s:30:"onepress_videolightbox_disable";i:1;s:24:"onepress_counter_disable";i:1;s:21:"onepress_team_disable";i:1;s:16:"onepress_news_id";s:8:"noticias";s:19:"onepress_news_title";s:18:"Últimas Notícias";s:22:"onepress_news_subtitle";s:10:"Confira as";s:23:"onepress_news_more_text";s:4:"Blog";}', 'yes'),
(218, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(224, 'new_admin_email', 'felipe@code6.com.br', 'yes'),
(243, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1550678921;}', 'no') ;

#
# Fim do conteúdo da tabela `wpav_options`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_postmeta` existente
#

DROP TABLE IF EXISTS `wpav_postmeta`;


#
# Estrutura da tabela `wpav_postmeta`
#

CREATE TABLE `wpav_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_postmeta`
#
INSERT INTO `wpav_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(125, 7, '_wp_attached_file', '2016/02/team1.jpg'),
(126, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:400;s:4:"file";s:17:"2016/02/team1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"team1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"team1-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"team1-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"team1-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(127, 8, '_wp_attached_file', '2016/02/team2.jpg'),
(128, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:400;s:4:"file";s:17:"2016/02/team2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"team2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"team2-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"team2-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"team2-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 9, '_wp_attached_file', '2016/02/team3.jpg'),
(130, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:400;s:4:"file";s:17:"2016/02/team3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"team3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"team3-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"team3-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"team3-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 10, '_wp_attached_file', '2016/02/team4.jpg'),
(132, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:400;s:4:"file";s:17:"2016/02/team4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"team4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"team4-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"team4-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"team4-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 11, '_wp_attached_file', '2016/02/team5.jpg'),
(134, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:400;s:4:"file";s:17:"2016/02/team5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"team5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"team5-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"team5-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"team5-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(135, 12, '_wp_attached_file', '2016/02/team6.jpg'),
(136, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:400;s:4:"file";s:17:"2016/02/team6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"team6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"team6-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"team6-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"team6-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 13, '_wp_attached_file', '2016/02/team7.jpg'),
(138, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:400;s:4:"file";s:17:"2016/02/team7.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"team7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"team7-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"team7-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"team7-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(139, 14, '_wp_attached_file', '2016/02/team8.jpg'),
(140, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:400;s:4:"file";s:17:"2016/02/team8.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"team8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"team8-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"team8-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"team8-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(141, 15, '_wp_attached_file', '2016/02/hero4.jpg'),
(142, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:997;s:4:"file";s:17:"2016/02/hero4.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"hero4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"hero4-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"hero4-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"hero4-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"hero4-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"hero4-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:17:"hero4-640x400.jpg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 16, '_wp_attached_file', '2016/02/logo.png'),
(177, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:152;s:6:"height";i:36;s:4:"file";s:16:"2016/02/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x36.png";s:5:"width";i:150;s:6:"height";i:36;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(178, 18, '_wp_attached_file', '2016/02/about1.jpg'),
(179, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:350;s:4:"file";s:18:"2016/02/about1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"about1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"about1-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:18:"about1-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:18:"about1-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:18:"about1-640x350.jpg";s:5:"width";i:640;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(181, 19, '_wp_attached_file', '2016/02/about2.jpg'),
(182, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:350;s:4:"file";s:18:"2016/02/about2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"about2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"about2-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:18:"about2-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:18:"about2-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:18:"about2-640x350.jpg";s:5:"width";i:640;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(184, 20, '_wp_attached_file', '2016/02/about3.jpg'),
(185, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:350;s:4:"file";s:18:"2016/02/about3.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"about3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"about3-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:18:"about3-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:18:"about3-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:18:"about3-640x350.jpg";s:5:"width";i:640;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(187, 34, '_wp_attached_file', '2016/02/blog2.jpg'),
(188, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:17:"2016/02/blog2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"blog2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"blog2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"blog2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"blog2-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"blog2-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"blog2-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:17:"blog2-640x400.jpg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(190, 35, '_wp_attached_file', '2016/02/blog4.jpg'),
(191, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:17:"2016/02/blog4.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"blog4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"blog4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"blog4-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"blog4-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"blog4-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"blog4-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:17:"blog4-640x400.jpg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(193, 36, '_wp_attached_file', '2016/02/blog1.jpg'),
(194, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:850;s:4:"file";s:17:"2016/02/blog1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"blog1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"blog1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"blog1-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"blog1-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"blog1-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:17:"blog1-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:17:"blog1-640x400.jpg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(196, 1179, '_wp_attached_file', '2016/02/business1.jpg'),
(197, 1179, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1200;s:4:"file";s:21:"2016/02/business1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"business1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"business1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"business1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"business1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:21:"business1-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:21:"business1-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:21:"business1-640x400.jpg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(198, 1246, '_wp_attached_file', '2016/10/pexels-photo-171292.jpeg'),
(199, 1246, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:32:"2016/10/pexels-photo-171292.jpeg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"pexels-photo-171292-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"pexels-photo-171292-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"pexels-photo-171292-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"pexels-photo-171292-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:32:"pexels-photo-171292-300x150.jpeg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:32:"pexels-photo-171292-480x300.jpeg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:32:"pexels-photo-171292-640x400.jpeg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(201, 1247, '_wp_attached_file', '2016/10/pexels-photo-186077.jpeg'),
(202, 1247, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:872;s:4:"file";s:32:"2016/10/pexels-photo-186077.jpeg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"pexels-photo-186077-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"pexels-photo-186077-300x204.jpeg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"pexels-photo-186077-768x523.jpeg";s:5:"width";i:768;s:6:"height";i:523;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"pexels-photo-186077-1024x698.jpeg";s:5:"width";i:1024;s:6:"height";i:698;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:32:"pexels-photo-186077-300x150.jpeg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:32:"pexels-photo-186077-480x300.jpeg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:32:"pexels-photo-186077-640x400.jpeg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(204, 1248, '_wp_attached_file', '2016/10/pexels-photo-66463.jpeg'),
(205, 1248, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:853;s:4:"file";s:31:"2016/10/pexels-photo-66463.jpeg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"pexels-photo-66463-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"pexels-photo-66463-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"pexels-photo-66463-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"pexels-photo-66463-1024x682.jpeg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:31:"pexels-photo-66463-300x150.jpeg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:31:"pexels-photo-66463-480x300.jpeg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:31:"pexels-photo-66463-640x400.jpeg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 1249, '_wp_attached_file', '2016/10/pexels-photo-106344.jpeg'),
(208, 1249, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:854;s:4:"file";s:32:"2016/10/pexels-photo-106344.jpeg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"pexels-photo-106344-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"pexels-photo-106344-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"pexels-photo-106344-768x512.jpeg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"pexels-photo-106344-1024x683.jpeg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:32:"pexels-photo-106344-300x150.jpeg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:32:"pexels-photo-106344-480x300.jpeg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:32:"pexels-photo-106344-640x400.jpeg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(210, 1250, '_wp_attached_file', '2016/10/macbook-laptop-ipad-apple-38519.jpeg'),
(211, 1250, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:850;s:4:"file";s:44:"2016/10/macbook-laptop-ipad-apple-38519.jpeg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"macbook-laptop-ipad-apple-38519-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"macbook-laptop-ipad-apple-38519-300x199.jpeg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"macbook-laptop-ipad-apple-38519-768x510.jpeg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"macbook-laptop-ipad-apple-38519-1024x680.jpeg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:44:"macbook-laptop-ipad-apple-38519-300x150.jpeg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:44:"macbook-laptop-ipad-apple-38519-480x300.jpeg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:44:"macbook-laptop-ipad-apple-38519-640x400.jpeg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(213, 1340, '_wp_attached_file', '2017/11/onepress2_hero.jpg'),
(214, 1340, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1353;s:4:"file";s:26:"2017/11/onepress2_hero.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"onepress2_hero-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"onepress2_hero-300x254.jpg";s:5:"width";i:300;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"onepress2_hero-768x649.jpg";s:5:"width";i:768;s:6:"height";i:649;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"onepress2_hero-1024x866.jpg";s:5:"width";i:1024;s:6:"height";i:866;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:26:"onepress2_hero-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:26:"onepress2_hero-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:26:"onepress2_hero-640x400.jpg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(215, 1343, '_wp_attached_file', '2017/12/25388715424_65480dbf18_k.jpg'),
(216, 1343, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1400;s:6:"height";i:934;s:4:"file";s:36:"2017/12/25388715424_65480dbf18_k.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"25388715424_65480dbf18_k-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"25388715424_65480dbf18_k-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"25388715424_65480dbf18_k-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"25388715424_65480dbf18_k-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:36:"25388715424_65480dbf18_k-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:36:"25388715424_65480dbf18_k-480x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"onepress-medium";a:4:{s:4:"file";s:36:"25388715424_65480dbf18_k-640x400.jpg";s:5:"width";i:640;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(217, 1343, '_elementor_source_image_hash', '39414018d074359e5366ffffb1f9825ca7b3f5a0'),
(218, 1344, '_wp_attached_file', '2017/12/zusman.png'),
(219, 1344, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:18:"2017/12/zusman.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"zusman-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:18:"zusman-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(220, 1344, '_elementor_source_image_hash', 'b0bbc025e9b9e8245081903559207c5d20249c0e'),
(221, 1345, '_wp_attached_file', '2017/12/zing.png'),
(222, 1345, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:16:"2017/12/zing.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"zing-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:16:"zing-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(223, 1345, '_elementor_source_image_hash', '0dc0648ad7a18b0454a9eb79060429b187166d74'),
(224, 1346, '_wp_attached_file', '2017/12/madrin.png'),
(225, 1346, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:18:"2017/12/madrin.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"madrin-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:18:"madrin-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(226, 1346, '_elementor_source_image_hash', '42538a975acb126a0fe13f81066994abad0ad7e8'),
(227, 1347, '_wp_attached_file', '2017/12/armond-1.png'),
(228, 1347, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:20:"2017/12/armond-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"armond-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:20:"armond-1-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(229, 1347, '_elementor_source_image_hash', '11ad89f5e9a90250e55b3e6e900e53a781135f1a'),
(230, 1348, '_wp_attached_file', '2017/12/x.venox_.png'),
(231, 1348, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:20:"2017/12/x.venox_.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"x.venox_-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:20:"x.venox_-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(232, 1348, '_elementor_source_image_hash', '99b558ba64b3719d2135c03f80ef2ff304f7ed4e'),
(233, 1349, '_wp_attached_file', '2017/12/geo.png'),
(234, 1349, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:15:"2017/12/geo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"geo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:15:"geo-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(235, 1349, '_elementor_source_image_hash', 'c83533f623aa9948a221b4c6946ab7df1b455fb8'),
(236, 1350, '_wp_attached_file', '2017/12/fifthflour.png'),
(237, 1350, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:22:"2017/12/fifthflour.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"fifthflour-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:22:"fifthflour-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(238, 1350, '_elementor_source_image_hash', 'ac1412eb92c34db4cba9f0b97ccd232d57b4af89'),
(239, 1351, '_wp_attached_file', '2017/12/larozse.png'),
(240, 1351, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:19:"2017/12/larozse.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"larozse-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:19:"larozse-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(241, 1351, '_elementor_source_image_hash', 'de1a59c1664f49857e71717eab9be9769f545fde'),
(242, 1352, '_wp_attached_file', '2017/12/bolier.png'),
(243, 1352, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:18:"2017/12/bolier.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"bolier-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:18:"bolier-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(244, 1352, '_elementor_source_image_hash', '03595b1a564dde3bba529cdc084735670f568ec3'),
(245, 1353, '_wp_attached_file', '2017/12/mapmaster.png'),
(246, 1353, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:21:"2017/12/mapmaster.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"mapmaster-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:21:"mapmaster-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(247, 1353, '_elementor_source_image_hash', '861f364364ca6fcfedb457bac83dcdffb1017edd'),
(248, 1354, '_wp_attached_file', '2017/12/darkside.png'),
(249, 1354, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:20:"2017/12/darkside.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"darkside-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:20:"darkside-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(250, 1354, '_elementor_source_image_hash', 'fc4595e44bc0590c468f023e580e71b06cbb2b5c'),
(251, 1355, '_wp_attached_file', '2017/12/digit.png'),
(252, 1355, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:17:"2017/12/digit.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"digit-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:17:"digit-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(253, 1355, '_elementor_source_image_hash', 'aeacfffdb61f65dbcb8fdf31622c3654970b0592'),
(254, 1356, '_wp_attached_file', '2017/12/col.png'),
(255, 1356, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:150;s:4:"file";s:15:"2017/12/col.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"col-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:15:"col-200x150.png";s:5:"width";i:200;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(256, 1356, '_elementor_source_image_hash', 'a3289c89219561ccc3a494791e748719d6afad4e'),
(257, 1357, '_wp_attached_file', '2017/12/25497478040_140ce47f31_k.jpg'),
(258, 1357, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:36:"2017/12/25497478040_140ce47f31_k.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"25497478040_140ce47f31_k-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:36:"25497478040_140ce47f31_k-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"onepress-small";a:4:{s:4:"file";s:36:"25497478040_140ce47f31_k-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(259, 1357, '_elementor_source_image_hash', '41738e31ddb595b832897f3df3fdb2d40efb765b'),
(260, 1358, '_wp_attached_file', '2017/12/1470399607_Illustration.png'),
(261, 1358, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:35:"2017/12/1470399607_Illustration.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"1470399607_Illustration-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"1470399607_Illustration-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:35:"1470399607_Illustration-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"onepress-small";a:4:{s:4:"file";s:35:"1470399607_Illustration-480x300.png";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:15:"onepress-medium";a:4:{s:4:"file";s:35:"1470399607_Illustration-512x400.png";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(262, 1358, '_elementor_source_image_hash', '34d6c0100714957d161827d90d9ce2750e4d71a3'),
(263, 1359, '_wp_attached_file', '2017/12/1470399614_Social_Media.png'),
(264, 1359, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:35:"2017/12/1470399614_Social_Media.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"1470399614_Social_Media-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"1470399614_Social_Media-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:35:"1470399614_Social_Media-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"onepress-small";a:4:{s:4:"file";s:35:"1470399614_Social_Media-480x300.png";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:15:"onepress-medium";a:4:{s:4:"file";s:35:"1470399614_Social_Media-512x400.png";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(265, 1359, '_elementor_source_image_hash', 'd557d522067465e4bd6f2efc658c42a4bc00f203'),
(266, 1360, '_wp_attached_file', '2017/12/1470399594_Web_Design.png') ;
INSERT INTO `wpav_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(267, 1360, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:33:"2017/12/1470399594_Web_Design.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"1470399594_Web_Design-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"1470399594_Web_Design-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:19:"onepress-blog-small";a:4:{s:4:"file";s:33:"1470399594_Web_Design-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"onepress-small";a:4:{s:4:"file";s:33:"1470399594_Web_Design-480x300.png";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:15:"onepress-medium";a:4:{s:4:"file";s:33:"1470399594_Web_Design-512x400.png";s:5:"width";i:512;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(268, 1360, '_elementor_source_image_hash', '4ca740bd8294a67357d7e15e4647a343f7171bb1'),
(269, 1361, '_wp_attached_file', '2017/12/1470399662_Marketing.png'),
(270, 1361, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:32:"2017/12/1470399662_Marketing.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(271, 1361, '_elementor_source_image_hash', '69268cbce5e2a9a6f99b17a99c81cc52183385ab'),
(272, 1362, '_wp_attached_file', '2017/12/1470399671_SEO.png'),
(273, 1362, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:26:"2017/12/1470399671_SEO.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(274, 1362, '_elementor_source_image_hash', '8d66ddba6dccce5d59e378106df3110e3b8bd017'),
(275, 1363, '_wp_attached_file', '2017/12/1470399715_E-Commerce.png'),
(276, 1363, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:33:"2017/12/1470399715_E-Commerce.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(277, 1363, '_elementor_source_image_hash', '2d349c6c3c3c294f95c179120b1717ea053e293c'),
(278, 1364, '_wp_attached_file', '2017/12/1470399674_App_Development.png'),
(279, 1364, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:38:"2017/12/1470399674_App_Development.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(280, 1364, '_elementor_source_image_hash', 'a4a9946940f7996c9cd8a95be3325cb2e84da261'),
(281, 1365, '_wp_attached_file', '2017/12/1470399667_Newsletter.png'),
(282, 1365, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:33:"2017/12/1470399667_Newsletter.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(283, 1365, '_elementor_source_image_hash', '70a39cd3ca1154cfcd7cd3a82c0227bdfc9651b6'),
(284, 1366, '_wp_attached_file', '2017/12/1470399656_Branding.png'),
(285, 1366, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:31:"2017/12/1470399656_Branding.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(286, 1366, '_elementor_source_image_hash', '3b1a93451144b3c01b0e9e267ece57ecc45bdee0'),
(287, 1367, '_edit_last', '1'),
(288, 1367, '_wp_page_template', 'template-frontpage.php'),
(289, 1368, '_edit_last', '1'),
(290, 1368, '_wp_page_template', 'default'),
(308, 27, '_menu_item_type', 'custom'),
(309, 27, '_menu_item_menu_item_parent', '0'),
(310, 27, '_menu_item_object_id', '27'),
(311, 27, '_menu_item_object', 'custom'),
(312, 27, '_menu_item_target', ''),
(313, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(314, 27, '_menu_item_xfn', ''),
(315, 27, '_menu_item_url', '/#sobre'),
(340, 31, '_menu_item_type', 'custom'),
(341, 31, '_menu_item_menu_item_parent', '0'),
(342, 31, '_menu_item_object_id', '31'),
(343, 31, '_menu_item_object', 'custom'),
(344, 31, '_menu_item_target', ''),
(345, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(346, 31, '_menu_item_xfn', ''),
(347, 31, '_menu_item_url', '/#noticias'),
(348, 32, '_menu_item_type', 'custom'),
(349, 32, '_menu_item_menu_item_parent', '0'),
(350, 32, '_menu_item_object_id', '32'),
(351, 32, '_menu_item_object', 'custom'),
(352, 32, '_menu_item_target', ''),
(353, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(354, 32, '_menu_item_xfn', ''),
(355, 32, '_menu_item_url', '/contato'),
(382, 33, '_edit_last', '2'),
(383, 33, '_thumbnail_id', '35'),
(386, 37, '_thumbnail_id', '34'),
(387, 37, '_edit_last', '2'),
(390, 1177, '_wp_old_slug', 'image-alignment'),
(391, 1177, '_publicize_pending', '1'),
(392, 1177, 'standard_seo_post_level_layout', ''),
(393, 1177, 'standard_link_url_field', ''),
(394, 1177, 'standard_seo_post_meta_description', ''),
(395, 1177, 'original_post_id', '903'),
(396, 1177, '_wp_old_slug', '903'),
(397, 1177, '_edit_last', '2'),
(398, 1177, '_thumbnail_id', '36'),
(405, 1245, '_edit_last', '2'),
(406, 1245, '_wp_page_template', 'default'),
(416, 1432, '_wp_attached_file', '2019/02/logo.png'),
(417, 1432, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:152;s:6:"height";i:36;s:4:"file";s:16:"2019/02/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x36.png";s:5:"width";i:150;s:6:"height";i:36;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(458, 1368, '_edit_lock', '1550676587:1'),
(459, 1368, '_hide_page_title', ''),
(460, 1368, '_hide_header', ''),
(461, 1368, '_hide_footer', ''),
(462, 1368, '_hide_breadcrumb', ''),
(463, 1368, '_cover', ''),
(464, 1368, '_show_excerpt', ''),
(465, 1368, '_wc_apply_product', ''),
(466, 1367, '_edit_lock', '1550677118:1'),
(467, 1367, '_hide_page_title', ''),
(468, 1367, '_hide_header', ''),
(469, 1367, '_hide_footer', ''),
(470, 1367, '_hide_breadcrumb', ''),
(471, 1367, '_cover', ''),
(472, 1367, '_show_excerpt', ''),
(473, 1367, '_wc_apply_product', ''),
(474, 1450, '_edit_lock', '1550677120:1'),
(475, 1450, '_customize_restore_dismissed', '1'),
(476, 1451, '_wp_trash_meta_status', 'publish'),
(477, 1451, '_wp_trash_meta_time', '1550677187'),
(478, 1452, '_wp_trash_meta_status', 'publish'),
(479, 1452, '_wp_trash_meta_time', '1550677257'),
(480, 1453, '_edit_lock', '1550677931:1'),
(481, 1454, '_wp_trash_meta_status', 'publish'),
(482, 1454, '_wp_trash_meta_time', '1550677329'),
(483, 1453, '_edit_last', '1'),
(484, 1453, '_hide_page_title', ''),
(485, 1453, '_hide_header', ''),
(486, 1453, '_hide_footer', ''),
(487, 1453, '_hide_breadcrumb', ''),
(488, 1453, '_cover', ''),
(489, 1453, '_show_excerpt', ''),
(490, 1453, '_wc_apply_product', ''),
(491, 1456, '_wp_trash_meta_status', 'publish'),
(492, 1456, '_wp_trash_meta_time', '1550677420') ;
INSERT INTO `wpav_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(493, 1457, '_edit_lock', '1550678055:1'),
(494, 1453, '_oembed_750c6d85fc9543a30cf1b1278a6ca443', '{{unknown}}'),
(495, 2, '_wp_trash_meta_status', 'publish'),
(496, 2, '_wp_trash_meta_time', '1550677899'),
(497, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(498, 1245, '_wp_trash_meta_status', 'publish'),
(499, 1245, '_wp_trash_meta_time', '1550677910'),
(500, 1245, '_wp_desired_post_slug', 'gallery'),
(501, 1457, '_wp_trash_meta_status', 'publish'),
(502, 1457, '_wp_trash_meta_time', '1550678069'),
(503, 1468, '_wp_trash_meta_status', 'publish'),
(504, 1468, '_wp_trash_meta_time', '1550678167'),
(505, 1469, '_edit_lock', '1550678282:1'),
(506, 1469, '_edit_last', '1'),
(507, 1469, '_hide_page_title', ''),
(508, 1469, '_hide_header', ''),
(509, 1469, '_hide_footer', ''),
(510, 1469, '_hide_breadcrumb', ''),
(511, 1469, '_cover', ''),
(512, 1469, '_show_excerpt', ''),
(513, 1469, '_wc_apply_product', '') ;

#
# Fim do conteúdo da tabela `wpav_postmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_posts` existente
#

DROP TABLE IF EXISTS `wpav_posts`;


#
# Estrutura da tabela `wpav_posts`
#

CREATE TABLE `wpav_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_posts`
#
INSERT INTO `wpav_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-20 12:06:22', '2019-02-20 15:06:22', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2019-02-20 12:06:22', '2019-02-20 15:06:22', '', 0, 'http://senhorasesperancaeamor.dev.br/?p=1', 0, 'post', '', 0),
(2, 1, '2019-02-20 12:06:22', '2019-02-20 15:06:22', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href="http://senhorasesperancaeamor.dev.br/wp-admin/">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2019-02-20 12:51:39', '2019-02-20 15:51:39', '', 0, 'http://senhorasesperancaeamor.dev.br/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-20 12:06:22', '2019-02-20 15:06:22', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://senhorasesperancaeamor.dev.br.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2019-02-20 12:06:22', '2019-02-20 15:06:22', '', 0, 'http://senhorasesperancaeamor.dev.br/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-02-20 12:06:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-20 12:06:36', '0000-00-00 00:00:00', '', 0, 'http://senhorasesperancaeamor.dev.br/?p=4', 0, 'post', '', 0),
(7, 2, '2016-02-12 08:00:25', '2016-02-12 08:00:25', '', 'team1', '', 'inherit', 'open', 'closed', '', 'team1', '', '', '2016-02-12 08:00:25', '2016-02-12 08:00:25', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team1.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 2, '2016-02-12 08:00:26', '2016-02-12 08:00:26', ' Director Of Production ', 'Harry Allen', '', 'inherit', 'open', 'closed', '', 'team2', '', '', '2016-02-12 08:00:26', '2016-02-12 08:00:26', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team2.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 2, '2016-02-12 08:00:28', '2016-02-12 08:00:28', ' Founder & CTO ', 'Victoria Stephens', '', 'inherit', 'open', 'closed', '', 'team3', '', '', '2016-02-12 08:00:28', '2016-02-12 08:00:28', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team3.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 2, '2016-02-12 08:00:29', '2016-02-12 08:00:29', '', 'team4', '', 'inherit', 'open', 'closed', '', 'team4', '', '', '2016-02-12 08:00:29', '2016-02-12 08:00:29', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team4.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 2, '2016-02-12 08:00:30', '2016-02-12 08:00:30', 'Founder & CEO ', 'Alexander Rios', '', 'inherit', 'open', 'closed', '', 'team5', '', '', '2016-02-12 08:00:30', '2016-02-12 08:00:30', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team5.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 2, '2016-02-12 08:00:31', '2016-02-12 08:00:31', ' Senior Designer ', 'Sean Weaver', '', 'inherit', 'open', 'closed', '', 'team6', '', '', '2016-02-12 08:00:31', '2016-02-12 08:00:31', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team6.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 2, '2016-02-12 08:00:32', '2016-02-12 08:00:32', '', 'team7', '', 'inherit', 'open', 'closed', '', 'team7', '', '', '2016-02-12 08:00:32', '2016-02-12 08:00:32', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team7.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 2, '2016-02-12 08:00:33', '2016-02-12 08:00:33', '', 'team8', '', 'inherit', 'open', 'closed', '', 'team8', '', '', '2016-02-12 08:00:33', '2016-02-12 08:00:33', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/team8.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 2, '2016-02-12 08:03:43', '2016-02-12 08:03:43', '', 'hero4', '', 'inherit', 'open', 'closed', '', 'hero4', '', '', '2016-02-12 08:03:43', '2016-02-12 08:03:43', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/hero4.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 2, '2016-02-12 08:04:46', '2016-02-12 08:04:46', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-02-12 08:04:46', '2016-02-12 08:04:46', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/logo.png', 0, 'attachment', 'image/png', 0),
(18, 2, '2016-02-12 08:10:00', '2016-02-12 08:10:00', '', 'about1', '', 'inherit', 'open', 'closed', '', 'about1', '', '', '2019-02-20 12:24:47', '2019-02-20 15:24:47', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/about1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 2, '2016-02-12 08:10:06', '2016-02-12 08:10:06', '', 'about2', '', 'inherit', 'open', 'closed', '', 'about2', '', '', '2019-02-20 12:24:47', '2019-02-20 15:24:47', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/about2.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 2, '2016-02-12 08:10:09', '2016-02-12 08:10:09', '', 'about3', '', 'inherit', 'open', 'closed', '', 'about3', '', '', '2019-02-20 12:24:47', '2019-02-20 15:24:47', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/about3.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 2, '2016-02-12 08:19:06', '2016-02-12 08:19:06', '', 'Sobre', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-02-20 12:58:15', '2019-02-20 15:58:15', '', 0, 'http://demos.famethemes.com/onepress/2016/02/12/about/', 1, 'nav_menu_item', '', 0),
(31, 2, '2016-02-12 08:19:06', '2016-02-12 08:19:06', '', 'Notícias', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2019-02-20 12:58:15', '2019-02-20 15:58:15', '', 0, 'http://demos.famethemes.com/onepress/2016/02/12/news/', 2, 'nav_menu_item', '', 0),
(32, 2, '2016-02-12 08:19:06', '2016-02-12 08:19:06', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-02-20 12:58:15', '2019-02-20 15:58:15', '', 0, 'http://demos.famethemes.com/onepress/2016/02/12/contact/', 3, 'nav_menu_item', '', 0),
(33, 2, '2016-02-12 08:27:17', '2016-02-12 08:27:17', '<h3><img class="alignnone wp-image-35 size-full" src="https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/blog4.jpg" alt="blog4" width="1280" height="853" /></h3>\n<h3>Default</h3>\nThis is a paragraph. It should not have any alignment of any kind. It should just flow like you would normally expect. Nothing fancy. Just straight up text, free flowing, with love. Completely neutral and not picking a side or sitting on the fence. It just is. It just freaking is. It likes where it is. It does not feel compelled to pick a side. Leave him be. It will just be better that way. Trust me.\n<h3>Left Align</h3>\n<p style="text-align: left;">This is a paragraph. It is left aligned. Because of this, it is a bit more liberal in it\'s views. It\'s favorite color is green. Left align tends to be more eco-friendly, but it provides no concrete evidence that it really is. Even though it likes share the wealth evenly, it leaves the equal distribution up to justified alignment.</p>\n\n<h3>Center Align</h3>\n<p style="text-align: center;">This is a paragraph. It is center aligned. Center is, but nature, a fence sitter. A flip flopper. It has a difficult time making up its mind. It wants to pick a side. Really, it does. It has the best intentions, but it tends to complicate matters more than help. The best you can do is try to win it over and hope for the best. I hear center align does take bribes.</p>\n\n<h3>Right Align</h3>\n<p style="text-align: right;">This is a paragraph. It is right aligned. It is a bit more conservative in it\'s views. It\'s prefers to not be told what to do or how to do it. Right align totally owns a slew of guns and loves to head to the range for some practice. Which is cool and all. I mean, it\'s a pretty good shot from at least four or five football fields away. Dead on. So boss.</p>\n\n<h3>Justify Align</h3>\n<p style="text-align: justify;">This is a paragraph. It is justify aligned. It gets really mad when people associate it with Justin Timberlake. Typically, justified is pretty straight laced. It likes everything to be in it\'s place and not all cattywampus like the rest of the aligns. I am not saying that makes it better than the rest of the aligns, but it does tend to put off more of an elitist attitude.</p>', 'Markup: Text Alignment', '', 'publish', 'open', 'open', '', 'markup-text-alignment', '', '', '2016-02-12 08:27:17', '2016-02-12 08:27:17', '', 0, 'http://demos.famethemes.com/onepress/?p=33', 0, 'post', '', 0),
(34, 2, '2016-02-12 08:24:42', '2016-02-12 08:24:42', '', 'blog2', '', 'inherit', 'open', 'closed', '', 'blog2', '', '', '2019-02-20 12:24:48', '2019-02-20 15:24:48', '', 33, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/blog2.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 2, '2016-02-12 08:26:25', '2016-02-12 08:26:25', '', 'blog4', '', 'inherit', 'open', 'closed', '', 'blog4', '', '', '2019-02-20 12:24:48', '2019-02-20 15:24:48', '', 33, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/blog4.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 2, '2016-02-12 08:26:28', '2016-02-12 08:26:28', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2019-02-20 12:24:48', '2019-02-20 15:24:48', '', 33, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/blog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 2, '2016-02-12 08:28:47', '2016-02-12 08:28:47', '<h2>Headings</h2>\n<h1>Header one</h1>\n<h2>Header two</h2>\n<h3>Header three</h3>\n<h4>Header four</h4>\n<h5>Header five</h5>\n<h6>Header six</h6>\n<h2>Blockquotes</h2>\nSingle line blockquote:\n<blockquote>Stay hungry. Stay foolish.</blockquote>\nMulti line blockquote with a cite reference:\n<blockquote>People think focus means saying yes to the thing you\'ve got to focus on. But that\'s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I\'m actually as proud of the things we haven\'t done as the things I have done. Innovation is saying no to 1,000 things.</blockquote>\n<cite>Steve Jobs</cite> - Apple Worldwide Developers\' Conference, 1997\n<h2>Tables</h2>\n<table>\n<thead>\n<tr>\n<th>Employee</th>\n<th>Salary</th>\n<th></th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<th><a href="https://example.org/">John Doe</a></th>\n<td>$1</td>\n<td>Because that\'s all Steve Jobs needed for a salary.</td>\n</tr>\n<tr>\n<th><a href="https://example.org/">Jane Doe</a></th>\n<td>$100K</td>\n<td>For all the blogging she does.</td>\n</tr>\n<tr>\n<th><a href="https://example.org/">Fred Bloggs</a></th>\n<td>$100M</td>\n<td>Pictures are worth a thousand words, right? So Jane x 1,000.</td>\n</tr>\n<tr>\n<th><a href="https://example.org/">Jane Bloggs</a></th>\n<td>$100B</td>\n<td>With hair like that?! Enough said...</td>\n</tr>\n</tbody>\n</table>\n<h2>Definition Lists</h2>\n<dl><dt>Definition List Title</dt><dd>Definition list division.</dd><dt>Startup</dt><dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd><dt>#dowork</dt><dd>Coined by Rob Dyrdek and his personal body guard Christopher "Big Black" Boykins, "Do Work" works as a self motivator, to motivating your friends.</dd><dt>Do It Live</dt><dd>I\'ll let Bill O\'Reilly will <a title="We\'ll Do It Live" href="https://www.youtube.com/watch?v=O_HyZ5aW76c">explain</a> this one.</dd></dl>\n<h2>Unordered Lists (Nested)</h2>\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one\n<ul>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ul>\n<h2>Ordered List (Nested)</h2>\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one\n<ol>\n	<li>List item one</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n</li>\n	<li>List item two</li>\n	<li>List item three</li>\n	<li>List item four</li>\n</ol>\n<h2>HTML Tags</h2>\nThese supported tags come from the WordPress.com code <a title="Code" href="https://en.support.wordpress.com/code/">FAQ</a>.\n\n<strong>Address Tag</strong>\n\n<address>1 Infinite Loop\nCupertino, CA 95014\nUnited States</address><strong>Anchor Tag (aka. Link)</strong>\n\nThis is an example of a <a title="Apple" href="https://apple.com">link</a>.\n\n<strong>Abbreviation Tag</strong>\n\nThe abbreviation <abbr title="Seriously">srsly</abbr> stands for "seriously".\n\n<strong>Acronym Tag (<em>deprecated in HTML5</em>)</strong>\n\nThe acronym <acronym title="For The Win">ftw</acronym> stands for "for the win".\n\n<strong>Big Tag <strong>(<em>deprecated in HTML5</em>)</strong></strong>\n\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\n\n<strong>Cite Tag</strong>\n\n"Code is poetry." --<cite>Automattic</cite>\n\n<strong>Code Tag</strong>\n\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\n\n<strong>Delete Tag</strong>\n\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\n\n<strong>Emphasize Tag</strong>\n\nThe emphasize tag should <em>italicize</em> text.\n\n<strong>Insert Tag</strong>\n\nThis tag should denote <ins>inserted</ins> text.\n\n<strong>Keyboard Tag</strong>\n\nThis scarcely known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Preformatted Tag</strong>\n\nThis tag styles large blocks of code.\n<pre>.post-title {\n	margin: 0 0 5px;\n	font-weight: bold;\n	font-size: 38px;\n	line-height: 1.2;\n	and here\'s a line of some really, really, really, really long text, just to see how the PRE tag handles it and to find out how it overflows;\n}</pre>\n<strong>Quote Tag</strong>\n\n<q>Developers, developers, developers...</q> --Steve Ballmer\n\n<strong>Strike Tag <strong>(<em>deprecated in HTML5</em>)</strong></strong>\n\nThis tag shows <span style="text-decoration: line-through;">strike-through text</span>\n\n<strong>Strong Tag</strong>\n\nThis tag shows <strong>bold<strong> text.</strong></strong>\n\n<strong>Subscript Tag</strong>\n\nGetting our science styling on with H<sub>2</sub>O, which should push the "2" down.\n\n<strong>Superscript Tag</strong>\n\nStill sticking with science and Isaac Newton\'s E = MC<sup>2</sup>, which should lift the 2 up.\n\n<strong>Teletype Tag <strong>(<em>deprecated in HTML5</em>)</strong></strong>\n\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\n\n<strong>Variable Tag</strong>\n\nThis allows you to denote <var>variables</var>.', 'Markup: HTML Tags and Formatting', '', 'publish', 'open', 'open', '', 'markup-html-tags-and-formatting', '', '', '2016-02-12 08:28:47', '2016-02-12 08:28:47', '', 0, 'http://demos.famethemes.com/onepress/?p=37', 0, 'post', '', 0),
(1177, 2, '2013-01-10 20:15:40', '2013-01-11 03:15:40', 'Welcome to image alignment! The best way to demonstrate the ebb and flow of the various image positioning options is to nestle them snuggly among an ocean of words. Grab a paddle and let\'s get started.\n\nOn the topic of alignment, it should be noted that users can choose from the options of <em>None</em>, <em>Left</em>, <em>Right, </em>and <em>Center</em>. In addition, they also get the options of <em>Thumbnail</em>, <em>Medium</em>, <em>Large</em> &amp; <em>Fullsize</em>.\n<p style="text-align: center;"><img class="size-full wp-image-906 aligncenter" title="Image Alignment 580x300" src="https://demos.famethemes.com/onepress/wp-content/uploads/2013/03/image-alignment-580x300.jpg" alt="Image Alignment 580x300" width="580" height="300" /></p>\nThe image above happens to be <em><strong>centered</strong></em>.\n\n<strong><img class="size-full wp-image-904 alignleft" title="Image Alignment 150x150" src="https://demos.famethemes.com/onepress/wp-content/uploads/2013/03/image-alignment-150x150.jpg" alt="Image Alignment 150x150" width="150" height="150" /></strong>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>.\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n<img class="alignnone wp-image-907" title="Image Alignment 1200x400" src="https://demos.famethemes.com/onepress/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg" alt="Image Alignment 1200x400" width="1200" height="400" />\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n<img class="size-full wp-image-905 alignright" title="Image Alignment 300x200" src="https://demos.famethemes.com/onepress/wp-content/uploads/2013/03/image-alignment-300x200.jpg" alt="Image Alignment 300x200" width="300" height="200" />\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd just when you thought we were done, we\'re going to do them all over again with captions!\n\n[caption id="attachment_906" align="aligncenter" width="580"]<img class="size-full wp-image-906 " title="Image Alignment 580x300" src="https://demos.famethemes.com/onepress/wp-content/uploads/2013/03/image-alignment-580x300.jpg" alt="Image Alignment 580x300" width="580" height="300" /> Look at 580x300 getting some <a title="Image Settings" href="https://en.support.wordpress.com/images/image-settings/">caption</a> love.[/caption]\n\nThe image above happens to be <em><strong>centered</strong></em>. The caption also has a link in it, just to see if it does anything funky.\n\n[caption id="attachment_904" align="alignleft" width="150"]<img class="size-full wp-image-904 " title="Image Alignment 150x150" src="https://demos.famethemes.com/onepress/wp-content/uploads/2013/03/image-alignment-150x150.jpg" alt="Image Alignment 150x150" width="150" height="150" /> Itty-bitty caption.[/caption]\n\nThe rest of this paragraph is filler for the sake of seeing the text wrap around the 150x150 image, which is <em><strong>left aligned</strong></em>.\n\nAs you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not right. Images need breathing room too. Let them speak like you words. Let them do their jobs without any hassle from the text. In about one more sentence here, we\'ll see that the text moves from the right of the image down below the image in seamless transition. Again, letting the do it\'s thang. Mission accomplished!\n\nAnd now for a <em><strong>massively large image</strong></em>. It also has <em><strong>no alignment</strong></em>.\n\n[caption id="attachment_907" align="alignnone" width="1200"]<img class=" wp-image-907" title="Image Alignment 1200x400" src="https://demos.famethemes.com/onepress/wp-content/uploads/2013/03/image-alignment-1200x4002.jpg" alt="Image Alignment 1200x400" width="1200" height="400" /> Massive image comment for your eyeballs.[/caption]\n\nThe image above, though 1200px wide, should not overflow the content area. It should remain contained with no visible disruption to the flow of content.\n\n[caption id="attachment_905" align="alignright" width="300"]<img class="size-full wp-image-905 " title="Image Alignment 300x200" src="https://demos.famethemes.com/onepress/wp-content/uploads/2013/03/image-alignment-300x200.jpg" alt="Image Alignment 300x200" width="300" height="200" /> Feels good to be right all the time.[/caption]\n\nAnd now we\'re going to shift things to the <em><strong>right align</strong></em>. Again, there should be plenty of room above, below, and to the left of the image. Just look at him there... Hey guy! Way to rock that right side. I don\'t care what the left aligned image says, you look great. Don\'t let anyone else tell you differently.\n\nIn just a bit here, you should see the text start to wrap below the right aligned image and settle in nicely. There should still be plenty of room and everything should be sitting pretty. Yeah... Just like that. It never felt so good to be right.\n\nAnd that\'s a wrap, yo! You survived the tumultuous waters of alignment. Image alignment achievement unlocked!', 'Markup: Image Alignment', '', 'publish', 'closed', 'closed', '', 'markup-image-alignment', '', '', '2013-01-10 20:15:40', '2013-01-11 03:15:40', '', 0, 'http://wptest.io/demo/?p=903', 0, 'post', '', 0),
(1179, 2, '2016-02-26 02:23:20', '2016-02-26 02:23:20', '', 'business1', '', 'inherit', 'open', 'closed', '', 'business1', '', '', '2016-02-26 02:23:20', '2016-02-26 02:23:20', '', 0, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/02/business1.jpg', 0, 'attachment', 'image/jpeg', 0),
(1245, 2, '2016-10-05 09:12:09', '2016-10-05 09:12:09', '[gallery ids="1246,36,35,34,1179,1247,1248,1249,15,1250"]', 'Gallery', '', 'trash', 'closed', 'closed', '', 'gallery__trashed', '', '', '2019-02-20 12:51:50', '2019-02-20 15:51:50', '', 0, 'http://demos.famethemes.com/onepress/?page_id=1245', 0, 'page', '', 0),
(1246, 2, '2016-10-05 09:21:20', '2016-10-05 09:21:20', '', 'pexels-photo-171292', '', 'inherit', 'open', 'closed', '', 'pexels-photo-171292', '', '', '2019-02-20 12:24:48', '2019-02-20 15:24:48', '', 1245, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/10/pexels-photo-171292.jpeg', 0, 'attachment', 'image/jpeg', 0),
(1247, 2, '2016-10-05 09:21:24', '2016-10-05 09:21:24', '', 'pexels-photo-186077', '', 'inherit', 'open', 'closed', '', 'pexels-photo-186077', '', '', '2019-02-20 12:24:48', '2019-02-20 15:24:48', '', 1245, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/10/pexels-photo-186077.jpeg', 0, 'attachment', 'image/jpeg', 0),
(1248, 2, '2016-10-05 09:21:26', '2016-10-05 09:21:26', '', 'pexels-photo-66463', '', 'inherit', 'open', 'closed', '', 'pexels-photo-66463', '', '', '2019-02-20 12:24:48', '2019-02-20 15:24:48', '', 1245, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/10/pexels-photo-66463.jpeg', 0, 'attachment', 'image/jpeg', 0),
(1249, 2, '2016-10-05 09:21:27', '2016-10-05 09:21:27', '', 'pexels-photo-106344', '', 'inherit', 'open', 'closed', '', 'pexels-photo-106344', '', '', '2019-02-20 12:24:48', '2019-02-20 15:24:48', '', 1245, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/10/pexels-photo-106344.jpeg', 0, 'attachment', 'image/jpeg', 0),
(1250, 2, '2016-10-05 09:23:33', '2016-10-05 09:23:33', '', 'macbook-laptop-ipad-apple-38519', '', 'inherit', 'open', 'closed', '', 'macbook-laptop-ipad-apple-38519', '', '', '2019-02-20 12:24:48', '2019-02-20 15:24:48', '', 1245, 'http://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2016/10/macbook-laptop-ipad-apple-38519.jpeg', 0, 'attachment', 'image/jpeg', 0),
(1340, 2, '2017-11-30 09:13:11', '2017-11-30 09:13:11', '', 'onepress2_hero', '', 'inherit', 'open', 'closed', '', 'onepress2_hero', '', '', '2017-11-30 09:13:11', '2017-11-30 09:13:11', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/11/onepress2_hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(1343, 2, '2017-12-01 08:49:55', '2017-12-01 08:49:55', '', '25388715424_65480dbf18_k.jpg', '', 'inherit', 'open', 'closed', '', '25388715424_65480dbf18_k-jpg', '', '', '2017-12-01 08:49:55', '2017-12-01 08:49:55', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/25388715424_65480dbf18_k.jpg', 0, 'attachment', 'image/jpeg', 0),
(1344, 2, '2017-12-01 08:49:56', '2017-12-01 08:49:56', '', 'zusman.png', '', 'inherit', 'open', 'closed', '', 'zusman-png', '', '', '2017-12-01 08:49:56', '2017-12-01 08:49:56', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/zusman.png', 0, 'attachment', 'image/png', 0),
(1345, 2, '2017-12-01 08:49:56', '2017-12-01 08:49:56', '', 'zing.png', '', 'inherit', 'open', 'closed', '', 'zing-png', '', '', '2017-12-01 08:49:56', '2017-12-01 08:49:56', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/zing.png', 0, 'attachment', 'image/png', 0),
(1346, 2, '2017-12-01 08:49:56', '2017-12-01 08:49:56', '', 'madrin.png', '', 'inherit', 'open', 'closed', '', 'madrin-png', '', '', '2017-12-01 08:49:56', '2017-12-01 08:49:56', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/madrin.png', 0, 'attachment', 'image/png', 0),
(1347, 2, '2017-12-01 08:49:56', '2017-12-01 08:49:56', '', 'armond-1.png', '', 'inherit', 'open', 'closed', '', 'armond-1-png', '', '', '2017-12-01 08:49:56', '2017-12-01 08:49:56', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/armond-1.png', 0, 'attachment', 'image/png', 0),
(1348, 2, '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 'x.venox_.png', '', 'inherit', 'open', 'closed', '', 'x-venox_-png', '', '', '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/x.venox_.png', 0, 'attachment', 'image/png', 0),
(1349, 2, '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 'geo.png', '', 'inherit', 'open', 'closed', '', 'geo-png', '', '', '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/geo.png', 0, 'attachment', 'image/png', 0),
(1350, 2, '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 'fifthflour.png', '', 'inherit', 'open', 'closed', '', 'fifthflour-png', '', '', '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/fifthflour.png', 0, 'attachment', 'image/png', 0),
(1351, 2, '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 'larozse.png', '', 'inherit', 'open', 'closed', '', 'larozse-png', '', '', '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/larozse.png', 0, 'attachment', 'image/png', 0),
(1352, 2, '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 'bolier.png', '', 'inherit', 'open', 'closed', '', 'bolier-png', '', '', '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/bolier.png', 0, 'attachment', 'image/png', 0),
(1353, 2, '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 'mapmaster.png', '', 'inherit', 'open', 'closed', '', 'mapmaster-png', '', '', '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/mapmaster.png', 0, 'attachment', 'image/png', 0),
(1354, 2, '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 'darkside.png', '', 'inherit', 'open', 'closed', '', 'darkside-png', '', '', '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/darkside.png', 0, 'attachment', 'image/png', 0),
(1355, 2, '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 'digit.png', '', 'inherit', 'open', 'closed', '', 'digit-png', '', '', '2017-12-01 08:49:57', '2017-12-01 08:49:57', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/digit.png', 0, 'attachment', 'image/png', 0),
(1356, 2, '2017-12-01 08:49:58', '2017-12-01 08:49:58', '', 'col.png', '', 'inherit', 'open', 'closed', '', 'col-png', '', '', '2017-12-01 08:49:58', '2017-12-01 08:49:58', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/col.png', 0, 'attachment', 'image/png', 0),
(1357, 2, '2017-12-01 08:49:58', '2017-12-01 08:49:58', '', '25497478040_140ce47f31_k.jpg', '', 'inherit', 'open', 'closed', '', '25497478040_140ce47f31_k-jpg', '', '', '2017-12-01 08:49:58', '2017-12-01 08:49:58', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/25497478040_140ce47f31_k.jpg', 0, 'attachment', 'image/jpeg', 0),
(1358, 2, '2017-12-01 08:49:58', '2017-12-01 08:49:58', '', '1470399607_Illustration.png', '', 'inherit', 'open', 'closed', '', '1470399607_illustration-png', '', '', '2017-12-01 08:49:58', '2017-12-01 08:49:58', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399607_Illustration.png', 0, 'attachment', 'image/png', 0),
(1359, 2, '2017-12-01 08:49:58', '2017-12-01 08:49:58', '', '1470399614_Social_Media.png', '', 'inherit', 'open', 'closed', '', '1470399614_social_media-png', '', '', '2017-12-01 08:49:58', '2017-12-01 08:49:58', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399614_Social_Media.png', 0, 'attachment', 'image/png', 0),
(1360, 2, '2017-12-01 08:49:59', '2017-12-01 08:49:59', '', '1470399594_Web_Design.png', '', 'inherit', 'open', 'closed', '', '1470399594_web_design-png', '', '', '2017-12-01 08:49:59', '2017-12-01 08:49:59', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399594_Web_Design.png', 0, 'attachment', 'image/png', 0),
(1361, 2, '2017-12-01 08:49:59', '2017-12-01 08:49:59', '', '1470399662_Marketing.png', '', 'inherit', 'open', 'closed', '', '1470399662_marketing-png', '', '', '2017-12-01 08:49:59', '2017-12-01 08:49:59', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399662_Marketing.png', 0, 'attachment', 'image/png', 0),
(1362, 2, '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', '1470399671_SEO.png', '', 'inherit', 'open', 'closed', '', '1470399671_seo-png', '', '', '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399671_SEO.png', 0, 'attachment', 'image/png', 0),
(1363, 2, '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', '1470399715_E-Commerce.png', '', 'inherit', 'open', 'closed', '', '1470399715_e-commerce-png', '', '', '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399715_E-Commerce.png', 0, 'attachment', 'image/png', 0),
(1364, 2, '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', '1470399674_App_Development.png', '', 'inherit', 'open', 'closed', '', '1470399674_app_development-png', '', '', '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399674_App_Development.png', 0, 'attachment', 'image/png', 0),
(1365, 2, '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', '1470399667_Newsletter.png', '', 'inherit', 'open', 'closed', '', '1470399667_newsletter-png', '', '', '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399667_Newsletter.png', 0, 'attachment', 'image/png', 0),
(1366, 2, '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', '1470399656_Branding.png', '', 'inherit', 'open', 'closed', '', '1470399656_branding-png', '', '', '2017-12-01 08:50:00', '2017-12-01 08:50:00', '', 0, 'https://demos.famethemes.com/onepress/wp-content/uploads/sites/17/2017/12/1470399656_Branding.png', 0, 'attachment', 'image/png', 0),
(1367, 2, '2016-02-12 07:54:41', '2016-02-12 07:54:41', '<!-- wp:paragraph -->\n<p>OOOOOOOOOOOE</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-02-20 12:33:42', '2019-02-20 15:33:42', '', 0, 'http://demos.famethemes.com/onepress/?page_id=4', 0, 'page', '', 0),
(1368, 2, '2016-02-12 07:55:23', '2016-02-12 07:55:23', '', 'Notícias', '', 'publish', 'closed', 'closed', '', 'noticias', '', '', '2019-02-20 12:32:04', '2019-02-20 15:32:04', '', 0, 'http://demos.famethemes.com/onepress/?page_id=5', 0, 'page', '', 0),
(1431, 2, '2018-10-16 05:01:00', '2018-10-16 05:01:00', '{"id":"1431","field_id":3,"fields":[{"id":"0","type":"name","label":"Name","format":"first-last","description":"","required":"1","size":"medium","simple_placeholder":"","simple_default":"","first_placeholder":"","first_default":"","middle_placeholder":"","middle_default":"","last_placeholder":"","last_default":"","css":""},{"id":"1","type":"email","label":"Email","description":"","required":"1","size":"medium","placeholder":"","confirmation_placeholder":"","default_value":"","css":""},{"id":"2","type":"textarea","label":"Comment or Message","description":"","required":"1","size":"medium","placeholder":"","css":""}],"settings":{"form_title":"Simple Contact Form","form_desc":"","form_class":"","submit_text":"Submit","submit_text_processing":"Sending...","submit_class":"","honeypot":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Entry: Simple Contact Form","sender_name":"{field_id="0"}","sender_address":"{admin_email}","replyto":"{field_id="1"}","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"<p>Thanks for contacting us! We will be in touch with you shortly.</p>","message_scroll":"1","page":"1183","redirect":""}}},"meta":{"template":"contact"}}', 'Simple Contact Form', '', 'publish', 'closed', 'closed', '', 'simple-contact-form', '', '', '2018-10-16 05:01:00', '2018-10-16 05:01:00', '', 0, 'https://demos.famethemes.com/onepress/?post_type=wpforms&amp;p=1431', 0, 'wpforms', '', 0),
(1432, 1, '2019-02-20 12:24:49', '2019-02-20 15:24:49', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2019-02-20 12:24:49', '2019-02-20 15:24:49', '', 0, 'http://senhorasesperancaeamor.dev.br/wp-content/uploads/2019/02/logo.png', 0, 'attachment', 'image/png', 0),
(1447, 1, '2019-02-20 12:32:04', '2019-02-20 15:32:04', '', 'Notícias', '', 'inherit', 'closed', 'closed', '', '1368-revision-v1', '', '', '2019-02-20 12:32:04', '2019-02-20 15:32:04', '', 1368, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1368-revision-v1/', 0, 'revision', '', 0),
(1448, 1, '2019-02-20 12:32:30', '2019-02-20 15:32:30', '<!-- wp:paragraph -->\n<p>OOOOOOOOOOOE</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '1367-revision-v1', '', '', '2019-02-20 12:32:30', '2019-02-20 15:32:30', '', 1367, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1367-revision-v1/', 0, 'revision', '', 0),
(1450, 1, '2019-02-20 12:38:40', '0000-00-00 00:00:00', '{"onepress::onepress_about_boxes":{"value":"\\"_items%5B0%5D%5Bcontent_page%5D=1367&_items%5B1%5D%5Bcontent_page%5D=0\\"","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:38:40"}}', '', '', 'auto-draft', 'closed', 'closed', '', '91854c62-1a50-4328-b193-5228f8f9e5ec', '', '', '2019-02-20 12:38:40', '0000-00-00 00:00:00', '', 0, 'http://senhorasesperancaeamor.dev.br/?p=1450', 0, 'customize_changeset', '', 0),
(1451, 1, '2019-02-20 12:39:47', '2019-02-20 15:39:47', '{"senhoras::onepress_about_boxes":{"value":"\\"_items%5B0%5D%5Bcontent_page%5D=1367\\"","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:39:47"}}', '', '', 'trash', 'closed', 'closed', '', '6747a24b-872f-4797-9724-56f61417a47f', '', '', '2019-02-20 12:39:47', '2019-02-20 15:39:47', '', 0, 'http://senhorasesperancaeamor.dev.br/2019/02/20/6747a24b-872f-4797-9724-56f61417a47f/', 0, 'customize_changeset', '', 0),
(1452, 1, '2019-02-20 12:40:57', '2019-02-20 15:40:57', '{"senhoras::onepress_about_id":{"value":"sobre","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:40:57"},"senhoras::onepress_about_title":{"value":"Sobre o Grupo","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:40:57"},"senhoras::onepress_about_subtitle":{"value":"Conhe\\u00e7a","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:40:57"}}', '', '', 'trash', 'closed', 'closed', '', '1942bb25-9a3c-480c-8db4-1b3b7338385c', '', '', '2019-02-20 12:40:57', '2019-02-20 15:40:57', '', 0, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1942bb25-9a3c-480c-8db4-1b3b7338385c/', 0, 'customize_changeset', '', 0),
(1453, 1, '2019-02-20 12:43:19', '2019-02-20 15:43:19', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"><strong>Conteúdo dentro de - > Páginas -> SOBRE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>O Grupo de Senhoras Esperança e Amor é uma entidade sem fins lucrativos que nasceu em outubro de 2002, quando Nelci Guaripuna dos Santos, presidente do grupo, passou por um problema de saúde e se deparou com a luta do outro, decidindo ajudar aos que mais precisavam em sua comunidade, a Vila Aparecida. A&nbsp; primeira ação do projeto foi uma distribuição de sopas gratuitas para a população com fundos arrecadados, atendendo cerca de 200 pessoas.  Atualmente, o grupo de senhoras atua para auxílio de pessoas que passam por alguma dificuldade não só na Vila Aparecida, mas em comunidades vizinhas, mobilizando entidades privadas e sociedade para arrecadação dessas necessidades da pessoa, como remédios, fraldas, material escolar, entre outros. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[1250,1249,1248,1247],"columns":4} -->\n<ul class="wp-block-gallery columns-4 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/macbook-laptop-ipad-apple-38519-1024x680.jpeg" alt="" data-id="1250" data-link="http://senhorasesperancaeamor.dev.br/gallery/macbook-laptop-ipad-apple-38519/" class="wp-image-1250"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-106344-1024x683.jpeg" alt="" data-id="1249" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-106344/" class="wp-image-1249"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-66463-1024x682.jpeg" alt="" data-id="1248" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-66463/" class="wp-image-1248"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-186077-1024x698.jpeg" alt="" data-id="1247" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-186077/" class="wp-image-1247"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2019-02-20 12:52:10', '2019-02-20 15:52:10', '', 0, 'http://senhorasesperancaeamor.dev.br/?page_id=1453', 0, 'page', '', 0),
(1454, 1, '2019-02-20 12:42:09', '2019-02-20 15:42:09', '{"senhoras::onepress_about_boxes":{"value":"\\"_items%5B0%5D%5Bcontent_page%5D=1367&_items%5B0%5D%5Bhide_title%5D=1&_items%5B0%5D%5Benable_link%5D=1\\"","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:42:09"}}', '', '', 'trash', 'closed', 'closed', '', 'bb9e3fd0-9b92-4d3b-9c0b-9bd163d9637d', '', '', '2019-02-20 12:42:09', '2019-02-20 15:42:09', '', 0, 'http://senhorasesperancaeamor.dev.br/2019/02/20/bb9e3fd0-9b92-4d3b-9c0b-9bd163d9637d/', 0, 'customize_changeset', '', 0),
(1455, 1, '2019-02-20 12:43:19', '2019-02-20 15:43:19', '<!-- wp:paragraph -->\n<p>Conteúdo dentro de - > Páginas -> SOBRE</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '1453-revision-v1', '', '', '2019-02-20 12:43:19', '2019-02-20 15:43:19', '', 1453, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1453-revision-v1/', 0, 'revision', '', 0),
(1456, 1, '2019-02-20 12:43:40', '2019-02-20 15:43:40', '{"senhoras::onepress_about_boxes":{"value":"\\"_items%5B0%5D%5Bcontent_page%5D=1453&_items%5B0%5D%5Bhide_title%5D=1&_items%5B0%5D%5Benable_link%5D=1\\"","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:43:40"}}', '', '', 'trash', 'closed', 'closed', '', '68a4267a-17f6-4a7c-ac82-ca82703b5052', '', '', '2019-02-20 12:43:40', '2019-02-20 15:43:40', '', 0, 'http://senhorasesperancaeamor.dev.br/2019/02/20/68a4267a-17f6-4a7c-ac82-ca82703b5052/', 0, 'customize_changeset', '', 0),
(1457, 1, '2019-02-20 12:54:29', '2019-02-20 15:54:29', '{"senhoras::onepress_services_id":{"value":"servicos","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:44:02"},"senhoras::onepress_services_title":{"value":"","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:49:16"},"senhoras::onepress_services_disable":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:53:15"},"senhoras::onepress_videolightbox_disable":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:53:15"},"senhoras::onepress_counter_disable":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:53:15"},"senhoras::onepress_team_disable":{"value":true,"type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:53:15"},"senhoras::onepress_news_id":{"value":"noticias","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:54:15"},"senhoras::onepress_news_title":{"value":"\\u00daltimas Not\\u00edcias","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:54:15"},"senhoras::onepress_news_subtitle":{"value":"Confira as","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:54:15"}}', '', '', 'trash', 'closed', 'closed', '', '4199e2fa-77a3-4c44-8e40-fd8864864ca5', '', '', '2019-02-20 12:54:29', '2019-02-20 15:54:29', '', 0, 'http://senhorasesperancaeamor.dev.br/?p=1457', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wpav_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1461, 1, '2019-02-20 12:45:52', '2019-02-20 15:45:52', '<!-- wp:paragraph -->\n<p>O Grupo de Senhoras Esperança e Amor é uma entidade sem fins\nlucrativos que nasceu em outubro de 2002, quando Nelci Guaripuna dos Santos,\npresidente do grupo, passou por um problema de saúde e se deparou com a luta do\noutro, decidindo ajudar aos que mais precisavam em sua comunidade, a Vila\nAparecida. A&nbsp; primeira ação do projeto\nfoi uma distribuição de sopas gratuitas para a população com fundos\narrecadados, atendendo cerca de 200 pessoas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; Atualmente, o grupo\nde senhoras atua para auxílio de pessoas que passam por alguma dificuldade não\nsó na Vila Aparecida, mas em comunidades vizinhas, mobilizando entidades\nprivadas e sociedade para arrecadação dessas necessidades da pessoa, como\nremédios, fraldas, material escolar, entre outros. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Conteúdo dentro de - > Páginas -> SOBRE</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '1453-revision-v1', '', '', '2019-02-20 12:45:52', '2019-02-20 15:45:52', '', 1453, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1453-revision-v1/', 0, 'revision', '', 0),
(1462, 1, '2019-02-20 12:46:35', '2019-02-20 15:46:35', '<!-- wp:paragraph -->\n<p>O Grupo de Senhoras Esperança e Amor é uma entidade sem fins lucrativos que nasceu em outubro de 2002, quando Nelci Guaripuna dos Santos, presidente do grupo, passou por um problema de saúde e se deparou com a luta do outro, decidindo ajudar aos que mais precisavam em sua comunidade, a Vila Aparecida. A  primeira ação do projeto foi uma distribuição de sopas gratuitas para a população com fundos arrecadados, atendendo cerca de 200 pessoas.  Atualmente, o grupo de senhoras atua para auxílio de pessoas que passam por alguma dificuldade não só na Vila Aparecida, mas em comunidades vizinhas, mobilizando entidades privadas e sociedade para arrecadação dessas necessidades da pessoa, como remédios, fraldas, material escolar, entre outros. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Conteúdo dentro de - > Páginas -> SOBRE</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '1453-revision-v1', '', '', '2019-02-20 12:46:35', '2019-02-20 15:46:35', '', 1453, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1453-revision-v1/', 0, 'revision', '', 0),
(1464, 1, '2019-02-20 12:51:15', '2019-02-20 15:51:15', '<!-- wp:paragraph -->\n<p>O Grupo de Senhoras Esperança e Amor é uma entidade sem fins lucrativos que nasceu em outubro de 2002, quando Nelci Guaripuna dos Santos, presidente do grupo, passou por um problema de saúde e se deparou com a luta do outro, decidindo ajudar aos que mais precisavam em sua comunidade, a Vila Aparecida. A&nbsp; primeira ação do projeto foi uma distribuição de sopas gratuitas para a população com fundos arrecadados, atendendo cerca de 200 pessoas.  Atualmente, o grupo de senhoras atua para auxílio de pessoas que passam por alguma dificuldade não só na Vila Aparecida, mas em comunidades vizinhas, mobilizando entidades privadas e sociedade para arrecadação dessas necessidades da pessoa, como remédios, fraldas, material escolar, entre outros. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[1250,1249,1248,1247],"columns":4} -->\n<ul class="wp-block-gallery columns-4 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/macbook-laptop-ipad-apple-38519-1024x680.jpeg" alt="" data-id="1250" data-link="http://senhorasesperancaeamor.dev.br/gallery/macbook-laptop-ipad-apple-38519/" class="wp-image-1250"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-106344-1024x683.jpeg" alt="" data-id="1249" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-106344/" class="wp-image-1249"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-66463-1024x682.jpeg" alt="" data-id="1248" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-66463/" class="wp-image-1248"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-186077-1024x698.jpeg" alt="" data-id="1247" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-186077/" class="wp-image-1247"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>Conteúdo dentro de - &gt; Páginas -&gt; SOBRE</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '1453-revision-v1', '', '', '2019-02-20 12:51:15', '2019-02-20 15:51:15', '', 1453, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1453-revision-v1/', 0, 'revision', '', 0),
(1465, 1, '2019-02-20 12:51:39', '2019-02-20 15:51:39', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href="http://senhorasesperancaeamor.dev.br/wp-admin/">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-20 12:51:39', '2019-02-20 15:51:39', '', 2, 'http://senhorasesperancaeamor.dev.br/2019/02/20/2-revision-v1/', 0, 'revision', '', 0),
(1466, 1, '2019-02-20 12:51:50', '2019-02-20 15:51:50', '[gallery ids="1246,36,35,34,1179,1247,1248,1249,15,1250"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '1245-revision-v1', '', '', '2019-02-20 12:51:50', '2019-02-20 15:51:50', '', 1245, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1245-revision-v1/', 0, 'revision', '', 0),
(1467, 1, '2019-02-20 12:52:09', '2019-02-20 15:52:09', '<!-- wp:paragraph {"align":"center"} -->\n<p style="text-align:center"><strong>Conteúdo dentro de - > Páginas -> SOBRE</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>O Grupo de Senhoras Esperança e Amor é uma entidade sem fins lucrativos que nasceu em outubro de 2002, quando Nelci Guaripuna dos Santos, presidente do grupo, passou por um problema de saúde e se deparou com a luta do outro, decidindo ajudar aos que mais precisavam em sua comunidade, a Vila Aparecida. A&nbsp; primeira ação do projeto foi uma distribuição de sopas gratuitas para a população com fundos arrecadados, atendendo cerca de 200 pessoas.  Atualmente, o grupo de senhoras atua para auxílio de pessoas que passam por alguma dificuldade não só na Vila Aparecida, mas em comunidades vizinhas, mobilizando entidades privadas e sociedade para arrecadação dessas necessidades da pessoa, como remédios, fraldas, material escolar, entre outros. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[1250,1249,1248,1247],"columns":4} -->\n<ul class="wp-block-gallery columns-4 is-cropped"><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/macbook-laptop-ipad-apple-38519-1024x680.jpeg" alt="" data-id="1250" data-link="http://senhorasesperancaeamor.dev.br/gallery/macbook-laptop-ipad-apple-38519/" class="wp-image-1250"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-106344-1024x683.jpeg" alt="" data-id="1249" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-106344/" class="wp-image-1249"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-66463-1024x682.jpeg" alt="" data-id="1248" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-66463/" class="wp-image-1248"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://senhorasesperancaeamor.dev.br/wp-content/uploads/2016/10/pexels-photo-186077-1024x698.jpeg" alt="" data-id="1247" data-link="http://senhorasesperancaeamor.dev.br/gallery/pexels-photo-186077/" class="wp-image-1247"/></figure></li></ul>\n<!-- /wp:gallery -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '1453-revision-v1', '', '', '2019-02-20 12:52:09', '2019-02-20 15:52:09', '', 1453, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1453-revision-v1/', 0, 'revision', '', 0),
(1468, 1, '2019-02-20 12:56:07', '2019-02-20 15:56:07', '{"senhoras::onepress_news_more_text":{"value":"Blog","type":"theme_mod","user_id":1,"date_modified_gmt":"2019-02-20 15:56:07"}}', '', '', 'trash', 'closed', 'closed', '', '0b73e647-6635-4246-8601-4bc3d6d85371', '', '', '2019-02-20 12:56:07', '2019-02-20 15:56:07', '', 0, 'http://senhorasesperancaeamor.dev.br/2019/02/20/0b73e647-6635-4246-8601-4bc3d6d85371/', 0, 'customize_changeset', '', 0),
(1469, 1, '2019-02-20 12:58:01', '2019-02-20 15:58:01', '<!-- wp:html -->\n[wpforms id="1470" title="false" description="false"]\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2019-02-20 12:58:01', '2019-02-20 15:58:01', '', 0, 'http://senhorasesperancaeamor.dev.br/?page_id=1469', 0, 'page', '', 0),
(1470, 1, '2019-02-20 12:57:28', '2019-02-20 15:57:28', '{"id":"1470","field_id":3,"fields":[{"id":"0","type":"name","label":"Name","format":"first-last","description":"","required":"1","size":"medium","simple_placeholder":"","simple_default":"","first_placeholder":"","first_default":"","middle_placeholder":"","middle_default":"","last_placeholder":"","last_default":"","css":""},{"id":"1","type":"email","label":"Email","description":"","required":"1","size":"medium","placeholder":"","confirmation_placeholder":"","default_value":"","css":""},{"id":"2","type":"textarea","label":"Comment or Message","description":"","required":"1","size":"medium","placeholder":"","css":""}],"settings":{"form_title":"Contato","form_desc":"","form_class":"","submit_text":"Submit","submit_text_processing":"Sending...","submit_class":"","honeypot":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Entry: Contato","sender_name":"{field_id=\\"0\\"}","sender_address":"{admin_email}","replyto":"{field_id=\\"1\\"}","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>","message_scroll":"1","page":"1367","redirect":""}}},"meta":{"template":"contact"}}', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2019-02-20 12:57:33', '2019-02-20 15:57:33', '', 0, 'http://senhorasesperancaeamor.dev.br/?post_type=wpforms&#038;p=1470', 0, 'wpforms', '', 0),
(1471, 1, '2019-02-20 12:58:01', '2019-02-20 15:58:01', '<!-- wp:html -->\n[wpforms id="1470" title="false" description="false"]\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '1469-revision-v1', '', '', '2019-02-20 12:58:01', '2019-02-20 15:58:01', '', 1469, 'http://senhorasesperancaeamor.dev.br/2019/02/20/1469-revision-v1/', 0, 'revision', '', 0) ;

#
# Fim do conteúdo da tabela `wpav_posts`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_term_relationships` existente
#

DROP TABLE IF EXISTS `wpav_term_relationships`;


#
# Estrutura da tabela `wpav_term_relationships`
#

CREATE TABLE `wpav_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_term_relationships`
#
INSERT INTO `wpav_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 17, 0),
(31, 17, 0),
(32, 17, 0),
(33, 5, 0),
(33, 7, 0),
(33, 10, 0),
(33, 12, 0),
(33, 13, 0),
(33, 15, 0),
(37, 2, 0),
(37, 4, 0),
(37, 5, 0),
(37, 13, 0),
(1177, 3, 0),
(1177, 5, 0),
(1177, 7, 0),
(1177, 9, 0),
(1177, 10, 0),
(1177, 12, 0),
(1177, 13, 0),
(1177, 14, 0),
(1177, 15, 0) ;

#
# Fim do conteúdo da tabela `wpav_term_relationships`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_term_taxonomy` existente
#

DROP TABLE IF EXISTS `wpav_term_taxonomy`;


#
# Estrutura da tabela `wpav_term_taxonomy`
#

CREATE TABLE `wpav_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_term_taxonomy`
#
INSERT INTO `wpav_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 0),
(7, 7, 'post_tag', '', 0, 2),
(8, 8, 'post_tag', '', 0, 0),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 2),
(11, 11, 'post_tag', '', 0, 0),
(12, 12, 'post_tag', '', 0, 2),
(13, 13, 'post_tag', '', 0, 3),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 2),
(16, 16, 'post_tag', '', 0, 0),
(17, 17, 'nav_menu', '', 0, 3) ;

#
# Fim do conteúdo da tabela `wpav_term_taxonomy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_termmeta` existente
#

DROP TABLE IF EXISTS `wpav_termmeta`;


#
# Estrutura da tabela `wpav_termmeta`
#

CREATE TABLE `wpav_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_termmeta`
#

#
# Fim do conteúdo da tabela `wpav_termmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_terms` existente
#

DROP TABLE IF EXISTS `wpav_terms`;


#
# Estrutura da tabela `wpav_terms`
#

CREATE TABLE `wpav_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_terms`
#
INSERT INTO `wpav_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Apps', 'apps', 0),
(3, 'Markup', 'markup', 0),
(4, 'One Page', 'one-page', 0),
(5, 'Responsive', 'responsive', 0),
(6, 'Uncategorized', 'uncategorized', 0),
(7, 'alignment', 'alignment', 0),
(8, 'alignment', 'alignment-2', 0),
(9, 'captions', 'captions-2', 0),
(10, 'content', 'content', 0),
(11, 'content', 'content-2', 0),
(12, 'css', 'css', 0),
(13, 'export', 'export', 0),
(14, 'image', 'image', 0),
(15, 'markup', 'markup', 0),
(16, 'markup', 'markup-2', 0),
(17, 'Primary', 'primary', 0) ;

#
# Fim do conteúdo da tabela `wpav_terms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_usermeta` existente
#

DROP TABLE IF EXISTS `wpav_usermeta`;


#
# Estrutura da tabela `wpav_usermeta`
#

CREATE TABLE `wpav_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_usermeta`
#
INSERT INTO `wpav_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'senhoras'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpav_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wpav_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:"244f32737be772d7e44e5604a88ea97c0cd34fa525dd187ed7bb3e1ea39c8a6f";a:4:{s:10:"expiration";i:1550847991;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36";s:5:"login";i:1550675191;}}'),
(17, 1, 'wpav_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:3:{i:0;s:27:"wpforms_reports_widget_lite";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 2, 'nickname', 'famedemo'),
(22, 2, 'first_name', 'FameThemes'),
(23, 2, 'last_name', ''),
(24, 2, 'description', 'This user is created while installing demo content. You should delete or modify this user&#8217;s information now.'),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wpav_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(33, 2, 'wpav_user_level', '0'),
(34, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(35, 1, 'wpav_media_library_mode', 'list'),
(36, 1, 'closedpostboxes_page', 'a:1:{i:0;s:22:"onepress_page_settings";}'),
(37, 1, 'metaboxhidden_page', 'a:0:{}'),
(38, 1, 'wpav_user-settings', 'editor=html&libraryContent=browse'),
(39, 1, 'wpav_user-settings-time', '1550677870'),
(40, 1, 'nav_menu_recently_edited', '17'),
(41, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(42, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}') ;

#
# Fim do conteúdo da tabela `wpav_usermeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wpav_users` existente
#

DROP TABLE IF EXISTS `wpav_users`;


#
# Estrutura da tabela `wpav_users`
#

CREATE TABLE `wpav_users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Conteúdo da tabela `wpav_users`
#
INSERT INTO `wpav_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'senhoras', '$P$BrUH/7cAw6cjl7HI7uubpiyMH.vJW./', 'senhoras', 'felipe@code6.com.br', '', '2019-02-20 15:06:22', '', 0, 'senhoras'),
(2, 'famedemo', '$P$BOvGOevvpaOERgGOVwSP.SLaHWWCzb/', 'famedemo', 'contact-demo-email@famethemes.com', '', '2019-02-20 15:22:18', '', 0, 'FameThemes') ;

#
# Fim do conteúdo da tabela `wpav_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

