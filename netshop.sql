-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2020 at 02:56 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attr`
--

CREATE TABLE `tbl_attr` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `idcategory` int(255) NOT NULL,
  `parent` int(255) NOT NULL,
  `filter` int(1) NOT NULL,
  `filter_right` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_attr`
--

INSERT INTO `tbl_attr` (`id`, `title`, `idcategory`, `parent`, `filter`, `filter_right`) VALUES
(1, 'مشخصات فیزیکی', 1, 0, 0, 0),
(2, 'ابعاد', 1, 1, 1, 0),
(3, 'پردازنده', 1, 0, 0, 0),
(4, 'قدرت پردازنده', 1, 3, 1, 0),
(5, 'مشخصات کلی', 1, 0, 0, 0),
(11, 'قدرت باتری', 1, 5, 1, 0),
(12, 'سیستم عامل', 1, 5, 0, 1),
(15, 'سازنده', 1, 5, 0, 1),
(16, 'مشخصات کلی', 4, 0, 0, 0),
(17, 'تعداد سیم کارت', 4, 16, 1, 1),
(18, 'ابعاد', 4, 16, 1, 1),
(19, 'وزن', 4, 16, 1, 1),
(20, 'ساختار', 4, 16, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attr_val`
--

CREATE TABLE `tbl_attr_val` (
  `id` int(255) NOT NULL,
  `idattr` int(255) NOT NULL,
  `val` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_attr_val`
--

INSERT INTO `tbl_attr_val` (`id`, `idattr`, `val`) VALUES
(1, 4, 'یک'),
(8, 4, 'دو'),
(9, 4, 'سه '),
(10, 4, 'چهار'),
(11, 4, 'پنج'),
(12, 2, '2 میلی متر در 2 میلی متر'),
(13, 2, '3 میلی متر در 4 میلی متر'),
(14, 2, '5*5'),
(15, 11, 'معمولی'),
(16, 11, 'قوی'),
(17, 11, 'خیلی قوی'),
(18, 2, '6*6'),
(19, 15, 'سامسونگ'),
(20, 15, 'نوکیا'),
(21, 12, 'اندروید'),
(22, 12, 'ios'),
(23, 20, 'فلز'),
(24, 20, 'شیشه'),
(25, 19, '10 گرم'),
(26, 19, '20 گرم'),
(27, 18, '7.6 × 76.1 × 153.2 میلی‌متر'),
(28, 17, '1'),
(29, 17, '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_basket`
--

CREATE TABLE `tbl_basket` (
  `id` int(255) NOT NULL,
  `cookie` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `idproduct` int(255) NOT NULL,
  `tedad` int(255) NOT NULL,
  `color` int(255) NOT NULL,
  `garantee` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_basket`
--

INSERT INTO `tbl_basket` (`id`, `cookie`, `idproduct`, `tedad`, `color`, `garantee`) VALUES
(1, '1586162671', 3, 3, 2, 2),
(2, '1586162671', 1, 1, 2, 2),
(3, '1586162671', 2, 1, 2, 0),
(4, '1586162671', 2, 1, 0, 0),
(5, '1586162671', 4, 4, 0, 0),
(6, '1586162671', 4, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `parent` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `parent`) VALUES
(1, 'کالای دیجیتال', 0),
(2, 'موبایل', 1),
(3, 'تبلت', 1),
(4, 'گوشی موبایل', 2),
(5, 'هدست', 2),
(6, 'samsung', 4),
(7, 'apple', 4),
(8, 'مارک hitech', 5),
(11, 'بر اساس سازنده', 3),
(12, 'Lenevo', 11),
(14, 'Microsoft', 11),
(15, 'لوازم خانگی', 0),
(16, 'لوازم صوتی تصویری', 15),
(17, 'لوازم برقی', 15),
(18, 'آشپزخانه', 15),
(19, 'تلویزیون', 16),
(20, 'کمتر از 32 اینچ', 19),
(21, 'بین 32 تا 42 اینچ', 19),
(22, 'زیبایی و سلامت', 0),
(23, 'فرهنگ و هنر', 0),
(24, 'ورزش و سرگرمی', 0),
(25, 'مادر و کودک', 0),
(26, 'یخچال', 18),
(27, 'ماکروویر', 18),
(28, 'خودرو', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_code`
--

CREATE TABLE `tbl_code` (
  `id` int(255) NOT NULL,
  `code` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `used` int(1) NOT NULL,
  `darsad` int(10) NOT NULL,
  `userId` int(255) NOT NULL,
  `tarikh_sabt` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `tarikh_end` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `max` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_code`
--

INSERT INTO `tbl_code` (`id`, `code`, `used`, `darsad`, `userId`, `tarikh_sabt`, `tarikh_end`, `max`) VALUES
(1, 'clicksite', 0, 20, 1, '1395/6/3', '1399/6/5', 3),
(2, 'clicksite2', 0, 30, 1, '1395/6/4', '1395/6/24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `hex` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`id`, `title`, `hex`) VALUES
(1, 'سفید', '#fff'),
(2, 'مشکی', '#000'),
(3, 'قرمز', '#f00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `matn` text COLLATE utf8_persian_ci NOT NULL,
  `tarikh` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `positive` text COLLATE utf8_persian_ci NOT NULL,
  `negative` text COLLATE utf8_persian_ci NOT NULL,
  `likecount` int(255) NOT NULL,
  `dislikecount` int(255) NOT NULL,
  `idproduct` int(255) NOT NULL,
  `param` text COLLATE utf8_persian_ci NOT NULL,
  `user` int(255) NOT NULL,
  `confirm` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `title`, `matn`, `tarikh`, `positive`, `negative`, `likecount`, `dislikecount`, `idproduct`, `param`, `user`, `confirm`) VALUES
(8, 'عالیه', 'با سلام\r\nدر کل عالیه', '', 'باتری قوی', 'رنگ بندی کم', 0, 0, 1, 'a:5:{i:1;s:2:\"3 \";i:2;s:2:\"3 \";i:3;s:2:\"2 \";i:4;s:2:\"3 \";i:5;s:2:\"2 \";}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment_param`
--

CREATE TABLE `tbl_comment_param` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `idcategory` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_comment_param`
--

INSERT INTO `tbl_comment_param` (`id`, `title`, `idcategory`) VALUES
(1, 'نوآوری', 4),
(2, 'ارزش خرید به نسبت قیمت', 4),
(3, 'کیفیت ساخت', 4),
(4, 'پارامتر تست', 4),
(5, 'پارامتر تست جدید', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favorit`
--

CREATE TABLE `tbl_favorit` (
  `id` int(255) NOT NULL,
  `idproduct` int(255) NOT NULL,
  `userId` int(255) NOT NULL,
  `parent` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_favorit`
--

INSERT INTO `tbl_favorit` (`id`, `idproduct`, `userId`, `parent`, `title`) VALUES
(1, 1, 1, 2, ''),
(2, 0, 1, 0, 'پوشه گوشی موبایل جدید                                                                                                                  '),
(3, 0, 1, 0, 'پوشه لپ تاپ                    ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(255) NOT NULL,
  `img` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `idproduct` int(255) NOT NULL,
  `threed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `img`, `idproduct`, `threed`) VALUES
(6, '1470819662.jpg', 16, 0),
(10, '1472662590.jpg', 1, 0),
(15, '1586090852.jpg', 1, 0),
(16, '1586092312.jpg', 1, 0),
(17, '1586092419.jpg', 1, 0),
(18, '1586092446.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_garantee`
--

CREATE TABLE `tbl_garantee` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_garantee`
--

INSERT INTO `tbl_garantee` (`id`, `title`) VALUES
(1, 'گارانتی شماره 1'),
(2, 'گارانتی شماره 2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(255) NOT NULL,
  `title` text COLLATE utf8_persian_ci NOT NULL,
  `matn` text COLLATE utf8_persian_ci NOT NULL,
  `userId` int(255) NOT NULL,
  `status` int(1) NOT NULL,
  `date` varchar(30) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id`, `title`, `matn`, `userId`, `status`, `date`) VALUES
(1, 'آماده سازی سفارش', 'سفارش با شماره فاکتور 12334 به قسمت ارسال تحویل داده شد', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_naghd`
--

CREATE TABLE `tbl_naghd` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `idproduct` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_naghd`
--

INSERT INTO `tbl_naghd` (`id`, `title`, `description`, `idproduct`) VALUES
(1, 'طراحی و ساخت', '<p>موفقیت استفاده از شیشه و فلز در طراحی گلکسی S6، سامسونگ را به فکر استفاده از آن&zwnj;ها در طراحی نوت جدید انداخت. ظاهر چشم&zwnj;نواز و براق، از نخستین ویژگی&zwnj;های گوشی پنجم سری نوت سامسونگ است. برخلاف نوت قبلی که قاب پشتی&zwnj;اش از پلاستیک بود و قابلیت بازشدن داشت، قاب پشتی نوت جدید بازشدنی نیست. سامسونگ امکان تعویض باتری را قربانی طراحی یکپارچه کرده است. قاب پشتی با ارگونومیک بیشتری طراحی شده تا دردست&zwnj;گرفتن نوت 5 با توجه به ابعاد بزرگش راحت&zwnj;تر شود. یکی از مواردی که در معرفی نوت 5 به آن اشاره شد، داشتن نمایشگر بزرگ&zwnj;تر در مقایسه با آیفون 6 پلاس با توجه به ابعاد یکسان طول و عرضی&zwnj;اش بود که با 154 میلی&zwnj;متر طول و عرض 76 میلی&zwnj;متری، صفحه&zwnj;نمایش 5.7 اینچی را در خود جا داده&zwnj; است؛ البته این بدنه&zwnj;ی تمام&zwnj;فلزی کمی سنگین است و وزنی نزدیک به 171 گرم دارد. سامسونگ با کم&zwnj;کردن فاصله&zwnj;ی نمایشگر از لبه&zwnj;های چپ و راست گوشی، نه&zwnj;تنها دردست&zwnj;گرفتن آن را ساده&zwnj;تر کرده؛ بلکه از ابعاد گوشی هم تا حد توجه&zwnj;برانگیزی کاسته است. در این طراحی، آینه&zwnj;ای&zwnj;بودن قاب پشتی و جلویی گوشی خیلی آزاردهنده است. اگر می&zwnj;خواهید گوشی&zwnj;تان همیشه تمیز باشد، باید پارچه&zwnj;ای از جنس ماکروفایبر داشته باشید و هرچند دقیقه یک&zwnj;بار گوشی&zwnj;تان را تمیز کنید. بدنه&zwnj;ی نوت 5، استعداد بالایی در جذب اثرانگشت، چربی و عرق دارد؛ اما در مقابل جلوه&zwnj;ای لوکس به نوت جدید بخشیده است.</p>\r\n', 1),
(2, 'صفحه نمایش', '<div class=\"style4 clearfix v1\">\r\n<div class=\"content\">\r\n<p>اوج پیشرفت سامسونگ در نوت 5 را می&zwnj;توان صفحه&zwnj;نمایش این محصول دانست. این نمایشگر در ابعاد، رزولوشن و نوع هیچ تفاوتی با نوت قبلی ندارد. نمایشگری 5.7 اینچی از نوع اولد و فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ برای نوت 5 در نظر گرفته شده است. از نظر اعداد و ارقام، عملا با نمایشگری تکراری در مقایسه با نوت &zwnj;3 طرف هستیم؛ اما سامسونگ با استفاده از چینش &laquo;دیاموند پنتایل&raquo; و روشنایی بیشتر، این نمایشگر را به بهترین نمایشگر گوشی&zwnj;های همراه تاکنون تبدیل کرده است. نقص روشنایی از عیوبی است که نمایشگرهای امولد دارند؛ اما سامسونگ با بالابردن روشنایی این نمایشگر تا 620 نیت توانسته این مشکل را تاحدچشمگیری حل کند. مورد دیگری که می&zwnj;تواند در نمایشگر&zwnj;های امولد آزاردهنده باشد، غیرواقعی&zwnj;بودن رنگ&zwnj;ها در این نمایشگر است و اینکه رنگ&zwnj;ها در مقایسه بارنگ&zwnj;های طبیعی، با اشباع بیشتری به نمایش درمی&zwnj;آیند.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"style3 clearfix v1\"></div>\r\n', 1),
(3, 'سخت افزار و کارایی', '<div class=\"style1 v3 clearfix\">\r\n<div class=\"content\">\r\n<p>برای نوت 5، اندروید لالی&zwnj;پاپ 64 بیتی نسخه&zwnj;ی 5.1.1 در نظر گرفته شده&zwnj; به همراه &laquo;تاچ&zwnj;ویزی&raquo; (TouchWiz) که ظاهر تکراری&zwnj;اش برای کاربران گوشی&zwnj;های سامسونگ عادی شده است. افزوده&zwnj;شدن چند امکان امنیتی جدید به &laquo;تاچ&zwnj;ویز&raquo; (TouchWiz) در مقایسه با نسخه&zwnj;های قبلی&zwnj;اش، یک اتفاق خوب برای نوت 5 به&zwnj;حساب می&zwnj;آید. گزینه&zwnj;ی&zwnj; &laquo;حالت شخصی&raquo; (Private Mode) به شما امکان می&zwnj;دهد تا مدیای شخصی خود را از دید دیگران پنهان کنید. با استفاده از گزینه&zwnj;ی &laquo;ارسال پیام اضطراری&raquo; (Send SOS Massage) می&zwnj;توانید با سه بار فشردن کلید پاور، پیامی را در قالب MMS (شامل تصویر&zwnj;های ثبت&zwnj;شده از دو دوربین گوشی به همراه صدای ضبط&zwnj;شده) به شماره یا شماره&zwnj;های دلخواه ارسال کنید؛ همچنین اضافه&zwnj;شدن گزینه&zwnj;ی &laquo;گوشی مرا بیاب&raquo; (Find My Phone) موردی شبیه &laquo;Find My iPhone&raquo; را در اختیار کاربران سامسونگ قرار می&zwnj;دهد. اگر گوشی&zwnj;تان را گم کنید یا به سرقت برده شود، با این گزینه و از طریق اکانت سامسونگ&zwnj; خود می&zwnj;توانید گوشی را روی نقشه ردیابی کنید.</p>\r\n</div>\r\n</div>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_option`
--

CREATE TABLE `tbl_option` (
  `id` int(255) NOT NULL,
  `setting` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_option`
--

INSERT INTO `tbl_option` (`id`, `setting`, `value`) VALUES
(1, 'special_time', '24'),
(2, 'limit_slider', '10'),
(3, 'tel', '021-999999 - 09396562210'),
(4, 'email', 'mehdi.ir@gmail.com'),
(5, 'mohlatPay', '24'),
(6, 'root', 'http://localhost/Netshop/'),
(7, 'zarinpalMID', 'f0a107a8-eb7c-11e5-8af1-005056a205be'),
(8, 'body_color', 'D7D7D7'),
(9, 'menu_color', 'F1FFEE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(255) NOT NULL,
  `beforepay` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `afterpay` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `amount` int(255) NOT NULL,
  `family` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `reverse` int(255) NOT NULL,
  `ostan` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `code_posti` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_persian_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `post_type` int(1) NOT NULL,
  `basket` text COLLATE utf8_persian_ci NOT NULL,
  `address` text COLLATE utf8_persian_ci NOT NULL,
  `post_price` int(255) NOT NULL,
  `userId` int(255) NOT NULL,
  `status` int(1) NOT NULL,
  `pay` int(1) NOT NULL,
  `pay_type` int(1) NOT NULL,
  `pay_day` int(10) NOT NULL,
  `pay_month` int(10) NOT NULL,
  `pay_year` int(10) NOT NULL,
  `pay_card` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `pay_bank_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `pay_hour` int(10) NOT NULL,
  `pay_minute` int(10) NOT NULL,
  `time_sabt` int(255) NOT NULL,
  `date` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `tarikh` varchar(50) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `beforepay`, `afterpay`, `amount`, `family`, `reverse`, `ostan`, `city`, `code_posti`, `mobile`, `tel`, `post_type`, `basket`, `address`, `post_price`, `userId`, `status`, `pay`, `pay_type`, `pay_day`, `pay_month`, `pay_year`, `pay_card`, `pay_bank_name`, `pay_hour`, `pay_minute`, `time_sabt`, `date`, `barcode`, `code`, `tarikh`) VALUES
(5, '', '', 15569, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 0, 'a:1:{i:0;a:20:{s:5:\"tedad\";s:1:\"6\";s:9:\"basketRow\";s:2:\"23\";s:2:\"id\";s:2:\"16\";s:5:\"title\";s:33:\"گوشی سامسونگ مدل 34\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:1:\"1\";s:12:\"introduction\";s:23:\"<p>توضیحات</p>\r\n\";s:12:\"tedad_mojood\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"0\";s:12:\"time_special\";s:1:\"0\";s:13:\"onlyclicksite\";s:1:\"0\";s:5:\"viewd\";s:1:\"0\";s:6:\"colors\";s:3:\"2,3\";s:8:\"garantee\";s:1:\"1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"40\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";i:2400;}}', 'خیابان 2 پلا 10', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, '', '', '', '1395/6/5'),
(6, '', '', 13169, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 0, 'a:1:{i:0;a:20:{s:5:\"tedad\";s:1:\"6\";s:9:\"basketRow\";s:2:\"23\";s:2:\"id\";s:2:\"16\";s:5:\"title\";s:33:\"گوشی سامسونگ مدل 34\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:1:\"1\";s:12:\"introduction\";s:23:\"<p>توضیحات</p>\r\n\";s:12:\"tedad_mojood\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"0\";s:12:\"time_special\";s:1:\"0\";s:13:\"onlyclicksite\";s:1:\"0\";s:5:\"viewd\";s:1:\"0\";s:6:\"colors\";s:3:\"2,3\";s:8:\"garantee\";s:1:\"1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"40\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";i:2400;}}', 'خیابان 2 پلا 10', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, '', '', '', '1395/6/5'),
(7, '12345', '', 13169, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 1, 'a:1:{i:0;a:20:{s:5:\"tedad\";s:1:\"6\";s:9:\"basketRow\";s:2:\"23\";s:2:\"id\";s:2:\"16\";s:5:\"title\";s:33:\"گوشی سامسونگ مدل 34\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:1:\"1\";s:12:\"introduction\";s:23:\"<p>توضیحات</p>\r\n\";s:12:\"tedad_mojood\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"0\";s:12:\"time_special\";s:1:\"0\";s:13:\"onlyclicksite\";s:1:\"0\";s:5:\"viewd\";s:1:\"0\";s:6:\"colors\";s:3:\"2,3\";s:8:\"garantee\";s:1:\"1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"40\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";i:2400;}}', 'خیابان 2 پلا 10', 5969, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, '', '', '', '1395/6/5'),
(8, '', '', 15569, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 1, 'a:1:{i:0;a:20:{s:5:\"tedad\";s:1:\"6\";s:9:\"basketRow\";s:2:\"23\";s:2:\"id\";s:2:\"16\";s:5:\"title\";s:33:\"گوشی سامسونگ مدل 34\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:1:\"1\";s:12:\"introduction\";s:23:\"<p>توضیحات</p>\r\n\";s:12:\"tedad_mojood\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"0\";s:12:\"time_special\";s:1:\"0\";s:13:\"onlyclicksite\";s:1:\"0\";s:5:\"viewd\";s:1:\"0\";s:6:\"colors\";s:3:\"2,3\";s:8:\"garantee\";s:1:\"1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"40\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";i:2400;}}', 'خیابان 2 پلا 10', 5969, 1, 1, 0, 0, 0, 0, 0, '', '', 0, 0, 0, '', '', '', '1395/6/5'),
(9, '', '', 15569, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 1, 'a:1:{i:0;a:20:{s:5:\"tedad\";s:1:\"6\";s:9:\"basketRow\";s:2:\"23\";s:2:\"id\";s:2:\"16\";s:5:\"title\";s:33:\"گوشی سامسونگ مدل 34\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:1:\"1\";s:12:\"introduction\";s:23:\"<p>توضیحات</p>\r\n\";s:12:\"tedad_mojood\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"0\";s:12:\"time_special\";s:1:\"0\";s:13:\"onlyclicksite\";s:1:\"0\";s:5:\"viewd\";s:1:\"0\";s:6:\"colors\";s:3:\"2,3\";s:8:\"garantee\";s:1:\"1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"40\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";i:2400;}}', 'خیابان 2 پلا 10', 5969, 1, 1, 0, 4, 1, 1, 1400, '610433796', 'ملت', 9, 1, 0, '', '', '', '1395/6/6'),
(10, '', '', 15569, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '111111111', '09396562210', '021666335', 1, 'a:1:{i:0;a:20:{s:5:\"tedad\";s:1:\"6\";s:9:\"basketRow\";s:2:\"23\";s:2:\"id\";s:2:\"16\";s:5:\"title\";s:33:\"گوشی سامسونگ مدل 34\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:1:\"1\";s:12:\"introduction\";s:23:\"<p>توضیحات</p>\r\n\";s:12:\"tedad_mojood\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"0\";s:12:\"time_special\";s:1:\"0\";s:13:\"onlyclicksite\";s:1:\"0\";s:5:\"viewd\";s:1:\"0\";s:6:\"colors\";s:3:\"2,3\";s:8:\"garantee\";s:1:\"1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"40\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";i:2400;}}', 'خیابان 2 پلاک 10', 5969, 1, 5, 1, 4, 25, 6, 1395, '6104336372632678', 'صادرات', 10, 32, 1471949702, '', '', 'clicksite', '1395/6/7'),
(13, '', '', 8250, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 2, 'a:6:{i:0;a:20:{s:5:\"tedad\";s:1:\"3\";s:9:\"basketRow\";s:1:\"1\";s:2:\"id\";s:1:\"3\";s:5:\"title\";s:40:\" تبلت مایکروسافت Surface 3\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2023:\"<p>تبلت سرفیس پرو 3 از دید مجله تایم به عنوان یکی از 25 نوآوری سال 2014 معرفی شد؛ از این رو، معرفی مدلی جدید و گسترش فروش تبلت&zwnj;های سرفیس از سوی مایکروسافت چندان عجیب نیست. سرفیس 3 دارای صفحه نمایشی 10.8 اینچی با رزولوشن 1280 &times; 1920 پیکسل و نسبت صفحه نمایش 3:2 است. لازم به ذکر است که صفحه نمایش نسخه پرو (Pro) هم همین نسبت تصویر 3:2 را دارد.<br />\r\nمایکروسافت یک پردازنده اینتل اتم x7 چهار هسته&zwnj;ای را برای تبلت جدیدش برگزیده است. از دیگر ویژگی&zwnj;های این تبلت می&zwnj;توان به دوربین پشتی 8 مگاپیکسلی، دوربین جلوی 3.5 مگاپیکسلی، باتری با شارژ 10 ساعت، درگاه Full USB و micorSD اشاره کرد. قلم نوری مشهور مایکروسافت هم در کنار سرفیس 3 حضور دارد.<br />\r\nبر روی این تبلت ویندوز 10 اجرا می&zwnj;شود. همچنین مجموعه کامل آفیس، یک سال سرویس اشتراک آفیس 365 و یک ترابایت حافظه ابری One Drive هم از سرویس&zwnj;های هستند که با خرید این تبلت در اختیارتان قرار می&zwnj;گیرد.<br />\r\nسرفیس 3 در دو کانفیگ اصلی با حافظه&zwnj;های داخلی 64 گیگابایت و 128 گیگابایت به بازار راه پیدا می&zwnj;کند. مدل 64 گیگابایتی 2 گیگابایت رم و مدل 128 گیگابایتی 4 گیگابایت رم دارد. در ضمن این تبلت در مدل LTE هم به بازار راه پیدا می&zwnj;کند. لوازم جانبی مانند Type Cover محبوب مایکروسافت هم برای تبدیل تبلت به لپ&zwnj;تاپ ارایه شده است.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"30\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"50\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:900;}i:1;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"2\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:200;}i:2;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"3\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:3;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"4\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:4;a:20:{s:5:\"tedad\";s:1:\"4\";s:9:\"basketRow\";s:1:\"5\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:520;}i:5;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"6\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";s:8:\"قرمز\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:130;}}', 'خیابان 2 پلا 10', 0, 1, 1, 0, 1, 0, 0, 0, '', '', 0, 0, 1586241575, '', '', '', '1399/1/15'),
(14, '', '', 10850, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 2, 'a:6:{i:0;a:20:{s:5:\"tedad\";s:1:\"3\";s:9:\"basketRow\";s:1:\"1\";s:2:\"id\";s:1:\"3\";s:5:\"title\";s:40:\" تبلت مایکروسافت Surface 3\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2023:\"<p>تبلت سرفیس پرو 3 از دید مجله تایم به عنوان یکی از 25 نوآوری سال 2014 معرفی شد؛ از این رو، معرفی مدلی جدید و گسترش فروش تبلت&zwnj;های سرفیس از سوی مایکروسافت چندان عجیب نیست. سرفیس 3 دارای صفحه نمایشی 10.8 اینچی با رزولوشن 1280 &times; 1920 پیکسل و نسبت صفحه نمایش 3:2 است. لازم به ذکر است که صفحه نمایش نسخه پرو (Pro) هم همین نسبت تصویر 3:2 را دارد.<br />\r\nمایکروسافت یک پردازنده اینتل اتم x7 چهار هسته&zwnj;ای را برای تبلت جدیدش برگزیده است. از دیگر ویژگی&zwnj;های این تبلت می&zwnj;توان به دوربین پشتی 8 مگاپیکسلی، دوربین جلوی 3.5 مگاپیکسلی، باتری با شارژ 10 ساعت، درگاه Full USB و micorSD اشاره کرد. قلم نوری مشهور مایکروسافت هم در کنار سرفیس 3 حضور دارد.<br />\r\nبر روی این تبلت ویندوز 10 اجرا می&zwnj;شود. همچنین مجموعه کامل آفیس، یک سال سرویس اشتراک آفیس 365 و یک ترابایت حافظه ابری One Drive هم از سرویس&zwnj;های هستند که با خرید این تبلت در اختیارتان قرار می&zwnj;گیرد.<br />\r\nسرفیس 3 در دو کانفیگ اصلی با حافظه&zwnj;های داخلی 64 گیگابایت و 128 گیگابایت به بازار راه پیدا می&zwnj;کند. مدل 64 گیگابایتی 2 گیگابایت رم و مدل 128 گیگابایتی 4 گیگابایت رم دارد. در ضمن این تبلت در مدل LTE هم به بازار راه پیدا می&zwnj;کند. لوازم جانبی مانند Type Cover محبوب مایکروسافت هم برای تبدیل تبلت به لپ&zwnj;تاپ ارایه شده است.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"30\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"50\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:900;}i:1;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"2\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:200;}i:2;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"3\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:3;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"4\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:4;a:20:{s:5:\"tedad\";s:1:\"4\";s:9:\"basketRow\";s:1:\"5\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:520;}i:5;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"6\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";s:8:\"قرمز\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:130;}}', 'خیابان 2 پلا 10', 0, 1, 1, 0, 4, 0, 0, 0, '', '', 0, 0, 1586241585, '', '', '', '1399/1/15'),
(15, '', '', 10850, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 2, 'a:6:{i:0;a:20:{s:5:\"tedad\";s:1:\"3\";s:9:\"basketRow\";s:1:\"1\";s:2:\"id\";s:1:\"3\";s:5:\"title\";s:40:\" تبلت مایکروسافت Surface 3\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2023:\"<p>تبلت سرفیس پرو 3 از دید مجله تایم به عنوان یکی از 25 نوآوری سال 2014 معرفی شد؛ از این رو، معرفی مدلی جدید و گسترش فروش تبلت&zwnj;های سرفیس از سوی مایکروسافت چندان عجیب نیست. سرفیس 3 دارای صفحه نمایشی 10.8 اینچی با رزولوشن 1280 &times; 1920 پیکسل و نسبت صفحه نمایش 3:2 است. لازم به ذکر است که صفحه نمایش نسخه پرو (Pro) هم همین نسبت تصویر 3:2 را دارد.<br />\r\nمایکروسافت یک پردازنده اینتل اتم x7 چهار هسته&zwnj;ای را برای تبلت جدیدش برگزیده است. از دیگر ویژگی&zwnj;های این تبلت می&zwnj;توان به دوربین پشتی 8 مگاپیکسلی، دوربین جلوی 3.5 مگاپیکسلی، باتری با شارژ 10 ساعت، درگاه Full USB و micorSD اشاره کرد. قلم نوری مشهور مایکروسافت هم در کنار سرفیس 3 حضور دارد.<br />\r\nبر روی این تبلت ویندوز 10 اجرا می&zwnj;شود. همچنین مجموعه کامل آفیس، یک سال سرویس اشتراک آفیس 365 و یک ترابایت حافظه ابری One Drive هم از سرویس&zwnj;های هستند که با خرید این تبلت در اختیارتان قرار می&zwnj;گیرد.<br />\r\nسرفیس 3 در دو کانفیگ اصلی با حافظه&zwnj;های داخلی 64 گیگابایت و 128 گیگابایت به بازار راه پیدا می&zwnj;کند. مدل 64 گیگابایتی 2 گیگابایت رم و مدل 128 گیگابایتی 4 گیگابایت رم دارد. در ضمن این تبلت در مدل LTE هم به بازار راه پیدا می&zwnj;کند. لوازم جانبی مانند Type Cover محبوب مایکروسافت هم برای تبدیل تبلت به لپ&zwnj;تاپ ارایه شده است.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"30\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"50\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:900;}i:1;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"2\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:200;}i:2;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"3\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:3;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"4\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:4;a:20:{s:5:\"tedad\";s:1:\"4\";s:9:\"basketRow\";s:1:\"5\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:520;}i:5;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"6\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";s:8:\"قرمز\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:130;}}', 'خیابان 2 پلا 10', 0, 1, 1, 0, 5, 0, 0, 0, '', '', 0, 0, 1586241605, '', '', '', '1399/1/15');
INSERT INTO `tbl_order` (`id`, `beforepay`, `afterpay`, `amount`, `family`, `reverse`, `ostan`, `city`, `code_posti`, `mobile`, `tel`, `post_type`, `basket`, `address`, `post_price`, `userId`, `status`, `pay`, `pay_type`, `pay_day`, `pay_month`, `pay_year`, `pay_card`, `pay_bank_name`, `pay_hour`, `pay_minute`, `time_sabt`, `date`, `barcode`, `code`, `tarikh`) VALUES
(16, '', '', 8250, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 2, 'a:6:{i:0;a:20:{s:5:\"tedad\";s:1:\"3\";s:9:\"basketRow\";s:1:\"1\";s:2:\"id\";s:1:\"3\";s:5:\"title\";s:40:\" تبلت مایکروسافت Surface 3\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2023:\"<p>تبلت سرفیس پرو 3 از دید مجله تایم به عنوان یکی از 25 نوآوری سال 2014 معرفی شد؛ از این رو، معرفی مدلی جدید و گسترش فروش تبلت&zwnj;های سرفیس از سوی مایکروسافت چندان عجیب نیست. سرفیس 3 دارای صفحه نمایشی 10.8 اینچی با رزولوشن 1280 &times; 1920 پیکسل و نسبت صفحه نمایش 3:2 است. لازم به ذکر است که صفحه نمایش نسخه پرو (Pro) هم همین نسبت تصویر 3:2 را دارد.<br />\r\nمایکروسافت یک پردازنده اینتل اتم x7 چهار هسته&zwnj;ای را برای تبلت جدیدش برگزیده است. از دیگر ویژگی&zwnj;های این تبلت می&zwnj;توان به دوربین پشتی 8 مگاپیکسلی، دوربین جلوی 3.5 مگاپیکسلی، باتری با شارژ 10 ساعت، درگاه Full USB و micorSD اشاره کرد. قلم نوری مشهور مایکروسافت هم در کنار سرفیس 3 حضور دارد.<br />\r\nبر روی این تبلت ویندوز 10 اجرا می&zwnj;شود. همچنین مجموعه کامل آفیس، یک سال سرویس اشتراک آفیس 365 و یک ترابایت حافظه ابری One Drive هم از سرویس&zwnj;های هستند که با خرید این تبلت در اختیارتان قرار می&zwnj;گیرد.<br />\r\nسرفیس 3 در دو کانفیگ اصلی با حافظه&zwnj;های داخلی 64 گیگابایت و 128 گیگابایت به بازار راه پیدا می&zwnj;کند. مدل 64 گیگابایتی 2 گیگابایت رم و مدل 128 گیگابایتی 4 گیگابایت رم دارد. در ضمن این تبلت در مدل LTE هم به بازار راه پیدا می&zwnj;کند. لوازم جانبی مانند Type Cover محبوب مایکروسافت هم برای تبدیل تبلت به لپ&zwnj;تاپ ارایه شده است.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"30\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"50\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:900;}i:1;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"2\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:200;}i:2;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"3\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:3;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"4\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:4;a:20:{s:5:\"tedad\";s:1:\"4\";s:9:\"basketRow\";s:1:\"5\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:520;}i:5;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"6\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";s:8:\"قرمز\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:130;}}', 'خیابان 2 پلا 10', 0, 1, 1, 0, 4, 0, 0, 0, '', '', 0, 0, 1586241647, '', '', '', '1399/1/15'),
(17, '', '', 8250, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 2, 'a:6:{i:0;a:20:{s:5:\"tedad\";s:1:\"3\";s:9:\"basketRow\";s:1:\"1\";s:2:\"id\";s:1:\"3\";s:5:\"title\";s:40:\" تبلت مایکروسافت Surface 3\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2023:\"<p>تبلت سرفیس پرو 3 از دید مجله تایم به عنوان یکی از 25 نوآوری سال 2014 معرفی شد؛ از این رو، معرفی مدلی جدید و گسترش فروش تبلت&zwnj;های سرفیس از سوی مایکروسافت چندان عجیب نیست. سرفیس 3 دارای صفحه نمایشی 10.8 اینچی با رزولوشن 1280 &times; 1920 پیکسل و نسبت صفحه نمایش 3:2 است. لازم به ذکر است که صفحه نمایش نسخه پرو (Pro) هم همین نسبت تصویر 3:2 را دارد.<br />\r\nمایکروسافت یک پردازنده اینتل اتم x7 چهار هسته&zwnj;ای را برای تبلت جدیدش برگزیده است. از دیگر ویژگی&zwnj;های این تبلت می&zwnj;توان به دوربین پشتی 8 مگاپیکسلی، دوربین جلوی 3.5 مگاپیکسلی، باتری با شارژ 10 ساعت، درگاه Full USB و micorSD اشاره کرد. قلم نوری مشهور مایکروسافت هم در کنار سرفیس 3 حضور دارد.<br />\r\nبر روی این تبلت ویندوز 10 اجرا می&zwnj;شود. همچنین مجموعه کامل آفیس، یک سال سرویس اشتراک آفیس 365 و یک ترابایت حافظه ابری One Drive هم از سرویس&zwnj;های هستند که با خرید این تبلت در اختیارتان قرار می&zwnj;گیرد.<br />\r\nسرفیس 3 در دو کانفیگ اصلی با حافظه&zwnj;های داخلی 64 گیگابایت و 128 گیگابایت به بازار راه پیدا می&zwnj;کند. مدل 64 گیگابایتی 2 گیگابایت رم و مدل 128 گیگابایتی 4 گیگابایت رم دارد. در ضمن این تبلت در مدل LTE هم به بازار راه پیدا می&zwnj;کند. لوازم جانبی مانند Type Cover محبوب مایکروسافت هم برای تبدیل تبلت به لپ&zwnj;تاپ ارایه شده است.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"30\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"50\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:900;}i:1;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"2\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:200;}i:2;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"3\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:3;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"4\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:4;a:20:{s:5:\"tedad\";s:1:\"4\";s:9:\"basketRow\";s:1:\"5\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:520;}i:5;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"6\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";s:8:\"قرمز\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:130;}}', 'خیابان 2 پلاک10', 0, 1, 4, 0, 4, 6, 8, 1399, '67677788748474844', 'ملت', 15, 1, 1586253678, '', '', '', '1399/1/15'),
(18, '', '', 8250, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 2, 'a:6:{i:0;a:20:{s:5:\"tedad\";s:1:\"3\";s:9:\"basketRow\";s:1:\"1\";s:2:\"id\";s:1:\"3\";s:5:\"title\";s:40:\" تبلت مایکروسافت Surface 3\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2023:\"<p>تبلت سرفیس پرو 3 از دید مجله تایم به عنوان یکی از 25 نوآوری سال 2014 معرفی شد؛ از این رو، معرفی مدلی جدید و گسترش فروش تبلت&zwnj;های سرفیس از سوی مایکروسافت چندان عجیب نیست. سرفیس 3 دارای صفحه نمایشی 10.8 اینچی با رزولوشن 1280 &times; 1920 پیکسل و نسبت صفحه نمایش 3:2 است. لازم به ذکر است که صفحه نمایش نسخه پرو (Pro) هم همین نسبت تصویر 3:2 را دارد.<br />\r\nمایکروسافت یک پردازنده اینتل اتم x7 چهار هسته&zwnj;ای را برای تبلت جدیدش برگزیده است. از دیگر ویژگی&zwnj;های این تبلت می&zwnj;توان به دوربین پشتی 8 مگاپیکسلی، دوربین جلوی 3.5 مگاپیکسلی، باتری با شارژ 10 ساعت، درگاه Full USB و micorSD اشاره کرد. قلم نوری مشهور مایکروسافت هم در کنار سرفیس 3 حضور دارد.<br />\r\nبر روی این تبلت ویندوز 10 اجرا می&zwnj;شود. همچنین مجموعه کامل آفیس، یک سال سرویس اشتراک آفیس 365 و یک ترابایت حافظه ابری One Drive هم از سرویس&zwnj;های هستند که با خرید این تبلت در اختیارتان قرار می&zwnj;گیرد.<br />\r\nسرفیس 3 در دو کانفیگ اصلی با حافظه&zwnj;های داخلی 64 گیگابایت و 128 گیگابایت به بازار راه پیدا می&zwnj;کند. مدل 64 گیگابایتی 2 گیگابایت رم و مدل 128 گیگابایتی 4 گیگابایت رم دارد. در ضمن این تبلت در مدل LTE هم به بازار راه پیدا می&zwnj;کند. لوازم جانبی مانند Type Cover محبوب مایکروسافت هم برای تبدیل تبلت به لپ&zwnj;تاپ ارایه شده است.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"30\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"50\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:900;}i:1;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"2\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:200;}i:2;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"3\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:3;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"4\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:4;a:20:{s:5:\"tedad\";s:1:\"4\";s:9:\"basketRow\";s:1:\"5\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:520;}i:5;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"6\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";s:8:\"قرمز\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:130;}}', 'خیابان 2 پلا 10', 0, 1, 1, 0, 1, 0, 0, 0, '', '', 0, 0, 1586258429, '', '', '', '1399/1/15'),
(19, '', '', 8250, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 2, 'a:6:{i:0;a:20:{s:5:\"tedad\";s:1:\"3\";s:9:\"basketRow\";s:1:\"1\";s:2:\"id\";s:1:\"3\";s:5:\"title\";s:40:\" تبلت مایکروسافت Surface 3\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2023:\"<p>تبلت سرفیس پرو 3 از دید مجله تایم به عنوان یکی از 25 نوآوری سال 2014 معرفی شد؛ از این رو، معرفی مدلی جدید و گسترش فروش تبلت&zwnj;های سرفیس از سوی مایکروسافت چندان عجیب نیست. سرفیس 3 دارای صفحه نمایشی 10.8 اینچی با رزولوشن 1280 &times; 1920 پیکسل و نسبت صفحه نمایش 3:2 است. لازم به ذکر است که صفحه نمایش نسخه پرو (Pro) هم همین نسبت تصویر 3:2 را دارد.<br />\r\nمایکروسافت یک پردازنده اینتل اتم x7 چهار هسته&zwnj;ای را برای تبلت جدیدش برگزیده است. از دیگر ویژگی&zwnj;های این تبلت می&zwnj;توان به دوربین پشتی 8 مگاپیکسلی، دوربین جلوی 3.5 مگاپیکسلی، باتری با شارژ 10 ساعت، درگاه Full USB و micorSD اشاره کرد. قلم نوری مشهور مایکروسافت هم در کنار سرفیس 3 حضور دارد.<br />\r\nبر روی این تبلت ویندوز 10 اجرا می&zwnj;شود. همچنین مجموعه کامل آفیس، یک سال سرویس اشتراک آفیس 365 و یک ترابایت حافظه ابری One Drive هم از سرویس&zwnj;های هستند که با خرید این تبلت در اختیارتان قرار می&zwnj;گیرد.<br />\r\nسرفیس 3 در دو کانفیگ اصلی با حافظه&zwnj;های داخلی 64 گیگابایت و 128 گیگابایت به بازار راه پیدا می&zwnj;کند. مدل 64 گیگابایتی 2 گیگابایت رم و مدل 128 گیگابایتی 4 گیگابایت رم دارد. در ضمن این تبلت در مدل LTE هم به بازار راه پیدا می&zwnj;کند. لوازم جانبی مانند Type Cover محبوب مایکروسافت هم برای تبدیل تبلت به لپ&zwnj;تاپ ارایه شده است.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"30\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"50\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:900;}i:1;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"2\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:200;}i:2;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"3\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";s:8:\"مشکی\";s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:3;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"4\";s:2:\"id\";s:1:\"2\";s:5:\"title\";s:36:\" تلویزیونLG مدل 24MT45000\";s:5:\"price\";s:4:\"2000\";s:3:\"cat\";s:2:\"19\";s:12:\"introduction\";s:2181:\"<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"20\";s:8:\"discount\";s:2:\"10\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"2\";s:8:\"garantee\";s:3:\"2,1\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"30\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}i:4;a:20:{s:5:\"tedad\";s:1:\"4\";s:9:\"basketRow\";s:1:\"5\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:520;}i:5;a:20:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"6\";s:2:\"id\";s:1:\"4\";s:5:\"title\";s:33:\"تبلت آمازون Fire HD 10 \";s:5:\"price\";s:4:\"1000\";s:3:\"cat\";s:2:\"11\";s:12:\"introduction\";s:2436:\"<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"50\";s:8:\"discount\";s:2:\"13\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:1:\"3\";s:8:\"garantee\";s:1:\"2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:4:\"2000\";s:10:\"colorTitle\";s:8:\"قرمز\";s:13:\"garanteeTitle\";s:27:\"گارانتی شماره 2\";s:13:\"discountTotal\";d:130;}}', 'خیابان 2 پلا 10', 0, 1, 1, 0, 1, 0, 0, 0, '', '', 0, 0, 1586258507, '', '', '', '1399/1/15');
INSERT INTO `tbl_order` (`id`, `beforepay`, `afterpay`, `amount`, `family`, `reverse`, `ostan`, `city`, `code_posti`, `mobile`, `tel`, `post_type`, `basket`, `address`, `post_price`, `userId`, `status`, `pay`, `pay_type`, `pay_day`, `pay_month`, `pay_year`, `pay_card`, `pay_bank_name`, `pay_hour`, `pay_minute`, `time_sabt`, `date`, `barcode`, `code`, `tarikh`) VALUES
(20, '', '', 800, 'مهدی باقری', 0, 'تهران', 'تهران', '7676775546', '09877665554', '021233838393', 1, 'a:1:{i:0;a:21:{s:5:\"tedad\";s:1:\"1\";s:9:\"basketRow\";s:1:\"7\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:11:\"final_price\";s:3:\"800\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:200;}}', 'گیشا خیابان دوم پلاک 4', 0, 2, 1, 0, 1, 0, 0, 0, '', '', 0, 0, 1591445592, '', '', '', '2020/06/06'),
(21, '', '', 2400, 'محمد امینی', 0, 'خراسان جنوبي', 'بیرجند', '2128719271', '09396562210', '021666335', 1, 'a:1:{i:0;a:21:{s:5:\"tedad\";s:1:\"3\";s:9:\"basketRow\";s:2:\"11\";s:2:\"id\";s:1:\"1\";s:5:\"title\";s:38:\"گوشی سامسونگ  Galaxy Note 5\";s:5:\"price\";s:4:\"1000\";s:11:\"final_price\";s:3:\"800\";s:3:\"cat\";s:1:\"4\";s:12:\"introduction\";s:2114:\"<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n\";s:11:\"tedad_mojod\";s:2:\"10\";s:8:\"discount\";s:2:\"20\";s:7:\"special\";s:1:\"1\";s:12:\"time_special\";s:10:\"1585986547\";s:8:\"onlydigi\";s:1:\"1\";s:6:\"viewed\";s:1:\"0\";s:5:\"color\";s:3:\"2,3\";s:8:\"garantee\";s:3:\"1,2\";s:10:\"idcategory\";s:1:\"0\";s:6:\"weight\";s:2:\"10\";s:10:\"colorTitle\";N;s:13:\"garanteeTitle\";N;s:13:\"discountTotal\";d:600;}}', 'خیابان 2 پلا 10', 0, 1, 1, 0, 1, 0, 0, 0, '', '', 0, 0, 1592789909, '', '', '', '2020/06/22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_status`
--

CREATE TABLE `tbl_order_status` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_order_status`
--

INSERT INTO `tbl_order_status` (`id`, `title`) VALUES
(1, 'در انتظار تایید'),
(2, 'تایید شده'),
(3, 'در انتظار پرداخت'),
(4, 'پرداخت شده'),
(5, 'در حال پردازش انبار'),
(6, 'آماده ارسال'),
(7, 'ارسال شده');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay_type`
--

CREATE TABLE `tbl_pay_type` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_pay_type`
--

INSERT INTO `tbl_pay_type` (`id`, `title`) VALUES
(1, 'زرین پال'),
(2, 'ملت'),
(3, 'سامان'),
(4, 'کارت به کارت');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_type`
--

CREATE TABLE `tbl_post_type` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_post_type`
--

INSERT INTO `tbl_post_type` (`id`, `title`, `description`) VALUES
(1, 'پست پیشتاز - 24 ساعته', 'زمان ارسال بین 24 تا حداکثر الی 72 ساعت'),
(2, 'پست سفارشی', 'زمان ارسال بین 72 ساعت الی یک هفته');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `price` int(10) NOT NULL,
  `final_price` int(255) NOT NULL,
  `cat` int(255) NOT NULL,
  `introduction` text COLLATE utf32_persian_ci NOT NULL,
  `tedad_mojod` int(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `special` int(11) NOT NULL,
  `time_special` int(255) NOT NULL,
  `onlydigi` int(1) NOT NULL,
  `viewed` int(255) NOT NULL,
  `color` varchar(255) COLLATE utf32_persian_ci NOT NULL,
  `garantee` varchar(255) COLLATE utf32_persian_ci NOT NULL,
  `idcategory` int(255) NOT NULL,
  `weight` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_persian_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `title`, `price`, `final_price`, `cat`, `introduction`, `tedad_mojod`, `discount`, `special`, `time_special`, `onlydigi`, `viewed`, `color`, `garantee`, `idcategory`, `weight`) VALUES
(1, 'گوشی سامسونگ  Galaxy Note 5', 1000, 800, 4, '<p>امکان&zwnj; یادداشت&zwnj;برداری با قلم، صفحه&zwnj;نمایش بزرگ و سخت&zwnj;افزار قدرتمند از ویژگی&zwnj;های گوشی&zwnj;های سری نوت سامسونگ هستند. بعد از تولید چهار نسل موفق از این گوشی، نسل پنجم با تغییراتی کم&zwnj;وبیش بزرگ طراحی و ساخته شد. شماری از این تغییرات، کم&zwnj;وکاستی&zwnj;های سری&zwnj;های قبل را پوشش داده&zwnj;اند؛ البته تغییراتی هم باعث حذف قابلیت&zwnj;های محبوب و کاربردی گوشی&zwnj;های قبلی این سری شده&zwnj;اند. گوشی &laquo;سامسونگ گلکسی نوت 5&raquo; (Samsung galaxy Note5) برخلاف گوشی&zwnj;های قبلی سامسونگ در همین سری، بدنه&zwnj;ای از جنس فلز و شیشه دارد. این بدنه&zwnj;ی فلزی باعث شده تا وزن نوت پنجم 171 گرم شود که در مقایسه با وزن نوت 4، چند گرمی سبک&zwnj;تر شده است. با درنظرگرفتن جای قلم در بدنه&zwnj;ی&zwnj; نوت5، این گوشی نزدیک به 7.6 میلی&zwnj;متر ضخامت دارد که در مقایسه با نسل قبلی&zwnj;اش باریک&zwnj;تر هم شده است. در کنار طراحی عالی و چشم&zwnj;نواز نوت5، برای این گوشی نمایشگری از نوع اولد با فناوری سوپر امولد با رزولوشن 2560 در 1440 و تراکم 518 پیکسل بر هر اینچ در نظر گرفته شده است. سامسونگ برای محافظت از این نمایشگر 5.7 اینچی که از نظر اندازه با نسل قبلی&zwnj;اش متفاوت نیست، از محافظ&zwnj;های گوریلاگلس نسخه&zwnj;ی چهارم بهره برده است. تراشه&zwnj;ی نوت5 همان تراشه&zwnj;ی اختصاصی سامسونگ اگزینوس 7420 است که پیش&zwnj;تر در گلکسی S6 هم استفاده شده بود.</p>\r\n', 10, 20, 1, 1592965561, 1, 0, '2,3', '1,2', 0, 10),
(2, ' تلویزیونLG مدل 24MT45000', 2000, 1800, 19, '<p>این روزها در عمق شکل&zwnj;گیری محصولات چندمنظوره به سر می&zwnj;بریم. گوشی موبایل هوشمندی که قادر است دستور روشن&zwnj;شدن (Start Engine) خودروی هشت&zwnj;سیلندر شما را بدهد یا بعد از یک شام لذت&zwnj;بخش، نقش درگاه مطمئنی را برای پرداخت از کارت نقدی شما بازی کند. در ازدحام چندکاره&zwnj;شدن محصولاتی که پیرامون ما هستند، چندان عجیب نیست اگر یک تلویزیون 24 اینچی، نقش مانیتور را بازی کند یا بالعکس. محصول نه&zwnj;&lrm;چندان جدید ال&zwnj;جی یک تلویزیون &ndash; مانیتور مبتنی بر LED است که در بدنه&zwnj;ای یکپارچه سیاه، نقش&zwnj;آفرینی می&zwnj;کند. دو اسپیکر 5 واتی دارد که برای برنامه&zwnj;های مختلفی که روی شبکه&zwnj;&lrm;های نمایش سراسری پخش می&zwnj;شوند، صدای قابل&zwnj;توجهی تولید می&zwnj;کنند. شما می&zwnj;توانید به جای استفاده از اسپیکر روی کامپیوتر شخصی خود از همین اسپیکرها استفاده کنید. در پشت این قاب، تنوع مناسبی از درگاه&zwnj;های مختلف را خواهید یافت که مشتمل بر ورودی HDMI، کامپوزیت، کامپوننت و یا VGA است. در کنار آن ورودی صدا و درگاه USB را خواهید داشت. این تلویزیون &ndash; مانیتور خوش&zwnj;ساخت که وزن کمی دارد، انتخابی هوشمندانه خواهد بود برای کسانی که می&zwnj;خواهند روی میز کار خود تلویزیون کشورمان را هم تماشا کنند یا پا را فراتر گذاشته و بخواهند کنسول بازی، کامپیوتر و تلویزیون را هم&zwnj;زمان به یک نمایشگر متصل کنند و با هزینه&zwnj;ای معقول، لحظاتی متفاوت داشته باشند.</p>\r\n', 20, 10, 1, 1592965561, 1, 0, '2', '2,1', 0, 30),
(3, ' تبلت مایکروسافت Surface 3', 1000, 700, 11, '<p>تبلت سرفیس پرو 3 از دید مجله تایم به عنوان یکی از 25 نوآوری سال 2014 معرفی شد؛ از این رو، معرفی مدلی جدید و گسترش فروش تبلت&zwnj;های سرفیس از سوی مایکروسافت چندان عجیب نیست. سرفیس 3 دارای صفحه نمایشی 10.8 اینچی با رزولوشن 1280 &times; 1920 پیکسل و نسبت صفحه نمایش 3:2 است. لازم به ذکر است که صفحه نمایش نسخه پرو (Pro) هم همین نسبت تصویر 3:2 را دارد.<br />\r\nمایکروسافت یک پردازنده اینتل اتم x7 چهار هسته&zwnj;ای را برای تبلت جدیدش برگزیده است. از دیگر ویژگی&zwnj;های این تبلت می&zwnj;توان به دوربین پشتی 8 مگاپیکسلی، دوربین جلوی 3.5 مگاپیکسلی، باتری با شارژ 10 ساعت، درگاه Full USB و micorSD اشاره کرد. قلم نوری مشهور مایکروسافت هم در کنار سرفیس 3 حضور دارد.<br />\r\nبر روی این تبلت ویندوز 10 اجرا می&zwnj;شود. همچنین مجموعه کامل آفیس، یک سال سرویس اشتراک آفیس 365 و یک ترابایت حافظه ابری One Drive هم از سرویس&zwnj;های هستند که با خرید این تبلت در اختیارتان قرار می&zwnj;گیرد.<br />\r\nسرفیس 3 در دو کانفیگ اصلی با حافظه&zwnj;های داخلی 64 گیگابایت و 128 گیگابایت به بازار راه پیدا می&zwnj;کند. مدل 64 گیگابایتی 2 گیگابایت رم و مدل 128 گیگابایتی 4 گیگابایت رم دارد. در ضمن این تبلت در مدل LTE هم به بازار راه پیدا می&zwnj;کند. لوازم جانبی مانند Type Cover محبوب مایکروسافت هم برای تبدیل تبلت به لپ&zwnj;تاپ ارایه شده است.</p>\r\n', 10, 30, 1, 1592965561, 1, 0, '2', '2', 0, 50),
(4, 'تبلت آمازون Fire HD 10 ', 1000, 870, 11, '<p>اگر به دنبال بزرگ&zwnj;ترین و مقرون&zwnj;به&zwnj;صرفه&zwnj;ترین تبلت شرکت آمازون هستید که از قدرت پردازشی قابل قبولی برخوردار باشد، مطمئنا &laquo;آمازون فایر اچ&zwnj;دی 10&quot; اولین و تنها انتخاب شما خواهد بود. به&zwnj;طور خلاصه برجسته&zwnj;ترین ویژگی این محصول را می&zwnj;توان در نمایشگر بزرگ، اسپیکرهای باکیفیت و قیمت مناسب آن دانست. بنابراین می&zwnj;توان این دستگاه را مناسب برای کاربرانی دانست که به دنبال تجربه&zwnj;ی بی&zwnj;نظیری از تماشای ویدئو در تبلتی بزرگ هستند.<br />\r\nهمان&zwnj;طور که از نام این محصول پیداست، فایر اچ&zwnj;دی 10 به یک نمایشگر بزرگ 10 اینچی با فناوری IPS مجهز شده و از زوایای دید مطلوبی برخوردار است. آمازون از رزولوشن یکسانی برای دو نسخه&zwnj;ی 8 و 10 اینچی این تبلت در نظر گرفته است. اما به دلیل نمایشگر بزرگ&zwnj;تر نسخه&zwnj;ی 10 اینچی، دقت تصویر 800 &times; 1280 پیکسلی آن تراکم پیکسلی پایین&zwnj; 149 پیکسل بر اینچ را به همراه دارد. تراشه&zwnj;ی مدیاتک نسخه&zwnj;ی MT8135 به همراه دو پردازنده&zwnj;ی دو هسته&zwnj;ای با سرعت&zwnj;های 1.2 و 1.5 گیگاهرتز، مسئولیت اجرای سیستم&zwnj;عامل Fire OS نسخه&zwnj;ی 5 و برنامه&zwnj;های آن را دارند. البته استفاده از رم یک گیگابایتی در این محصول می&zwnj;تواند محدودیت&zwnj;های را برای کاربران این تبلت داشته باشد. از ویژگی&zwnj;های مهم این تبلت می&zwnj;توان به وجود اسپیکرهای استریو به فناوری دالبی و دوربین&zwnj;های 5 و 1 مگاپیکسلی اشاره کرد. همچنین آمازون از یک باتری لیتیوم پلیمری برای این محصول در نظر گرفته که می&zwnj;تواند در کاربری&zwnj;های ترکیبی و مداوم تا بیش از 8 ساعت شارژ نگاه دارد.</p>\r\n', 50, 13, 1, 1592965561, 1, 0, '3', '2', 0, 2000),
(5, 'مانیتور و TV LG 22MA530D', 1000, 500, 19, '<p>&bull; 22MA530D یکی از جدیدترین محصولات ال جی است که در اوایل سال 2014 میلادی به بازار آمده است. این محصول دو کاربرد دارد یعنی هم مانیتور است و هم تلویزیون همچنین قادر است سرگرمی&zwnj;های صوتی و تصویری متنوعی از قبیل برنامه&zwnj;های HD, DVD گردش در اینترنت، بازی&zwnj; و مشاهده ویدیو و عکس&zwnj; را به شما ارایه دهد. پنل این نمایشگر از تکنولوژی IPS بهره می&zwnj;برد که باعث ثبات شدت رنگ و کاهش تغییرات آن می&zwnj;شود بنابراین می&zwnj;توان گفت این قابلیت، رنگ را نزدیک به تصویر اصلی به شما ارایه می&zwnj;دهد. صفحه نمایش IPS این محصول به شما امکان بهره&zwnj;مندی از کیفیت تصویر واقعی بدون تغییر رنگ در حالت ایستاده یا خوابیده را ارایه می&zwnj;کند همچنین تصاویری شفاف با تغییرات نرم و تدریجی رنگ را برای شما به ارمغان می&zwnj;آورد. این نمایشگر شما را از هر محتوایی را از قبیل فیلم، گشت و گذار در اینترنت و انجام بازی&zwnj;های RPG برای مدت زمان طولانی و در عین حال راحت ...</p>\r\n', 100, 50, 1, 1592965561, 1, 0, '3', '2', 0, 0),
(6, 'مانیتور و TV LG 22MA530D', 1000, 500, 19, '<p>&bull; 22MA530D یکی از جدیدترین محصولات ال جی است که در اوایل سال 2014 میلادی به بازار آمده است. این محصول دو کاربرد دارد یعنی هم مانیتور است و هم تلویزیون همچنین قادر است سرگرمی&zwnj;های صوتی و تصویری متنوعی از قبیل برنامه&zwnj;های HD, DVD گردش در اینترنت، بازی&zwnj; و مشاهده ویدیو و عکس&zwnj; را به شما ارایه دهد. پنل این نمایشگر از تکنولوژی IPS بهره می&zwnj;برد که باعث ثبات شدت رنگ و کاهش تغییرات آن می&zwnj;شود بنابراین می&zwnj;توان گفت این قابلیت، رنگ را نزدیک به تصویر اصلی به شما ارایه می&zwnj;دهد. صفحه نمایش IPS این محصول به شما امکان بهره&zwnj;مندی از کیفیت تصویر واقعی بدون تغییر رنگ در حالت ایستاده یا خوابیده را ارایه می&zwnj;کند همچنین تصاویری شفاف با تغییرات نرم و تدریجی رنگ را برای شما به ارمغان می&zwnj;آورد. این نمایشگر شما را از هر محتوایی را از قبیل فیلم، گشت و گذار در اینترنت و انجام بازی&zwnj;های RPG برای مدت زمان طولانی و در عین حال راحت ...</p>\r\n', 100, 50, 1, 1585986547, 1, 0, '3', '2', 0, 0),
(7, 'شیائومی مدل Redmi Note 8 ', 2000, 1800, 4, '<p>گوشی مدل &laquo;Redmi Note 8&raquo; از سری محصولات شرکت مطرح شیائومی است که با پنل&shy; IPS LCD ساخته&zwnj;شده و فاصله لبه صفحه&zwnj;نمایش در آن بسیار کم است. این محصول دارای حسگر اثرانگشت است و نمایشگر آن رزولوشن بالایی در مقایسه با گوشی&zwnj;های معمول موجود در بازار دارد؛ به&zwnj;طوری&zwnj;که در اندازه&zwnj;ی 6.3 اینچی&zwnj;اش، حدود 409 پیکسل را در هر اینچ جا داده است. در گوشی ردمی&zwnj; نوت 8 شیائومی نمایشگر تقریباً تمام قاب جلویی گوشی را پر کرده است. این مشخصه در کنار بدنه&zwnj;ای از جنس شیشه قرار گرفته است که ظاهر چندرنگی و جلوه&shy;&zwnj;ای لوکس به ردمی نوت 8 بخشیده است. این بدنه&shy;&zwnj;ی زیبا در کنار نمایشگر این محصول، با استفاده از Corning Gorilla Glass 5 محافظت می&zwnj;شود تا گوشی در برابر خط&zwnj;وخش ایمن باشد. ویژگی دیگر Xiaomi Redmi Note 8 مجهز شدن به حسگر اثرانگشت است. این فناوری خطوط انگشت شما را با استفاده از فناوری جدید شناسایی می&shy;&zwnj;کند و تنها با لمس انگشت شما قفل گوشی را باز می&shy;&zwnj;کند. اما این پایان کار نیست؛ 4 دوربین که در آن&zwnj;ها سنسور 48 مگاپیکسلی، 8 مگاپیکسلی و دو دوربین 2 مگاپیکسلی قرار دارد در قسمت پشتی این گوشی جای گرفته&zwnj;اند. دوربین&zwnj; سلفی این محصول هم به سنسوری 13 مگاپیکسلی مجهز شده است. قابلیت اتصال به شبکه&shy;&zwnj;های 4G &nbsp;با سرعت کاملاً مطلوب، بلوتوث نسخه&shy;&zwnj;ی 5.0، نسخه&shy;&zwnj;ی 9.0 از اندروید و باتری 4000 میلی آمپرساعتی از دیگر ویژگی&shy;&zwnj;های این گوشی&nbsp;جدید هستند. ازنظر سخت&shy;&zwnj;افزاری هم این گوشی از تراشه&shy;&zwnj;ی SDM665 Snapdragon 66کوالکام بهره می&zwnj;&shy;برد که در آن پردازنده&zwnj;&shy;ای هشت&zwnj;هسته&zwnj;ا&zwnj;ی و قدرتمند قرارگرفته تا بتواند علاوه&zwnj;بر کارهای معمول، از قابلیت&shy;&zwnj;های جدید گوشی&zwnj;های امروزی پشتیبانی کند. گوشی Xiaomi Redmi Note 8 محصولی بسیار زیبا و با ارزش خرید بالاست که به نظر می&zwnj;رسد محبوبیت بالایی را بین کاربران به خود اختصاص خواهد داد.</p>\r\n', 25, 10, 0, 0, 0, 0, '1,2', '1', 0, 0),
(8, ' سامسونگ  Galaxy A10s ', 4000, 3900, 4, '<p>گوشی موبایل &laquo;Galaxy A10s&raquo; از سری تولیدات مقرون&zwnj;به&zwnj;صرفه&zwnj; سامسونگ است که شباهت زیادی به گوشی Galaxy A10 دارد اما با ویژگی&zwnj;هایی مانند باتری قدرتمندتر، حسگر اثرانگشت و 2 دوربین اصلی به&zwnj;روزتر شده است. تفاوت اصلی این گوشی با بیشتر اعضای خانواده A در استفاده از پنل IPS برای صفحه&zwnj;نمایش این محصول است. گوشی موبایل Galaxy A10s با صفحه&zwnj;نمایش IPS و پنل LCD به بازار عرضه شده است تا با قیمت تمام شده کم&zwnj;تری به دست طرفداران گوشی&zwnj;های سامسونگ برسد. البته سامسونگ همچنان تلاش کرده است حاشیه را در این تولید جدید خود تا حد امکان کم کند. این گوشی قاب پشتی از جنس پلاستیک دارد و قاب جلویی آن را شیشه پوشانده که البته جلوه&zwnj;ی زیبایی به گوشی داده است. این محصول سامسونگ با جدیدترین نسخه از سیستم&zwnj;عامل اندروید (Pie) روانه بازار شده است تا محصولی به&zwnj;روز و مدرن به حساب بیاید. صفحه&zwnj;نمایش استفاده&zwnj;شده در این گوشی 6.2&nbsp;اینچ با رزولوشن HD+ است که با استفاده از 16 میلیون رنگ را به نمایش می&zwnj;گذارد. این صفحه&zwnj;نمایش در هر اینچ 271 پیکسل را نشان می&zwnj;دهد و نسبت تصویر در آن &nbsp;19:9است. تراشه&zwnj;ی این محصول، Helio P22 مدیاتک است که به همراه &nbsp;2 گیگابایت رم عرضه می&zwnj;شود. این تراشه برای بازکردن چندین برنامه به صورت هم&zwnj;زمان و تماشای ویدئو مناسب است و نمی&zwnj;توان از آن انتظار اجرای بازی&zwnj;های سنگین را داشت. تراشه&zwnj;ی گرافیکی PowerVR GE8320 هم برای این محصول درنظر گرفته شده است. این گوشی با ظرفیت 32 گیگابایتی عرضه شده است. دوربین اصلی A10s سنسور 13مگاپیکسلی دارد و فلش LED برخوردار است. این حسگر از نوع عریض (Wide) است و قابلیت عکاسی HDR را هم دارد. در کنار این حسگر یک سنسور عمق 2 مگاپیکسلی قرار گرفته است. دوربین سلفی 8مگاپیکسلی هم در قاب جلویی این گوشی به کار گرفته شده است. باتری 4000 میلی&zwnj;آمپرساعتی، پشتیبانی از نسخه پنجم از فناوری بلوتوث، درگاه ارتباطی microUSB و جک 3.5 میلی&zwnj;متری صدا هم از دیگر مشخصات این تازه&zwnj;وارد است که نشان از محصولی اقتصادی و مقرون&zwnj;به&zwnj;ضرفه دارند. خرید این گوشی به آن دسته از کاربران توصیه می&zwnj;شود که می&zwnj;خواهند گوشی ارزان اما مدرن برای انجام کارهای روزمره داشته باشند. گفتنی است سامسونگ برای این مدل از محصولات خود، حسگر اثرانگشت را هم در قاب پشتی به&zwnj;کار گرفته است.</p>\r\n', 50, 5, 0, 0, 0, 0, '1,2', '1', 0, 0),
(9, 'سامسونگ مدل Galaxy S20 ', 3000, 2750, 4, '<p>چندسالی است که معرفی سری محصولات بالارده &laquo;Galaxy S&raquo; در صدر اخبار مهم برای طرفداران دنیای فناوری اطلاعات قرار گرفته&zwnj;اند. گوشی موبایل &laquo;Samsung Galaxy S20 Plus&raquo; در فوریه 2020 روانه بازار شد تا ادامه دهنده راه این پرچم&zwnj;داران سامسونگ باشد. شاید مهم&zwnj;ترین تفاوت این محصول با برادر بزرگ&zwnj;ترش (Galaxy S20 Ultra) نبود سنسور پریسکوپ و باتری کمی&zwnj; کوچکتر باشد. روکش محافظ Corning Gorilla Glass 6 این گوشی درکنار گواهینامه IP68 نشان از کیفیت ساخت بالای آن دارد. حسگر اثر انگشت این گوشی از نوع اولتراسونیک است و در زیر صفحه&zwnj;نمایش کار گذاشته شده است تا به&zwnj;&zwnj;سختی بتوان از عملکرد آن ایرادی گرفت. صفحه&zwnj;نمایشی با فناوری جدید Dynamic AMOLED 2X و تراکم پیکسلی 525 پیکسل هم با جزئیات و وضوح تصویر عالی ترجمه می&zwnj;شود. تراشه&zwnj;ی این محصول، اگزنوس 990 سامسونگ است که به&zwnj;عنوان تراشه&zwnj;ای 7 نانومتری عملکرد فوق&zwnj;العاده بهینه&zwnj;ای دارد. این تراشه که به همراه 8 گیگابایت رم عرضه می&zwnj;شود، یکی از قوی&zwnj;ترین تراشه&zwnj;های موجود در حال حاضر است و برای انجام بازی&zwnj;های سنگین و باز کردن چندین برنامه به&zwnj;صورت هم&zwnj;زمان و تماشای ویدئو کاملاً مناسب است و کم نمی&zwnj;آورد. تراشه&zwnj;ی گرافیکی Mali-G77 MP11 هم برای پخش ویدئو و بازی مناسب است. در این محصول هم دوربین قاب پشتی از چهار سنسور پرقدرت تشکیل شده است. سنسورهایی با رزولوشن 12، 64، 12 و حسگر TOF که هر آنچه از دوربین یک گوشی موبایل انتظار دارید را برآورده می&zwnj;کند. وجود درگاه USB Type-C، امکان شارژ بی&zwnj;سیم با سرعت بسیار بالا، پشتیبانی از فناوری شارژ سریع PD و باتری پرقدرت 4500 میلی&zwnj;آمپرساعتی از دیگر ویژگی&zwnj;های این پرچم&zwnj;دار سامسونگ است. این محصول خوش&zwnj;ساخت سامسونگ ازنظر ابعاد از نسخه Ultra کوچکتر و از S20 بزرگتر است اما سخت&zwnj;افزار مشابهی با برادر بزرگ&zwnj;تر خود دارد. اگر بخواهیم به سخت&zwnj;افزار گلکسی اس 20 پلاس نگاهی داشته باشیم، با یکی از دوست&zwnj;داشتنی&zwnj;ترین محصولات موجود در بازار روبرو می&zwnj;شویم که به&zwnj;نظر می&zwnj;رسد سهم قابل&zwnj;توجهی از بازار گوشی&zwnj;های بالارده را به خود اختصاص خواهد داد.</p>\r\n', 65, 8, 0, 0, 0, 0, '1', '2,1', 0, 0),
(10, 'سامسونگ مدل Galaxy A71 ', 8000, 7200, 4, '<p>گوشی موبایل گلکسی A71 سامسونگ یکی از قدرتمندترین محصولات میان&zwnj;رده موجود در بازار است که حسگر انگشت زیرصفحه نمایش و دوربین چهار&zwnj;گانه روانه بازار شده است. سامسونگ سال 2019 را با متنوع کردن هرچند بیشتر سری گوشی&zwnj;های A خود آغاز کرد. این سری از تولیدات سامسونگ به داشتن صفحه&zwnj;نمایش بسیار با کیفیت AMOLED و دوربین&zwnj;هایی با امکانات بالا شهرت دارند. گوشی موبایل Galaxy A71 با صفحه&zwnj;نمایش سوپر آمولد طراحی شده است و ظاهر هم زیبایی دارد. سامسونگ تلاش کرده است حاشیه را در این تولید جدید خود تا حد امکان کم کند. این گوشی قاب پشتی از جنس پلاستیک دارد و قاب جلویی آن را شیشه پوشانده که البته جلوه&zwnj;ی زیبایی به گوشی داده است. این محصول سامسونگ با جدیدترین نسخه از سیستم&zwnj;عامل اندروید روانه بازار شده است تا از هر نظر گوشی مدرن به&zwnj;حساب بیاید. صفحه&zwnj;نمایش استفاده&zwnj;شده در این گوشی 6.7 اینچ با رزولوشن FullHD+ است که با استفاده از فناوری Super AMOLED و پنل OLED تصاویر شفاف و بی&zwnj;نظیری را به نمایش می&zwnj;گذارد. این صفحه&zwnj;نمایش در هر اینچ 393 پیکسل را نشان می&zwnj;دهد که این یعنی جزئیات و وضوح تصویر عالی است. همچنین روکش این نمایشگر لایه&zwnj;ی محافظ Corning Gorilla Glass 3 است که از خط&zwnj;وخش و ضربه جلوگیری می&zwnj;کند. تراشه&zwnj;ی این محصول،Qualcomm SDM730 Snapdragon 730 از تراشه&zwnj;های 8 نانومتری کوالکام است که به همراه 6 گیگابایت رم عرضه می&zwnj;شود. این تراشه برای بازکردن چندین برنامه به صورت هم&zwnj;زمان و تماشای ویدئو کاملاً مناسب است. تراشه&zwnj;ی گرافیکی Adreno 618 هم برای پخش ویدئو و بازی در این محصول درنظر گرفته شده است. این گوشی در ظرفیت 128 گیگابایتی عرضه شده است و با استفاده از یک کارت حافظه&zwnj;ی جانبی قادر خواهید بود حافظه داخلی را تا یک ترابایت دیگر هم افزایش دهید. دوربین اصلی A71 سنسور 64 مگاپیکسلی دارد و فلش LED برخوردار است. سنسور 12 مگاپیکسلی دیگر از نوع فوق عریض (Ultrawide) و سنسور 5 مگاپیکسلی عمق و لنز ماکرو هم در کنار این دوربین اصلی مجموعه دوربین&zwnj;های قاب پشتی A71 را تشکیل داده&zwnj;اند. دوربین سلفی 32مگاپیکسلی هم در قاب جلویی این گوشی به کار گرفته شده است. باتری 4500 میلی&zwnj;آمپرساعتی، پشتیبانی از فناوری شارژ سریع 25 واتی، درگاه USB Type-C و حسگر اثرانگشت اپتیکال در زیر صفحه&zwnj;نمایش هم از دیگر ویژگی&zwnj;های این تازه&zwnj;وارد است.</p>\r\n', 34, 10, 0, 0, 0, 0, '2,1', '1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attr`
--

CREATE TABLE `tbl_product_attr` (
  `id` int(255) NOT NULL,
  `idproduct` int(255) NOT NULL,
  `idattr` int(255) NOT NULL,
  `idval` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_product_attr`
--

INSERT INTO `tbl_product_attr` (`id`, `idproduct`, `idattr`, `idval`) VALUES
(13, 17, 2, 14),
(14, 17, 4, 10),
(15, 17, 11, 17),
(16, 17, 12, 21),
(17, 17, 15, 20),
(18, 16, 2, 13),
(19, 16, 4, 8),
(20, 16, 11, 17),
(21, 16, 12, 22),
(22, 16, 15, 19),
(23, 1, 17, 29),
(24, 1, 18, 27),
(25, 1, 19, 25),
(26, 1, 20, 23);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `id` int(255) NOT NULL,
  `matn` text COLLATE utf8_persian_ci NOT NULL,
  `tarikh` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `userid` int(255) NOT NULL,
  `parent` int(255) NOT NULL,
  `idproduct` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`id`, `matn`, `tarikh`, `userid`, `parent`, `idproduct`) VALUES
(1, 'سوال اول در مورد کیفیت دوربین است', '20/02/1398', 1, 0, 1),
(2, 'پاسخ سوال اول این است که کیفیت دوربین....', '21/02/1398', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider1`
--

CREATE TABLE `tbl_slider1` (
  `id` int(255) NOT NULL,
  `img` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_slider1`
--

INSERT INTO `tbl_slider1` (`id`, `img`, `link`, `title`) VALUES
(1, 'public/images/slider1.jpg', 'http://clicksite.ir', 'لوازم بهداشتی'),
(5, 'public/images/slider5.jpg', 'http://clicksite.ir', 'اسباب بازی'),
(6, 'public/images/slider/1472643205.jpg', 'http://clicksite.ir', 'لوازم خانگی'),
(7, 'public/images/slider/1472643237.jpg', 'http://clicksite.ir', 'انواع گوشی همراه'),
(8, 'public/images/slider/1472643259.jpg', 'http://clicksite.ir', 'انواع کفش');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(255) NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `family` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `code_meli` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_persian_ci NOT NULL,
  `tavalod` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `address` text COLLATE utf8_persian_ci NOT NULL,
  `jensiat` int(1) NOT NULL,
  `khabarname` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `tarikh` varchar(30) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `password`, `family`, `code_meli`, `tel`, `mobile`, `tavalod`, `address`, `jensiat`, `khabarname`, `level`, `tarikh`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', '111111111', '021665656', '09396562210', '1360/12/15', 'آدرس سکونت', 2, 0, 1, ''),
(2, 'mehdi2@gmail.com', '1234', 'mehdi', '111111111', '021665656', '09396562210', '1360/12/15', 'آدرس سکونت', 1, 0, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_address`
--

CREATE TABLE `tbl_user_address` (
  `id` int(255) NOT NULL,
  `userid` int(255) NOT NULL,
  `family` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `tel` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `ostan` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `mahale` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `address` text COLLATE utf8_persian_ci NOT NULL,
  `codeposti` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `ostan_name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `city_name` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_user_address`
--

INSERT INTO `tbl_user_address` (`id`, `userid`, `family`, `mobile`, `tel`, `ostan`, `city`, `mahale`, `address`, `codeposti`, `ostan_name`, `city_name`) VALUES
(3, 1, 'محمد امینی', '09396562210', '021666335', '30', '971', '', 'خیابان 2 پلا 10', '21287192718', 'خراسان جنوبي', 'بیرجند'),
(4, 1, 'محمد امینی', '09396562210', '021666335', '1', '1', '', 'خیابان 2 پلا 10', '21287192718', 'تهران', 'تهران'),
(5, 2, 'مهدی باقری', '09877665554', '021233838393', '1', '1', '', 'گیشا خیابان دوم پلاک 4', '767677554664', 'تهران', 'تهران');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id` int(255) NOT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id`, `title`) VALUES
(1, 'مدیر اصلی'),
(2, 'کارمند'),
(3, 'کاربر عادی');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_attr`
--
ALTER TABLE `tbl_attr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attr_val`
--
ALTER TABLE `tbl_attr_val`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_basket`
--
ALTER TABLE `tbl_basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_code`
--
ALTER TABLE `tbl_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment_param`
--
ALTER TABLE `tbl_comment_param`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_favorit`
--
ALTER TABLE `tbl_favorit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_garantee`
--
ALTER TABLE `tbl_garantee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_naghd`
--
ALTER TABLE `tbl_naghd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_option`
--
ALTER TABLE `tbl_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pay_type`
--
ALTER TABLE `tbl_pay_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post_type`
--
ALTER TABLE `tbl_post_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_attr`
--
ALTER TABLE `tbl_product_attr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider1`
--
ALTER TABLE `tbl_slider1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_attr`
--
ALTER TABLE `tbl_attr`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_attr_val`
--
ALTER TABLE `tbl_attr_val`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_basket`
--
ALTER TABLE `tbl_basket`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_code`
--
ALTER TABLE `tbl_code`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_comment_param`
--
ALTER TABLE `tbl_comment_param`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_favorit`
--
ALTER TABLE `tbl_favorit`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_garantee`
--
ALTER TABLE `tbl_garantee`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_naghd`
--
ALTER TABLE `tbl_naghd`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_option`
--
ALTER TABLE `tbl_option`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_order_status`
--
ALTER TABLE `tbl_order_status`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_pay_type`
--
ALTER TABLE `tbl_pay_type`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post_type`
--
ALTER TABLE `tbl_post_type`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product_attr`
--
ALTER TABLE `tbl_product_attr`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_slider1`
--
ALTER TABLE `tbl_slider1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user_address`
--
ALTER TABLE `tbl_user_address`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
