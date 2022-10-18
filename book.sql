-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2022 at 01:16 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add about', 7, 'add_about'),
(26, 'Can change about', 7, 'change_about'),
(27, 'Can delete about', 7, 'delete_about'),
(28, 'Can view about', 7, 'view_about'),
(29, 'Can add books', 8, 'add_books'),
(30, 'Can change books', 8, 'change_books'),
(31, 'Can delete books', 8, 'delete_books'),
(32, 'Can view books', 8, 'view_books');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'myapp', 'about'),
(8, 'myapp', 'books'),
(6, 'myapp', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-18 05:41:50.903735'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-10-18 05:41:50.945740'),
(3, 'auth', '0001_initial', '2022-10-18 05:41:51.075795'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-10-18 05:41:51.084506'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-10-18 05:41:51.090399'),
(6, 'auth', '0004_alter_user_username_opts', '2022-10-18 05:41:51.096804'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-10-18 05:41:51.106111'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-10-18 05:41:51.110826'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-10-18 05:41:51.118481'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-10-18 05:41:51.132100'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-10-18 05:41:51.143992'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-10-18 05:41:51.163572'),
(13, 'auth', '0011_update_proxy_permissions', '2022-10-18 05:41:51.182226'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-10-18 05:41:51.190253'),
(15, 'myapp', '0001_initial', '2022-10-18 05:41:51.366240'),
(16, 'admin', '0001_initial', '2022-10-18 05:41:51.444366'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-10-18 05:41:51.454536'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-18 05:41:51.464315'),
(19, 'sessions', '0001_initial', '2022-10-18 05:41:51.486626'),
(21, 'myapp', '0002_remove_books_user_id', '2022-10-18 05:42:50.735922'),
(22, 'myapp', '0003_books_user_id', '2022-10-18 06:38:13.362577'),
(23, 'myapp', '0004_alter_books_user_id', '2022-10-18 06:38:13.436901'),
(24, 'myapp', '0005_alter_books_user_id', '2022-10-18 06:38:13.498041'),
(25, 'myapp', '0006_remove_books_user_id', '2022-10-18 06:57:24.173439'),
(26, 'myapp', '0007_remove_user_username', '2022-10-18 10:46:50.832560');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('aeehkkppkv4tmddugxylnwid1kyxxtyy', '.eJxVjDsOwjAQBe_iGln-xJ9Q0nMGa9e7xgHkSHFSIe4OkVJA-2bmvUSCba1p67ykicRZaCVOvyNCfnDbCd2h3WaZ57YuE8pdkQft8joTPy-H-3dQoddvbUMoTEM0zkRLhjU6DUgIRLawd5nYMinPIxYfyqisRafYReWgDJzF-wMn3Dkj:1okkZZ:bDtnMCIJim9ElctPOhVcCh9p0tDxxrIf3kmUvCX1mVk', '2022-11-01 11:15:49.550936'),
('l4o8ws28ntd0bv0lp370mhvhfo6lnjag', '.eJxVjEEKwyAQAP_iuYhr1MUee-8bZFdNTVsUYnIK_XsRcmivM8McItC-lbD3vIYliauYxOWXMcVXrkOkJ9VHk7HVbV1YjkSetst7S_l9O9u_QaFextaT1dY4QvDaT8pbZA_EjsEmZjVp4zUDmqhBOTejQ-Ui44xsAbISny-pjDZ3:1ojZgv:ChpC5vi2ixAY0uB7vm8USRS-OQ8kqyDO3ory2D-TGQo', '2022-10-29 05:26:33.261764');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_about`
--

CREATE TABLE `myapp_about` (
  `id` bigint(20) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myapp_about`
--

INSERT INTO `myapp_about` (`id`, `status`, `content`, `created_at`, `updated_at`) VALUES
(1, NULL, '<h1>&nbsp;</h1>\r\n\r\n<h1>&nbsp;</h1>\r\n\r\n<h1>????????&zwj;?? About Me</h1>\r\n\r\n<h2>As of August 2020, I&#39;ve been a doctor in the UK for two years, and I&#39;m now taking a 1-year sabbatical dfrom Medicine to explore my other interests.</h2>\r\n\r\n<hr />\r\n<h2>What I&#39;m Working On</h2>\r\n\r\n<ol>\r\n	<li>????????&zwj;?? I&#39;m a doctor working in the UK. I studied Medicine for 6 years at Cambridge University, and graduated in 2018.</li>\r\n	<li>???? On my&nbsp;<a href=\"https://www.youtube.com/aliabdaal\" target=\"_blank\">YouTube channel</a>, I make videos about medicine, tech, productivity and lifestyle.&nbsp;<a href=\"https://www.youtube.com/user/Sepharoth64/videos?view=0&amp;sort=p&amp;flow=grid\" target=\"_blank\">Check out my most popular videos</a>.</li>\r\n	<li>???? I write a&nbsp;<a href=\"https://aliabdaal.com/friendzone/\">weekly email newsletter</a>. Each Sunday, I share some thoughts about subjects I&#39;ve been pondering, along with links to books, articles and podcasts that I&#39;ve been enjoying.&nbsp;<a href=\"https://aliabdaal.com/friendzone/\">Check out the previous issues</a>&nbsp;and maybe subscribe ????</li>\r\n	<li>???? My brother and I host a weekly podcast called&nbsp;<em><a href=\"https://aliabdaal.com/podcast/\">Not Overthinking</a></em>. Every Sunday we talk about topics related to &#39;happiness, creativity and the human condition&#39;.</li>\r\n	<li>?? On this website I write articles about&nbsp;<a href=\"https://aliabdaal.com/tag/productivity/\">productivity</a>,&nbsp;<a href=\"https://aliabdaal.com/entrepreneurship/\">entrepreneurship</a>&nbsp;and&nbsp;<a href=\"https://aliabdaal.com/tag/life/\">generic life advice</a>&nbsp;that I&#39;ve found helpful over the years, as well as sharing my&nbsp;<a href=\"https://aliabdaal.com/apps/\">favourites apps</a>&nbsp;and&nbsp;<a href=\"https://aliabdaal.com/tech/\">tech</a>.</li>\r\n</ol>\r\n\r\n<h2>Other Stuff</h2>\r\n\r\n<ol>\r\n	<li>???? I&nbsp;<a href=\"https://aliabdaal.com/learn-coding/\">learned to code</a>&nbsp;aged 12, and worked as a freelance web designer/developer through my teenage years. This funded my World of Warcraft addiction.</li>\r\n	<li>???? At university (2012-2018), I started a company called&nbsp;<a href=\"https://6med.co.uk/\" target=\"_blank\">6med</a>&nbsp;that helps students applying to medical school. We run classroom courses and&nbsp;<a href=\"https://bmat.ninja/\" target=\"_blank\">online question banks</a>&nbsp;for the UCAT, BMAT and interviews. Our products help thousands of students each year, and we give out tens of thousands of pounds in bursaries for students from low-income backgrounds. These days, I advise on high-level strategy, and we&#39;ve got a great team of students who run things day-to-day.</li>\r\n	<li>???? I enjoy playing the piano and guitar, and singing covers of mainstream pop + Disney songs. I sometimes post videos of this on&nbsp;<a href=\"https://instagram.com/aliabdaal\" target=\"_blank\">Instagram</a>, along with various selfies from work, to subtly show-off the fact that I&#39;m a doctor. Please&nbsp;<a href=\"https://instagram.com/aliabdaal\" target=\"_blank\">follow me</a>&nbsp;if that sounds remotely appealing.</li>\r\n</ol>\r\n\r\n<h2>Get in Touch</h2>\r\n\r\n<ol>\r\n	<li><strong>????&nbsp;</strong><a href=\"https://twitter.com/aliabdaal\" target=\"_blank\"><strong>Twitter</strong></a>&nbsp;- If you&#39;ve got a short question or message (&lt;280 characters), please tweet&nbsp;<a href=\"https://twitter.com/aliabdaal\" target=\"_blank\">@AliAbdaal</a>&nbsp;and I&#39;ll get back to you as soon as I can. I also occasionally reply to&nbsp;<a href=\"https://instagram.com/aliabdaal\" target=\"_blank\">Instagram DMs</a>&nbsp;but it&#39;s much more cumbersome to do so (for now).</li>\r\n	<li><strong>????&nbsp;</strong><a href=\"mailto:hi@aliabdaal.com\"><strong>Email</strong></a>&nbsp;- If it&#39;s a longer thing, or you don&#39;t want it to be a public tweet, please email me (hi@aliabdaal.com). I read 100% of emails but there&#39;s only enough time in the day to reply to around 30%. If you reply to my&nbsp;<a href=\"https://aliabdaal.com/friendzone/\">weekly Sunday newsletter</a>&nbsp;with a specific question, the chances I&#39;ll reply are much higher, as I like to spend Sundays doing chill stuff like replying to emails.</li>\r\n</ol>', '2022-10-14 10:19:47.907209', '2022-10-14 10:19:47.907209');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_books`
--

CREATE TABLE `myapp_books` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myapp_books`
--

INSERT INTO `myapp_books` (`id`, `title`, `summary`, `image`, `description`, `status`, `created_at`, `updated_at`, `content`) VALUES
(6, 'Die With Zero', 'Summary With Notes and Highlights', 'Screenshot_from_2022-09-01_12-18-14_b2VjXE1.png', 'A practical guide to getting the most out of your money – and your life. Including highlights, recommendations, and a full summary of the book.', 1, '2022-10-14 12:41:16.600971', '2022-10-14 12:41:16.600971', '<h1>???? The Book in 3 Sentences</h1>\r\n\r\n<ol>\r\n	<li>Aim to have roughly $0 left in your bank account when you die &ndash; otherwise you&rsquo;ve saved too much.</li>\r\n	<li>Money is a resource that helps you live your best life &ndash; not an end in itself.</li>\r\n	<li>Invest in experiences when you&rsquo;re young, to get compounding returns on your memories.</li>\r\n</ol>\r\n\r\n<h1>???? Impressions</h1>\r\n\r\n<p><em>Die With Zero</em>&nbsp;is a practical guide for getting the most out of your money, and your short time on earth. It helped me realise that money is only as valuable as the life experiences you buy with it. Spend your life obsessing about your bank balance, and you&rsquo;ve missed the point.</p>\r\n\r\n<h2>???? How I Discovered It</h2>\r\n\r\n<p>The book came out mid-2020. I&nbsp;<em>think</em>&nbsp;I came across it in my friend&nbsp;<a href=\"https://twitter.com/khemaridh?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor\" target=\"_blank\">Khe Hy&rsquo;s</a>&nbsp;newsletter&nbsp;<a href=\"https://radreads.co/die-with-zero/\" target=\"_blank\">Rad Reads</a>.</p>\r\n\r\n<h2>???? Who Should Read It?</h2>\r\n\r\n<p><em>Die With Zero</em>&nbsp;is definitely for people who have a decent income, some financial security, and have already looked into saving up. Also for young people planning their long-term future.</p>\r\n\r\n<p>It doesn&rsquo;t apply to:</p>\r\n\r\n<p>????&nbsp;<strong>Big Spenders</strong>&nbsp;- people who are a bit YOLO and spend&nbsp;<strong>all</strong>&nbsp;their money on fun stuff. If you&rsquo;re in this category, Bill would say: it&rsquo;s great that you&rsquo;re enjoying life. But you need to save up, to avoid a stressful retirement.</p>\r\n\r\n<p>?&nbsp;<strong>People with no disposable income</strong>&nbsp;- This book is definitely not aimed at people who are only making enough money to live on. If you&rsquo;re in this category, then by definition you need to spend your money right now just to survive, with almost nothing left over. Like Bill says: &lsquo;...people in poverty are probably already doing all they can to get the most out of their money and their life.&rsquo; In that case, the book I&rsquo;d recommend is&nbsp;<a href=\"https://www.youtube.com/watch?v=Gx2vyi4JcV0\" target=\"_blank\">The Millionaire Fast Lane</a>&nbsp;by MJ DeMarco.</p>\r\n\r\n<h1>?? How the Book Changed Me</h1>\r\n\r\n<ul>\r\n	<li>I used to think that spending money on experiences and things in my 20&rsquo;s was a bit frivolous. Shouldn&rsquo;t I put it all in the S&amp;P 500, to get compounding interest?&nbsp;<em>Die With Zero</em>&nbsp;made me realise that&nbsp;<em>not</em>&nbsp;having those experiences when I&rsquo;m young is way more wasteful.</li>\r\n	<li>I now think of money as a tool for getting things I actually care about, not as an end in itself.</li>\r\n	<li>I&rsquo;ve started to notice that being money-focused stops me from asking &lsquo;what experiences do I want to have in my life&rsquo;?</li>\r\n</ul>\r\n\r\n<h1>?? My Top 3 Quotes</h1>\r\n\r\n<ul>\r\n	<li>&ldquo;The sad truth is that too many people delay gratification for too long, or indefinitely. They put off what they want to do until it&rsquo;s too late, saving money for experiences they will never enjoy.&rdquo;</li>\r\n	<li>&ldquo;When the end is near, we suddenly start thinking, What the hell am I doing? Why did I wait this long? Until then, most of us go through life as if we had all the time in the world.&rdquo;</li>\r\n	<li>&ldquo;We all get one ride on this roller coaster of life. Let&rsquo;s start thinking about how to make it the most exciting, exhilarating, and satisfying ride it can be.&rdquo;</li>\r\n</ul>\r\n\r\n<h1>???? Summary + Notes</h1>\r\n\r\n<p>&ldquo;If you&rsquo;ve got any money left in your bank account by the time you die, you&rsquo;ve done something wrong&rdquo;.</p>\r\n\r\n<p>That&rsquo;s the core message of this book. And it&rsquo;s pretty controversial. But I think Bill backs it up.</p>\r\n\r\n<p>His first argument is that the money we earn represents life energy.</p>\r\n\r\n<h2>????&nbsp;<strong>Money = Life Energy</strong></h2>\r\n\r\n<p>We all need to make and spend money to survive - buy food, pay rent, cover the bills.</p>\r\n\r\n<p>Once we&rsquo;ve covered basic expenses, we use our leftover time and money to buy life experiences like going travelling, reading books, going to the cinema, etc.</p>\r\n\r\n<p>Beyond basic survival, life is about having fulfilling, meaningful experiences. Maslow&rsquo;s Hierarchy of Needs illustrates the different levels pretty well:</p>\r\n\r\n<p><img alt=\"Maslow Hierarchy\" src=\"https://aliabdaal.com/content/images/2022/08/Maslows-Hierarchy-of-Needs.jpg\" style=\"height:1052px; width:2000px\" /></p>\r\n\r\n<p>Now, in an ideal world we&rsquo;d directly trade in our life energy (in the form of work) for fulfilling experiences. But in the real world, money is the middleman. We need to trade in life energy for&nbsp;<em>money</em>, so we can:</p>\r\n\r\n<p>a) survive</p>\r\n\r\n<p>b) afford fulfilling experiences.</p>\r\n\r\n<p>Bill argues that most people focus way too much on saving money. Even as they get older, they carry on trading in their valuable time, all for cash&nbsp;<em>they&rsquo;ll never spend</em>.</p>\r\n\r\n<p>Let&rsquo;s say you die at the age of 85 with $10k left in the bank. That money represents two things:</p>\r\n\r\n<ol>\r\n	<li>The extra several months you worked to earn that $10k</li>\r\n	<li>All the experiences that you didn&rsquo;t spend that money on: holidays, amazing meals, or (maybe the most valuable thing) a few extra months of retirement.</li>\r\n</ol>\r\n\r\n<p>Bill would say that all the life energy you traded has basically been wasted. You sacrificed so much of your precious time to get it, and now it&rsquo;s just gathering dust.</p>\r\n\r\n<p>The antidote for most people, says Bill, is to spend more money when you&rsquo;re young.</p>\r\n\r\n<h2>???? 1. Why You Should Save Less</h2>\r\n\r\n<p>There are three main reasons for saving less, especially when we&rsquo;re young. Increasing Earning Power, Memory Dividends, and Old Age.</p>\r\n\r\n<p>Let&rsquo;s break those down.</p>\r\n\r\n<h3><strong><strong>???? Reason 1: Increasing Earning Power</strong></strong></h3>\r\n\r\n<p>The first reason for investing in experiences early is that our earning power generally increases as we get older. So what seems like a big chunk of money when we&rsquo;re 20 years old is much less significant when we&rsquo;re 40 years old with a house, some kids, an established career, and a lot more money coming in.</p>\r\n\r\n<p><img alt=\"Earning power and happiness levels graph\" src=\"https://aliabdaal.com/content/images/2022/08/Earning-Power-and-Happiness.png\" style=\"height:1500px; width:2000px\" /></p>\r\n\r\n<p>$20 buys you less and less happiness, because you take the small things for granted (food, cinema tickets, books) and start focusing on big-money things like a new car, or fixing up your house.</p>\r\n\r\n<p>So not doing something relatively cheap when you&rsquo;re 18 years old to save money is like taking $10 from your kid&rsquo;s pocket money to pay rent. It makes no difference to the adult, but it&rsquo;ll make the kid miserable ????</p>\r\n\r\n<p>So don&rsquo;t obsess about saving $10 here and there when you&rsquo;re young. You&rsquo;ll get way more enjoyment from spending that money right now than in 30 years&rsquo; time.</p>'),
(11, 'sapna books', 'sapna booksapna booksapna booksapna booksapna book', '1_1_j7NDsAT.jpg', 'sapna booksapna booksapna booksapna book', 1, '2022-10-14 13:29:39.166857', '2022-10-14 13:29:39.166857', '<p>sapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna booksapna book<img alt=\"\" src=\"/2022/10/14/desktop-1_Ml2TaV7.jpg\" style=\"height:1024px; width:1440px\" /></p>');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_user`
--

CREATE TABLE `myapp_user` (
  `id` bigint(20) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `myapp_user`
--

INSERT INTO `myapp_user` (`id`, `last_login`, `is_superuser`, `email`, `password`, `is_staff`, `is_active`, `created_at`, `updated_at`) VALUES
(10, '2022-10-18 11:15:49.548151', 1, 'admin@gmail.com', 'pbkdf2_sha256$390000$tqvIDsxJQzHtIfYeMUqp4V$oc74rRtIubSzIKyBxDzfqIpeJiowkXIkrWzVWom1Tzw=', 1, 1, '2022-10-18 10:50:34.161280', '2022-10-18 10:50:34.161312'),
(12, '2022-10-18 10:57:13.687475', 0, 'user@gmail.com', 'pbkdf2_sha256$390000$DztwVeurF3PoLmqWkR8NyP$w9Kbt1Hc9w5A+Ptt8zCJD6nnHcMC5TddobgCwKfFwd8=', 0, 1, '2022-10-18 10:52:39.024926', '2022-10-18 10:52:39.024976'),
(13, '2022-10-18 10:54:20.058893', 0, 'user1@gmail.com', 'pbkdf2_sha256$390000$3LRuRfOBoMOzlKhCSmXTN7$6WLbw2Xey2Q33c3J8eP1gbSlMk1kE12FZe75dlnIOcY=', 0, 1, '2022-10-18 10:53:33.484837', '2022-10-18 10:53:33.484886');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_user_groups`
--

CREATE TABLE `myapp_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_user_user_permissions`
--

CREATE TABLE `myapp_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_myapp_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `myapp_about`
--
ALTER TABLE `myapp_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myapp_books`
--
ALTER TABLE `myapp_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myapp_user`
--
ALTER TABLE `myapp_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `myapp_user_groups`
--
ALTER TABLE `myapp_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_user_groups_user_id_group_id_1ef5feb7_uniq` (`user_id`,`group_id`),
  ADD KEY `myapp_user_groups_group_id_488eb0fb_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `myapp_user_user_permissions`
--
ALTER TABLE `myapp_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_user_user_permissions_user_id_permission_id_13102f46_uniq` (`user_id`,`permission_id`),
  ADD KEY `myapp_user_user_perm_permission_id_4657f93a_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `myapp_about`
--
ALTER TABLE `myapp_about`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myapp_books`
--
ALTER TABLE `myapp_books`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `myapp_user`
--
ALTER TABLE `myapp_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `myapp_user_groups`
--
ALTER TABLE `myapp_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_user_user_permissions`
--
ALTER TABLE `myapp_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_myapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_user` (`id`);

--
-- Constraints for table `myapp_user_groups`
--
ALTER TABLE `myapp_user_groups`
  ADD CONSTRAINT `myapp_user_groups_group_id_488eb0fb_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `myapp_user_groups_user_id_925f87c5_fk_myapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_user` (`id`);

--
-- Constraints for table `myapp_user_user_permissions`
--
ALTER TABLE `myapp_user_user_permissions`
  ADD CONSTRAINT `myapp_user_user_perm_permission_id_4657f93a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `myapp_user_user_permissions_user_id_3f0ef5c3_fk_myapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
