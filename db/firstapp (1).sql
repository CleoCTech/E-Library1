-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 07:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firstapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Hi', 1, '2020-01-05 11:08:15', '2020-01-20 08:51:04'),
(2, 3, 2, 'hi', 1, '2020-01-12 08:55:59', '2020-01-20 08:51:04'),
(3, 3, 2, 'hi', 1, '2020-01-12 10:32:29', '2020-01-20 08:51:04'),
(4, 3, 2, 'sasaaa ,mnd niojko kon kmji', 1, '2020-01-12 10:32:42', '2020-01-20 08:51:04'),
(5, 3, 2, 'wf knkn  knpkjl', 1, '2020-01-12 10:32:49', '2020-01-20 08:51:04'),
(6, 3, 2, 'kkjipk', 1, '2020-01-12 11:05:46', '2020-01-20 08:51:04'),
(7, 2, 3, 'dsgsg', 1, '2020-01-12 11:05:55', '2020-01-20 08:57:59'),
(8, 2, 3, 'afgs', 1, '2020-01-12 11:06:04', '2020-01-20 08:57:59'),
(9, 3, 2, 'sasa', 1, '2020-01-12 11:10:06', '2020-01-20 08:51:04'),
(10, 2, 3, 'poa', 1, '2020-01-12 11:10:35', '2020-01-20 08:57:59'),
(11, 3, 2, 'hi', 1, '2020-01-12 11:45:39', '2020-01-20 08:51:04'),
(12, 3, 2, 'hi', 1, '2020-01-12 11:46:08', '2020-01-20 08:51:04'),
(13, 3, 2, 'ggggg', 1, '2020-01-12 11:48:42', '2020-01-20 08:51:04'),
(14, 3, 2, 'hhhhh', 1, '2020-01-12 11:49:29', '2020-01-20 08:51:04'),
(15, 2, 3, 'tyt', 1, '2020-01-12 11:50:01', '2020-01-20 08:57:59'),
(16, 3, 2, 'u899', 1, '2020-01-12 11:54:42', '2020-01-20 08:51:04'),
(17, 3, 4, 'hi', 1, '2020-01-15 05:14:21', '2020-01-15 05:49:05'),
(18, 3, 4, 'sasaa', 1, '2020-01-15 05:14:31', '2020-01-15 05:49:05'),
(19, 4, 3, 'poa sana, how can help you', 1, '2020-01-15 05:16:24', '2020-01-15 05:28:41'),
(20, 3, 4, 'Thank you for quick response', 1, '2020-01-15 05:17:57', '2020-01-15 05:49:05'),
(21, 3, 4, 'i really have this problem ...', 1, '2020-01-15 05:18:11', '2020-01-15 05:49:05'),
(22, 4, 3, 'Okay am listening', 1, '2020-01-15 05:18:23', '2020-01-15 05:28:41'),
(23, 3, 4, 'Since i ever jpined in this institution i have never been at peace..', 1, '2020-01-15 05:19:08', '2020-01-15 05:49:05'),
(24, 3, 4, 'i mean life is always difficult to me and i think am loosing hope now...', 1, '2020-01-15 05:19:44', '2020-01-15 05:49:05'),
(25, 4, 3, 'No, do not loose hope, i am here to help you', 1, '2020-01-15 05:20:11', '2020-01-15 05:28:41'),
(26, 4, 3, 'Me personally', 1, '2020-01-15 05:20:21', '2020-01-15 05:28:41'),
(27, 3, 4, 'Okay thank you will be gald', 1, '2020-01-15 05:20:33', '2020-01-15 05:49:05'),
(28, 3, 4, 'glad', 1, '2020-01-15 05:20:35', '2020-01-15 05:49:05'),
(29, 4, 3, 'They say hope is the only thing that should never loose even if you have lost everything,,', 1, '2020-01-15 05:21:35', '2020-01-15 05:28:41'),
(30, 4, 3, 'Okay now share', 1, '2020-01-15 05:21:54', '2020-01-15 05:28:41'),
(31, 4, 3, 'Hey are you there?', 1, '2020-01-15 05:26:23', '2020-01-15 05:28:41'),
(32, 3, 2, 'hjfgyfty6j', 1, '2020-01-16 04:02:27', '2020-01-20 08:51:04'),
(33, 2, 3, 'hey', 1, '2020-01-19 16:16:51', '2020-01-20 08:57:59'),
(34, 2, 3, 'how are you', 1, '2020-01-19 16:16:59', '2020-01-20 08:57:59'),
(35, 3, 2, 'am fine', 1, '2020-01-19 16:17:04', '2020-01-20 08:51:04'),
(36, 3, 2, 'okay', 1, '2020-01-19 16:17:11', '2020-01-20 08:51:04'),
(37, 3, 2, 'oak', 1, '2020-01-19 16:17:14', '2020-01-20 08:51:04'),
(38, 3, 2, 'hey', 1, '2020-01-20 08:48:22', '2020-01-20 08:51:04'),
(39, 2, 3, 'hey hey', 1, '2020-01-20 08:48:29', '2020-01-20 08:57:59'),
(40, 3, 2, 'okay', 1, '2020-01-20 08:48:35', '2020-01-20 08:51:04'),
(41, 2, 3, 'juigu9yoihkjopl', 1, '2020-01-20 08:48:40', '2020-01-20 08:57:59'),
(42, 3, 2, 'ugiuhik', 1, '2020-01-20 08:48:43', '2020-01-20 08:51:04'),
(43, 2, 3, 'gyfyugihkj', 1, '2020-01-20 08:48:47', '2020-01-20 08:57:59'),
(44, 3, 2, 'ugf8ytiu', 1, '2020-01-20 08:48:49', '2020-01-20 08:51:04'),
(45, 2, 3, 'yut8y89i', 1, '2020-01-20 08:48:52', '2020-01-20 08:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_07_28_171458_create_posts_table', 1),
(12, '2019_08_01_142204_add_user_id_to_posts', 1),
(13, '2019_08_03_212450_add_cover_image_to_posts', 1),
(14, '2019_09_29_023353_create_messages_table', 1),
(15, '2019_11_05_023120_create_websockets_statistics_entries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(1, 'School Drop Out Problem', '<p>Introduction</p>\r\n\r\n<p>In the global perspective, it is an incontestable fact that the progress of a nation is highly dependent on the education of their citizens. It is widely acknowledged that education is the most important factors contributing to poverty alleviation.&nbsp;<a href=\"http://www.rroij.com/educational-studies.php\" target=\"_blank\">Education</a>&nbsp;plays a central role and has a cross cutting impact on all aspects of human life. It is a vital investment for human and economic development. Dropping out is defined by National Center for Education&nbsp;<a href=\"http://www.rroij.com/statistics-and-mathematical-sciences.php\" target=\"_blank\">Statistics</a>&nbsp;as leaving school without completing a high school education or equivalent credential such as a General Educational Development (GED) certificate. Quality education can play dynamic role in productivity, social and economic growth of a country. In developing countries less attention is paid to improve quality of education and provision of education to people belongs to any class. In this regard, a UNESCO report (2000) on the state of the world&rsquo;s children, points out, that about one thirty million&nbsp;<a href=\"http://childhood-obesity.imedpub.com/\" target=\"_blank\">children</a>&nbsp;in the developing world denied their right to education through Dropping out. In China dropout rate in rural schools is about 40 percent and the reason of dropout is that students are unhappy with their studies [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#1\">1</a>]. In Asia situation is not different from other developing countries. A study in India researcher found the reasons of students&rsquo; school dropouts, In India due to financial problems and expenses dropout rate is high. So students drop out their school to fulfill their financial needs [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#2\">2</a>]. So students&rsquo; dropout their school to fulfill their&nbsp;<a href=\"https://www.omicsonline.org/business-and-financial-affairs.php\" target=\"_blank\">financial</a>&nbsp;needs. Another reason of students&rsquo; dropouts is that some parents are not interested in education for their children. Dropout rate in Bangladesh is also high as in other developing countries. According to Bangladesh News.Com the year 2005 to 2006, 1.7 million students were enrolled in secondary education level but about 0.7 million students&rsquo; dropout without completing their secondary education and higher secondary education examination in 2007. At university level dropout rate is not different from secondary and higher secondary level. ASA University of Bangladesh start working in 2007 and number of enrolled students was larger than other private universities of Bangladesh. If there is less contribution of parents&rsquo; interest for their Childs&rsquo; education then there are greater possibilities of student dropout [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#3\">3</a>]. Students&rsquo; dropouts were lower in such schools that offered second shift program [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#4\">4</a>]. In European Union students drop out due to their weak financial position before completing their higher education course. A study on USA identified that many student dropout their school because students found their classes boring, absence from school for long time and unable to manage their work, consuming time with those who are not interested in study, unnecessary freedom to do everything and failure in class were the main reasons for which student left their school during their education [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#5\">5</a>,<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#6\">6</a>] Substandard primary education system, deficiency of training in teaching staff, and parent teacher relationship are the major reasons of dropouts in Pakistan [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#7\">7</a>]. Researcher stated that in Pakistan twenty seven million children does not entered in any school and seven million does not get primary education [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#8\">8</a>]. The UNDP Millennium Development Goals report states that Pakistan will not be able to achieve its education goals until 2015. Approximately 50% of enrolled children drop out before completing primary education. In 1977 study shown that 79% of dropouts are from low-income families [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#9\">9</a>]. Pakistan has high dropout rate, large number of students stop going to school without completing their degree and the causes of dropout are corporal punishment, and this physical punishment is considered a beneficial method to make their students obedient. According to the Society for the Protection of the Rights of the Child (SPARC) Islamabad, a local (NGO) advocating the rights of children, 35,000 high school pupils in Pakistan dropout of the education system each year due to corporal punishment. In South Asian countries Pakistan ranked on top of list, where only 10% of population terminating their 12 years of schooling [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#10\">10</a>]. In Pakistan only 2% of budget is dedicated to education sector. This situation is not satisfactory for education system of a country. &ldquo;<em>Dropping out, with its many implications, remains a common term to use in describing the failure of schools and their students</em>&rdquo; [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#11\">11</a>]. Studies suggest that there is need for research in the area of student dropout that how does it affects the economic conditions of a country. Researchers also argue on conducting a study on comparative analysis of dropout rate in different countries. Researchers argue on conducting research on a larger scale to find out the causes of dropout and their effect on economic conditions [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#12\">12</a>].</p>\r\n\r\n<p>Following are the research questions extracted for this study,</p>\r\n\r\n<p>&bull; What are the causes of student dropouts?</p>\r\n\r\n<p>&bull; What are the effects of student dropouts on economic conditions?</p>\r\n\r\n<p>&bull; What are the ways to reduce student dropouts?</p>\r\n\r\n<p>&bull; What are drop outs situations in different countries?</p>\r\n\r\n<p>Following are the research objectives for this study,</p>\r\n\r\n<p>&bull; To find out causes of student drop outs</p>\r\n\r\n<p>&bull; To find out effects of students&rsquo; dropouts on economic conditions</p>\r\n\r\n<p>&bull; To find out ways to reduce students &lsquo;dropouts</p>\r\n\r\n<p>&bull; To do a comparative analysis on students dropouts among different countries</p>\r\n\r\n<p>Findings of this research would be helpful for policy maker to control dropouts in educational institutes. These findings would be helpful for making policies to promote quality education in country that will help to reduce illiteracy and increase literacy rate and economic progress. Quality education is most desirable objective of a country [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#13\">13</a>]. It is fact that the country will grow where a large proportion of its budget is allocated on education.</p>\r\n\r\n<p>Literature Review</p>\r\n\r\n<p>Student&rsquo;s dropout is a serious issue for any country. Students Drop out means discontinuing schooling for financial and practical reasons and disappointment with their social system and examination results. Generally, dropping out states the situation when student departure school before the completion of their graduation degree and does not join any university. It is not necessary that student always dropped out, sometime students&rsquo; stop attending their school by discharging registration. Student dropout means leaving school without completing their basic early education and secondary education. Student dropout problem is faced by all developed and developing countries of the world. In developing countries dropout rate are remarkably high, even for the basic school going children [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#14\">14</a>]. Large numbers of children complete their high school education in many developed countries, but in United States more than one million students drop out each year. Seven thousand students in USA left their school in a day.</p>\r\n\r\n<p><strong>Student dropouts in south Subcontinent</strong></p>\r\n\r\n<p>Causes of students&rsquo; dropouts vary region to region [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#15\">15</a>]. In South Asia dropout rate is high in some countries like Pakistan, Bangladesh, India and Sri Lanka. If people in subcontinent want their children to grow, take part in productivity and be good citizen then countries in Subcontinent must focus on their education system and should make sure the attendance of children in their schools and promote awareness regarding education for those who never attended school. There is inverse relationship between level of social capital and trend in students&rsquo; dropouts [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#16\">16</a>]. UNICEF reported that around 7.57 million children who are 5 to 10 years old never attend school in South Asia, and 25.29 million children should study in secondary education but they does not in school at all. Figures of dropout rate reflected that Subcontinent region is top second region where children do not educating and dropping out. Sub-Sahara Africa is on the top of list by dropping out rate. Researcher discussed the reasons of low educational position in Pakistan, researcher argued that the major factor that contributes backwardness of educational system is fragmented and all the boards working independently, and have no coordination between regulatory authorities [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#17\">17</a>]. Subcontinent got substantial success in establishment of proper education system and these efforts results in an increase in enrolment of children for primary level education. In 2011 about 90% students enrolled in primary schools.</p>\r\n\r\n<p><strong>Causes of student dropouts</strong></p>\r\n\r\n<p>Financially weak students have high possibility to dropout .Poor attendance was major reason of students&rsquo; dropout without completion [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#18\">18</a>]. Researcher also found that those students also dropout whose parents do not interested in their study [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#19\">19</a>]. Researcher studied that students dropouts when they depressed by their poor are depressed by their poor academic performance [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#20\">20</a>]. Study explores the relationship of students&rsquo; dropouts with social, institutional, economic and personal aspects. Findings of previous research shows that there are many socio-economic factors such as high cost of institutes, parents are not interested to educate their children instead they want their children to work and earn, early marriage, security problems that caused the drop out of students from polytechnic institutes [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#21\">21</a>].</p>\r\n\r\n<p>Children having different age and capacities study in a joint classroom, without adoption of appropriate teaching methods, learning and induce to participate in the School.Researcher examined that mostly the students who belonged to poor family background students&rsquo; dropouts, their parents were uneducated and earned less income that was not sufficient to fulfill their expenses. Researcher also find that students drop their school due to poor health caused by poor diet and starvation, distance between their institute and house or from their town, lack of awareness and lack of teaching staff are common causes of dropouts. Findings of previous studies shown that inequalities of education system and poor family background also helps in student dropout [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#22\">22</a>]. Describing the causes of students&rsquo; dropouts researcher founded that Distance to schools, bad quality of the education, inadequate school environment and building, overloaded class rooms, improper languages of teaching, carelessness of teachers and security problem in girls school, were common causes which increase school dropouts [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#23\">23</a>]. In Pakistan there are so many children who leave the schools without completing their education. With other reasons corporal punishment is one of the major reasons to contribute high rate drop outs in Pakistan. Open and good atmosphere increased the chances of students to learn more and lower the students&rsquo; dropouts [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#24\">24</a>]. Dropout rate increased due to boring environment of school and outsides of buildings, lack of facilities in school and bad physical atmosphere. Besides other factor poverty highly contributes to students dropouts [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#24\">24</a>].</p>\r\n\r\n<p><strong>Effect of student dropouts on economy</strong></p>\r\n\r\n<p>Education is vital for economic development. According to Vision 2030, &ldquo;Education is key component of economic growth because it has directly influence on entrepreneurship, productivity growth and then increases employment opportunities and women empowerment. Education helps in making potential youth for the enhancement of ability, creativity and systematically skills to contest with the fast changing Global inclination. Students drop outs reduces literacy rate of country and non-innovative environment.</p>\r\n\r\n<p>Due to Students drop outs economy also have to pay cost; class of students&rsquo; dropouts will cost the country over $200 billion during their existence in lost earnings and unrealized tax revenue every year [25]. People without education unable to get jobs and more likely to spend their lives jobless or on government assistance. These students often struggle with poverty, abuse or neglect in their homes. It is imperative investment for human and economic development. This human capital accelerates economic activity and development. Extensive literature review has been conducted to conceptualize the theme of study, and to generalize the concept to a wider range of population. Comparative analysis of past studies has been conducted in order to find out various causes of students dropouts. Researcher tries to emphasize on logical reasoning while discussing the objectives and giving suggestions in the study.</p>\r\n\r\n<p>Discussion</p>\r\n\r\n<p>In Pakistan students&rsquo; dropout rate is high and less attention is paid to this serious issue. In Pakistan many students does not enrolled in schools and 50 percent of students out of 70 percent are lie between the ages of 5 to nine years. Approximately one student out of three students left his school. And 30 percent students out of 50 percent pass their primary level (NCHD, 2010). Overall in Pakistan students&rsquo; dropouts&rsquo; rate is 50% for both girls and boys [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#26\">26</a>]. Students drop outs rate for girls was 30% and 27% for boys in South Africa, and that rate was examined for students, who dropped out due to school dues before their matriculation [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#27\">27</a>]. Forty five out of hundred children in Bangladesh, enrolled in grade one are expected to drop out prior to their primary school completion [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#28\">28</a>]. In India 40% children dropout their school before completing their middle standard education [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#29\">29</a>]. According to UNICEF 80 Million out of 200 million enrolled students drop out before the completion of their elementary education in India. Study investigates the causes of female students&rsquo; dropouts in rural areas of Pakistan. Researchers found weak financial position of families as the most common reason of dropping out from school at primary education level. Research also found parent&rsquo;s and student&rsquo;s interest, death of parent/s&rsquo; and low investment on girl&rsquo;s education [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#26\">26</a>], On the other hand researcher find out pressure of study as most important reason that cause student dropout in Bangladesh. Financial problems reported as second most important factor and migration at third factor [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#30\">30</a>]. Researcher found the causes of students&rsquo; dropouts, such as bad health, poor diet or deficiency of encouragement to learn [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#24\">24</a>]. In both researches financial problems reported as common and major cause of students drop out in Bangladesh and in Pakistan. In China most of the students in rural areas students&rsquo; dropout their study because they are unhappy with their study, lack of basic facilities in schools, uninteresting teaching methods, lack of audio classroom, restrictions on the free use of library for students, science laboratories were not furnished with instruments and small in size as compare to number of students in a class, and unavailability of computers in schools. Drop outs effect society in several ways. Students&rsquo; dropout rate threatens future economic growth and the development of democratic nation [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#31\">31</a>]. Reduce political contribution, excess in demand for social services, increased rate of crime and poor health levels are the factors that contribute to major social costs of dropping out of school. Lower wages, unemployment prospects, and possibility of health issues are consequences of student dropouts [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#32\">32</a>]. Different researchers examined the ways to reduce students&rsquo;dropout rate. Many countries have made an outstanding effort towards inclusive education by adapting their educational practices and strategies [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#33\">33</a>,<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#34\">34</a>]. Researcher argued that this broad pattern of teaching training programme, the quantity as well as quality of education will be ensured because this productive effort will raise the development of a society, It would contributes the strong and advanced entities in society [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#34\">34</a>]. All these efforts would positively impact economic development. Comprehensive education recognized as an exclusive method for attainment EFA (education for all) goals by providing free primary education to all girls and boys [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#35\">35</a>].</p>\r\n\r\n<p>Conclusion</p>\r\n\r\n<p>This study explores the causes of students drop outs. On the basis of comparative analysis of different countries on reasons of students dropouts it was clear that students&rsquo; dropouts in schools is not due to a single reason, there are different reasons of this problem but these reasons are similar in nature that cause students&rsquo; dropouts in different countries. Early marriages, security problems and inability of bearing education expenses are major causes of Students&rsquo; dropouts [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#36\">36</a>]. The major reason conducted by all the studies is weak financial and economic position of families and inability to afford educational expenditures, lack of basic facilities in schoolslike computer lab, science laboratory, library, electricity, clear drinking water and furniture. Low financial position reported as major cause of students&rsquo; dropouts [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#26\">26</a>]. Parents force their daughters to drop their school [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#37\">37</a>]. On the base of analysis following conclusion can be draw on the reasons of students dropouts.</p>\r\n\r\n<p>Suggestions and Recommendation</p>\r\n\r\n<p>To control the worse satiation of students&rsquo; dropouts from educational institutes Govt should take some remedial measure, such as</p>\r\n\r\n<p>&bull; Government should ensure the attendance of teachers in schools to run academic activities.</p>\r\n\r\n<p>&bull; Establishment of school with all basic Facilities such as; furniture, electricity, water and computer and science lab [38].</p>\r\n\r\n<p>&bull; Establishment of teachers training programs to trained the teacher to compete with international level of education.</p>\r\n\r\n<p>&bull; Community awareness seminar should be launch to develop the interest of parent and students towards study and avoid school dropout.</p>\r\n\r\n<p>&bull; Abolish Influences external powers from Schools which have adverse effect on educational system.</p>\r\n\r\n<p>&bull; Government should establish schools near villages to ensure accessibility of education for rural population.</p>\r\n\r\n<p>&bull; There should be free education minimum at secondary level. The Government should try to support studentswith free coaching materials such as uniforms, free books, etc., [39,40].</p>\r\n\r\n<p>&bull; Government should offer scholarships for intelligent and needy students.</p>\r\n\r\n<p>&bull; Study loan should be offered to provide financial support.</p>\r\n\r\n<p>&bull; The curriculum should be reviewed and adopted according to the market demand and international standard.</p>\r\n\r\n<p>&bull; Trends of early marriages should be abolish</p>\r\n\r\n<p>&bull; Schools should provide favorable environment for students and makes schools the place of interest for the student. Environment of School would be interesting and students feel it as a place of learning as well as relaxation and liberation [<a href=\"https://www.omicsonline.org/open-access/economic-effects-of-student-dropouts-a-comparative-study-2375-4389-1000137.php?aid=57059#41\">41</a>].</p>\r\n\r\n<p><strong>&bull; Limitations</strong></p>\r\n\r\n<p>This study also faces some limitations, such as time constraints and budget constraints. Due to these constrains this study cannot include causes of students&rsquo; dropouts in rural areas and not able to conduct empirical testing.</p>\r\n\r\n<p>&bull; Future research</p>\r\n\r\n<p>Future research can be conduct on large scales to find out the reasons of drop outs. In future research causesof students&rsquo; dropouts can be checked in special education institutes and at university level, comparative analysis of causes of students&rsquo; dropouts in rural areas and urban areas can also be conducted. Moreover, Empirical testing can enhance the viability of the research in future.</p>\r\n\r\n<p>References</p>\r\n\r\n<ol>\r\n	<li><a id=\"1\" name=\"1\"></a>Jingrong L (2004)<a href=\"http://china.org.cn/english/2004/Jun/99362.htm\" target=\"_blank\">&nbsp;High Dropout Rates in Rural School.</a></li>\r\n	<li><a id=\"2\" name=\"2\"></a>Rani UR (2011)<a href=\"http://www.journalcra.com/article/reasons-rising-school-dropout-rates-rural-girls-india-analysis-using-soft-computing-approach\" target=\"_blank\">&nbsp;Reasons For Rising School Dropout Rates Of Rural Girls In India- An Analysis Using Soft Computing Approach. International Journal of Current Research 3: 140-143</a></li>\r\n	<li><a id=\"3\" name=\"3\"></a>Jeynes WH (2007)<a href=\"http://uex.sagepub.com/content/42/1/82.short?rss=1&amp;ssource=mfr\" target=\"_blank\">&nbsp;The Relationship between parental involvement and urban secondary school Academic achievement. Ameta-analysis, urban Education 42: 82-110</a></li>\r\n	<li><a id=\"4\" name=\"4\"></a>Chuard D, Mingat A (1996) An analysis of dropout and student leaving in primary education in Pakistan. Manila, Philippines: Asian Development Bank (ADB).</li>\r\n	<li><a id=\"5\" name=\"5\"></a>Bridgeland JM, Dilulio JJ, Morison KB (2006)<a href=\"https://docs.gatesfoundation.org/Documents/thesilentepidemic3-06final.pdf\" target=\"_blank\">&nbsp;The silent epidemic. New York: Civic Enterprises, LLC.</a></li>\r\n	<li><a id=\"6\" name=\"6\"></a>Agbenyega J, Klibthong S (2013)<a href=\"http://files.eric.ed.gov/fulltext/EJ1016796.pdf\" target=\"_blank\">&nbsp;Whole school initiative: has inclusive education gone Astray?, International Journal of Whole Schooling&nbsp; 9: 3-22</a></li>\r\n	<li><a id=\"7\" name=\"7\"></a>Mohsin AO, Aslam M, Bashir F (2004)<a href=\"http://www.scialert.net/abstract/?doi=jas.2004.155.158\" target=\"_blank\">&nbsp;Causes of dropouts at the secondary level in the Barani areas of the Punjab (a case study of Rawalpindi district). Journal of Applied Sciences 4: 55-158.</a></li>\r\n	<li><a id=\"8\" name=\"8\"></a>Haq R (2013)<a href=\"http://tribune.com.pk/story/550993/over-27-million-children-out-of-school/\" target=\"_blank\">&nbsp;Over 27 million children out of school</a></li>\r\n	<li><a id=\"9\" name=\"9\"></a>Staff Writer (2007)<a href=\"http://www.yespakistan.com/education/prim_dropout.asp\" target=\"_blank\">&nbsp;Why Pakistani primary school students drop out</a></li>\r\n	<li><a id=\"10\" name=\"10\"></a>Khan AA (2008)<a href=\"http://www.dawn.com/news/1071001/dawn-opinion-march-13-2008\" target=\"_blank\">&nbsp;Recalling Aligarh and Udaipur Dawn</a></li>\r\n	<li><a id=\"11\" name=\"11\"></a>Dorn S (1993)<a href=\"http://eric.ed.gov/?id=EJ488737\" target=\"_blank\">&nbsp;Origins of the &quot;Dropout Problem&quot;. History of Education Quarterly 33: 353-373</a></li>\r\n	<li><a id=\"12\" name=\"12\"></a>Zarif T, Haider K, Ahmed AA, Bano F (2014)<a href=\"http://www.ajssh.leena-luna.co.jp/AJSSHPDFs/Vol.3%281%29/AJSSH2014%283.1-15%29.pdf\" target=\"_blank\">&nbsp;Probing Reasons of High Student Dropout Rate in Grade 5-6 at Public Schools of District Thatta, Sindh-Pakistan, Asian Journal of Social Sciences &amp; Humanities 3: 158-169.</a></li>\r\n	<li><a id=\"13\" name=\"13\"></a>Saadi AM, Saeed M (2010)<a href=\"http://connection.ebscohost.com/c/articles/61052556/perceptions-students-educators-principals-about-quality-assurance-elementary-teacher-education\" target=\"_blank\">&nbsp;Perceptions of students, educators and principals about quality assurance of&nbsp; elementary teacher education.&nbsp; Journal of Educational Research 13: 92-104</a></li>\r\n	<li><a id=\"14\" name=\"14\"></a>Martins G, Oswald AS, Comassetto SH, Kieling JO, Goncalves C, et al. (2006)<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/16758131\" target=\"_blank\">&nbsp;A package of interventions to reduce school dropout in public schools in a developing country: A feasibility study. European Child &amp; Adolescent Psychiatry 8: 442-449.</a></li>\r\n	<li><a id=\"15\" name=\"15\"></a>Todaro PM (1994)<a href=\"http://books.google.co.in/books/about/Economic_Development.html?id=mCS5AAAAIAAJ\" target=\"_blank\">&nbsp;Economic development, 5th Edition .New York: Longman publishers.</a></li>\r\n	<li><a id=\"16\" name=\"16\"></a>Coleman JS (1988)<a href=\"https://www.jstor.org/discover/10.2307/2780243?uid=3738256&amp;uid=2129&amp;uid=2&amp;uid=70&amp;uid=4&amp;sid=21106101665241\" target=\"_blank\">&nbsp;Social Capital in the Creation of Human Capital. The American Journal of Sociology 94: 95-120.</a></li>\r\n	<li><a id=\"17\" name=\"17\"></a>Ishrat Hussain (2005)<a href=\"http://ishrathusain.iba.edu.pk/papers.html\" target=\"_blank\">&nbsp;Inaugural Address delivered at the Conference on Education.</a></li>\r\n	<li><a id=\"18\" name=\"18\"></a>Roderick M (1993)<a href=\"http://books.google.co.in/books/about/The_Path_to_Dropping_Out.html?id=asqeAAAAMAAJ\" target=\"_blank\">&nbsp;The path to dropping out: Evidence for intervention. Westport, CT: Auburn House</a></li>\r\n	<li><a id=\"19\" name=\"19\"></a>Smith WK (1998)<a href=\"http://scholar.lib.vt.edu/theses/public/etd-3898-144557/materials/OUTLAY.PDF\" target=\"_blank\">&nbsp;An evaluation of the attendance policy and program and its perceived effects on high school attendance in Newport News Public Schools. Unpublished doctoral dissertation, Virginia Polytechnic and State University, Blacksburg, VA.</a></li>\r\n	<li><a id=\"20\" name=\"20\"></a>Lanham J (1999)<a href=\"http://scholar.lib.vt.edu/theses/available/etd-041899-150623/unrestricted/MainTextp1to148.pdf\" target=\"_blank\">&nbsp;Relating building and classroom conditions to student achievement in Virginia&rsquo;s elementary schools. Unpublished doctoral dissertation, Virginia Polytechnic Institute and State University, Blacksburg, VA</a></li>\r\n	<li><a id=\"21\" name=\"21\"></a>Mamun AA, Mahbub H, Amin R (2012)<a href=\"http://www.savap.org.pk/journals/ARInt./Vol.3%282%29/2012%283.2-29%29.pdf\" target=\"_blank\">&nbsp;Investigating The Causes of Students&rsquo; Dropouts from Diploma Engineering Programs in the Polytechnic institutes Of Bangladesh, Academic Research International 3: 231-238</a></li>\r\n	<li><a id=\"22\" name=\"22\"></a>Barsaga EB (1995) The holding power of the elementary education system in the Philippines, Quezon City: Innotech.</li>\r\n	<li><a id=\"23\" name=\"23\"></a>Colclough C, Rose P, Tembon M (2000)<a href=\"http://opendocs.ids.ac.uk/opendocs/bitstream/handle/123456789/3396/Wp78.pdf?sequence=1\" target=\"_blank\">&nbsp;Gender Inequalities in Primary Schooling: The Roles of Poverty and Adverse Cultural Practice. International Journal of Educational Development 20: 5&ndash;27.</a></li>\r\n	<li><a id=\"24\" name=\"24\"></a>Hunt F (2008)<a href=\"http://aplicacoes.mds.gov.br/sagi/dicivip_datain/ckfinder/userfiles/files/Dropping%20Out%20from%20School.pdf\" target=\"_blank\">&nbsp;Dropping out from school: A cross-country review of literature. Create Pathways to Access No 16. Consortium for Research on Educational Access, Transitions and Equity: University of Sussex.</a></li>\r\n	<li><a id=\"25\" name=\"25\"></a>Catterall JS (1985)<a href=\"https://www.google.co.in/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=web&amp;cd=2&amp;cad=rja&amp;uact=8&amp;ved=0CCQQFjAB&amp;url=http%3A%2F%2Fwww.doe.mass.edu%2Fdropout%2F2014-05ImpactSummary.docx&amp;ei=6zg2VcLVDsS0mwW9wICQBw&amp;usg=AFQjCNFozGyJ0t7nl2uNUpsWlE6Sq3Nbtg&amp;bvm=bv.91071109,d.dGY\" target=\"_blank\">&nbsp;On the social costs of dropping out of schools.&nbsp;(Report No. 86-SEPT-3). Stanford, CA: Stanford University, Center for Educational Research.</a></li>\r\n	<li><a id=\"26\" name=\"26\"></a>Khan G, Azhar M, Shah A (2011)<a href=\"https://www.sdpi.org/publications/files/W-119.pdf\" target=\"_blank\">&nbsp;Causes of Primary School Dropout Among Rural Girls in Pakistan Working Paper Series&nbsp; 119 :1-8</a></li>\r\n	<li><a id=\"27\" name=\"27\"></a>Hunter N, May J (2002)<a href=\"http://sds.ukzn.ac.za/files/WP35%20web.pdf\" target=\"_blank\">&nbsp;Poverty, Shocks and School Disruption Episodes among Adolescents in South Africa, CSDS Working Paper 35:1-42</a></li>\r\n	<li><a id=\"28\" name=\"28\"></a>Government of Bangladesh, Go B (2009)<a href=\"http://114.130.54.109/dpe/pdf/ASPR%202009%20final%20May%202009.pdf\" target=\"_blank\">&nbsp;Bangladesh Primary Education Annual Sector Performance Report, Directorate of Primary Education, Second Primary Education Development programme.</a></li>\r\n	<li><a id=\"29\" name=\"29\"></a>Bajoria J, Braunschweiger A (2014)<a href=\"https://www.hrw.org/news/2014/04/22/qa-talking-discrimination-and-school-dropout-rates-india%20on%206/11%20/2014\" target=\"_blank\">&nbsp;Q&amp;A: Talking Discrimination and School Dropout rate in India.</a></li>\r\n	<li><a id=\"30\" name=\"30\"></a>Islam MN, Pavel T (2011)<a href=\"http://www.asaub.edu.bd/data/asaubreview/v5n1sl6.pdf\" target=\"_blank\">&nbsp;Factors Contributing Towards Dropouts at Undergraduate Level: An Analysis, ASA University Review 5: 1</a></li>\r\n	<li><a id=\"31\" name=\"31\"></a>Arifi S, Kryeziu V, Nelson K (2013)<a href=\"http://www.erisee.org/downloads/2013/2/How%20to%20Drop%20out%20prevention%202007%20ENG.pdf%20on%206/11/%202014s\" target=\"_blank\">&nbsp;Student Dropout Prevention and Response from.</a></li>\r\n	<li><a id=\"32\" name=\"32\"></a>Wagenaar TC (1987) &ldquo;What do we know about dropping out of high school?&rdquo; Research in the Sociology of Education and Socialization 7: 161-190</li>\r\n	<li><a id=\"33\" name=\"33\"></a>Mittler P (2000)<a href=\"https://www.amazon.com/Working-Towards-Inclusive-Education-Contexts/dp/1853466980#reader_1853466980\" target=\"_blank\">&nbsp;Working towards inclusive education. London: Fulton.</a></li>\r\n	<li><a id=\"34\" name=\"34\"></a>Farooq M (2013)<a href=\"http://pu.edu.pk/images/journal/ier/PDF-FILES/Muhammad%20Shahid%20Farooq_V35_No_1_2013.pdf\" target=\"_blank\">&nbsp;An inclusive Schooling Model for the Prevention of Dropout in Primary Schools in Pakistan. Bulletin of Education and Research 35: 47-74</a></li>\r\n	<li><a id=\"35\" name=\"35\"></a>Peters SJ (2003)<a href=\"http://siteresources.worldbank.org/EDUCATION/Resources/278200-1099079877269/547664-1099079993288/InclusiveEdu_efa_strategy_for_children.pdf\" target=\"_blank\">&nbsp;Inclusive education: Achieving education for all by including those with disabilities and special needs. Prepared for the World Bankdisability group.</a></li>\r\n	<li><a id=\"36\" name=\"36\"></a>Mamun AA, Mahbub H, Amin R (2012)<a href=\"http://www.savap.org.pk/journals/ARInt./Vol.3%282%29/2012%283.2-29%29.pdf\" target=\"_blank\">&nbsp;Investigating The Causes of Students&rsquo; Dropouts from Diploma Engineering Programs in the Polytechnic institutes Of Bangladesh, Academic Research International 3: 231-238</a></li>\r\n	<li><a id=\"37\" name=\"37\"></a>Tan (2007)<a href=\"http://www.afrol.com/News2001/tan007_fgm.htm\" target=\"_blank\">&nbsp;Tanzania fails to enforce law against female mutilation.</a></li>\r\n	<li><a id=\"38\" name=\"38\"></a>Zarif (2012) Reasons of High School Dropout Rate of Students in Grades 5-6 at Public School of District Kashmoor (Sindh-Pakistan) in 2010-2011, Journal of Research and Reflections in Education 6: 145 -153z</li>\r\n	<li><a id=\"39\" name=\"39\"></a>Bajoria J, Braunschweiger A (2014)<a href=\"https://www.hrw.org/news/2014/04/22/qa-talking-discrimination-and-school-dropout-rates-india%20on%206/11%20/2014\" target=\"_blank\">&nbsp;Q&amp;A: Talking Discrimination and School Dropout rate in India.</a></li>\r\n	<li><a id=\"40\" name=\"40\"></a>Behrman J, James CK (1999)<a href=\"http://elibrary.worldbank.org/doi/abs/10.1093/wber/13.2.211?journalCode=wber\" target=\"_blank\">&nbsp;&ldquo;Household Income and Child Schooling in Vietnam&rdquo;, The World Bank Economic Review 13: 211-256.</a></li>\r\n	<li><a id=\"41\" name=\"41\"></a>Agbenyega J, Klibthong S (2013)<a href=\"http://files.eric.ed.gov/fulltext/EJ1016796.pdf\" target=\"_blank\">&nbsp;Whole school initiative: has inclusive education gone Astray?, International Journal of Whole Schooling&nbsp; 9: 3-22</a></li>\r\n</ol>\r\n\r\n<p>Citation:&nbsp;Latif A, Choudhary AI, Hammayun AA (2015) Economic Effects of Student Dropouts: A Comparative Study. J Glob Econ 3: 137. Doi: 10.4172/2375-4389.1000137</p>\r\n\r\n<p>Copyright:&nbsp;&copy; 2015 Latif A, et al. This is an open-access article distributed under the terms of the Creative Commons Attribution License, which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.</p>', '2020-01-17 09:30:18', '2020-01-17 09:32:08', 1, 'school-dropout-concept-dropping-out-260nw-163912004_1579264328.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `is_admin`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cleo', 'https://via.placeholder.com/150', 'cleotech@gmail.com', NULL, '$2y$10$A8E/Zdev1qV5SeipokXs6eL0SvvnOl78MO7TWc2vFTs54wuEvwitC', 1, 'Admin', NULL, '2020-01-12 06:06:35', '2020-01-12 06:06:35'),
(2, 'James', 'https://via.placeholder.com/150', 'james123@gmail.com', NULL, '$2y$10$A8E/Zdev1qV5SeipokXs6eL0SvvnOl78MO7TWc2vFTs54wuEvwitC', 1, 'Author', NULL, NULL, NULL),
(3, 'Ambrose Momanyi', 'https://via.placeholder.com/150', 'ambrosemomanyi@gmaol.com', NULL, '$2y$10$WpXsAo.VPW.jLIJfYj.QG.xUjSyRmhhdwTAT97uc5SOXnuaHBpL/u', 0, 'Customer', NULL, '2020-01-12 08:02:16', '2020-01-12 08:02:16'),
(4, 'Nathan James', 'https://via.placeholder.com/150', 'nathanjames@gmail.com', NULL, '$2y$10$/I/t71MHwGIanJKGgFwcc.fiu6kWP5CzxrsppG4CePrYZo3TOkrLO', 1, 'Author', NULL, '2020-01-14 04:15:27', '2020-01-14 04:15:27'),
(13, 'wwww', 'https://via.placeholder.com/150', 'www@gmail.com', NULL, '$2y$10$QQ2.mo2CraPpxssGiim5CeL33z4qUjqU2hPXgoEv51NE8ulouOlrW', 1, 'Author', NULL, '2020-01-20 06:23:48', '2020-01-20 06:23:48'),
(14, 'Jane Kodio', 'https://via.placeholder.com/150', 'janekodio@gmail.com', NULL, '$2y$10$Zvmor8W2RyoseS5DEhO02eu0fJN3dAZnxrLUV1dH.QLH.RFHKDn7O', 1, 'Editor', NULL, '2020-01-20 06:27:48', '2020-01-20 06:27:48'),
(15, 'John Mbau', 'https://via.placeholder.com/150', 'johnmbau@gmail.com', NULL, '$2y$10$3PKbF7bWBdD37zwL45GiSOVHFWms7qjSbyxaLEqyAZEnjNAB9HGsC', 1, 'Author', NULL, '2020-01-20 08:45:20', '2020-01-20 08:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
