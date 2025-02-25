-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 13, 2022 at 05:01 AM
-- Server version: 5.7.32
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_cards`
--

CREATE TABLE `about_us_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(11) NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ernest', 'Hemingway', 'Ernest Miller Hemingway was an American journalist, novelist, short-story writer, and sportsman.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'Stephen', 'King', 'Stephen Edwin King is an American author of horror, supernatural fiction, suspense, science fiction, and fantasy novels.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(3, 'J. K.', 'Rowling', 'Joanne Rowling CH, OBE, FRSL, FRCPE, FRSE, better known by her pen names J. K. Rowling and Robert Galbraith, is a British novelist, screenwriter, producer, and philanthropist.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(4, 'Jeff', 'Goins', 'Jeff Goins is an American author, blogger, and speaker. He is the founder of Tribe Writers, an online community for writers.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(5, 'Arundhati', 'Roy', 'Suzanna Arundhati Roy is an Indian author best known for her novel The God of Small Things, which won the Man Booker Prize for Fiction in 1997 and became the biggest-selling book by a non-expatriate Indian author.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(6, 'Chetan', 'Bhagat', 'Chetan Bhagat is a screenwriter, television personality and motivational speaker, known for his Indian-English novels about young urban middle class Indians.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(7, 'Durjoy', 'Datta', 'Durjoy Datta is an Indian screenwriter and entrepreneur known for his novels about the romantic life of young Indians.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(8, 'Hua', 'Yu', 'Yu Hua is a Chinese author, born April 3, 1960 in Hangzhou, Zhejiang province. Shortly after his debut as a fiction writer in 1983, Yu Hua was regarded as a promising avant-garde or post-New Wave writer.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(9, 'Yukio', 'Mishima', 'Yukio Mishima is the pen name of Kimitake Hiraoka, a Japanese author, poet, playwright, actor, model, film director, nationalist, and founder of the Tatenokai.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(10, 'Danielle', 'Steel', 'Danielle Fernandes Dominique Schuelein-Steel is an American writer, best known for her romance novels.', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(11, 'William', 'Shakesphere', '', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(12, 'Amartya', 'Sen', '', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(13, 'L.J', 'Smith', '', '2022-07-12 23:30:58', '2022-07-12 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_on` datetime DEFAULT NULL,
  `isbn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `image`, `published_on`, `isbn`, `url`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'The Tragicall Historie of Hamlet, Prince of Denmark', 'Among Shakespeare\'s plays, \"Hamlet\" is considered by many his masterpiece. Among actors, the role of Hamlet, Prince of Denmark, is considered the jewel in the crown of a triumphant theatrical career. Now Kenneth Branagh plays the leading role and co-directs a brilliant ensemble performance. Three generations of legendary leading actors, many of whom first assembled for the Oscar-winning film \"Henry V\", gather here to perform the rarely heard complete version of the play. This clear, subtly nuanced, stunning dramatization, presented by The Renaissance Theatre Company in association with \"Bbc\" Broadcasting, features such luminaries as Sir John Gielgud, Derek Jacobi, Emma Thompson, and Christopher Ravenscroft. It combines a full cast with stirring music and sound effects to bring this magnificent Shakespearean classic vividly to life. Revealing new riches with each listening, this production of \"Hamlet\" is an invaluable aid for students, teachers and all true lovers of Shakespeare - a recording to be treasured for decades to come.', NULL, NULL, '0521618746', 'https://www.goodreads.com/book/show/1420.Hamlet?from_search=true', 1, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(2, 'The Tragedy of Othello, The Moor of Venice', 'In Othello, Shakespeare creates a powerful drama of a marriage that begins with fascination (between the exotic Moor Othello and the Venetian lady Desdemona), with an elopement, and with intense mutual devotion and that ends precipitately with jealous rage and violent deaths. He sets this story in the romantic world of the Mediterranean, moving the action from Venice to the island of Cyprus and giving it an even more exotic coloring with stories of Othello\'s African past. Shakespeare builds so many differences into his hero and heroine—differences of race, of age, of cultural background—that one should not, perhaps, be surprised that the marriage ends disastrously. But most people who see or read the play feel that the love that the play presents between Othello and Desdemona is so strong that it would have overcome all these differences were it not for the words and actions of Othello\'s standard-bearer, Iago, who hates Othello and sets out to destroy him by destroying his love for Desdemona. As Othello succumbs to Iago\'s insinuations that Desdemona is unfaithful, fascination—which dominates the early acts of the play—turns to horror, especially for the audience. We are confronted by spectacles of a generous and trusting Othello in the grip of Iago\'s schemes; of an innocent Desdemona, who has given herself up entirely to her love for Othello only to be subjected to his horrifying verbal and physical assaults, the outcome of Othello\'s mistaken convictions about her faithlessness.', NULL, NULL, '0743477553', 'https://www.goodreads.com/book/show/12996.Othello?ac=1&from_search=true', 1, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(3, 'The Tragedie of Macbeth', 'One night on the heath, the brave and respected general Macbeth encounters three witches who foretell that he will become king of Scotland. At first skeptical, he’s urged on by the ruthless, single-minded ambitions of Lady Macbeth, who suffers none of her husband’s doubt. But seeing the prophecy through to the bloody end leads them both spiraling into paranoia, tyranny, madness, and murder.\nThis shocking tragedy - a violent caution to those seeking power for its own sake - is, to this day, one of Shakespeare’s most popular and influential masterpieces', NULL, NULL, '0743477103', 'https://www.goodreads.com/book/show/8852.Macbeth?ac=1&from_search=true', 1, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(4, 'An Excellent conceited Tragedie of Romeo and Iuliet', 'In Romeo and Juliet, Shakespeare creates a violent world, in which two young people fall in love. It is not simply that their families disapprove; the Montagues and the Capulets are engaged in a blood feud.', NULL, NULL, '0743477111', 'https://www.goodreads.com/book/show/18135.Romeo_and_Juliet?ac=1&from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(5, 'The Three Musketeers', 'Alexandre Dumas’s most famous tale— and possibly the most famous historical novel of all time— in a handsome hardcover volume.\nThis swashbuckling epic of chivalry, honor, and derring-do, set in France during the 1620s, is richly populated with romantic heroes, unattainable heroines, kings, queens, cavaliers, and criminals in a whirl of adventure, espionage, conspiracy, murder, vengeance, love, scandal, and suspense. Dumas transforms minor historical figures into larger-than-life characters: the Comte d’Artagnan, an impetuous young man in pursuit of glory; the beguilingly evil seductress “Milady”; the powerful and devious Cardinal Richelieu; the weak King Louis XIII and his unhappy queen—and, of course, the three musketeers themselves, Athos, Porthos, and Aramis, whose motto “all for one, one for all” has come to epitomize devoted friendship. With a plot that delivers stolen diamonds, masked balls, purloined letters, and, of course, great bouts of swordplay, The Three Musketeers is eternally entertaining', NULL, NULL, '8172344694', 'https://www.goodreads.com/book/show/7190.The_Three_Musketeers?from_search=true', 1, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(6, 'Identify & Violence', 'Homicide is now the second most common cause of death in the US workplace. This volume represents an effort to move the growing problem of violence in the workplace to the forefront of public and scientific concern. Contributing authors describe state-of-the-art violence prevention and response programs that serve as concrete solutions to reducing and managing workplace violence, including programs instituted in advance of major corporate downsizing and programmes designed to respond to violence in high-risk healthcare settings. Cutting edge research topics include correlations between alcohol abuse and violence, the interaction between job stress and violence, risk for violence against individuals in specific occupations such as social workers and federal workers, and suicide among police officers. This volume is an indispensable overview of violence in the workplace that belongs on the reading list of human resource professionals, I/O psychologists, and consultants and researchers in the field.', NULL, NULL, '0393329291', 'https://www.goodreads.com/book/show/2838276-violence-on-the-job?from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(7, 'Vampire Diaries : The Struggle', 'This is the terrifying story of two vampire brothers and the beautiful girl torn between them: Damon: determined to make Elena his queen of darkness, he\'d kill his own brother to possess her. Stefan: desperate for the power to destroy Damon, he succumbs to his thirst for human blood. Elena: irresistibly drawn to both brothers, her choice will decide their fate', NULL, NULL, '9780061140976', 'https://www.goodreads.com/book/show/395851.The_Struggle?from_search=true', 1, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(8, 'The Greater Common Good', NULL, NULL, NULL, '8173101485', 'https://www.goodreads.com/book/show/151288.The_Greater_Common_Good?from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(9, 'The Tempest', NULL, NULL, NULL, '9780743482837', 'https://www.goodreads.com/book/show/12985.The_Tempest?from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(10, 'Development As Freedom', 'Freedom, Sen argues, is both the end and most efficient means of sustaining economic life and the key to securing the general welfare of the world\'s entire population. Releasing the idea of individual freedom from association with any particular historical, intellectual, political, or religious tradition, Sen clearly demonstrates its current applicability and possibilities. In the new global economy, where, despite unprecedented increases in overall opulence, the contemporary world denies elementary freedoms to vast numbers—perhaps even the majority of people—he concludes, it is still possible to practically and optimistically regain a sense of social accountability. Development as Freedom is essential reading', NULL, NULL, '0385720270', 'https://www.goodreads.com/book/show/173961.Development_as_Freedom?ac=1&from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(11, 'The Vampire Diaries :The Awakening', 'Elena: the golden girl, the leader, the one who can have any boy she wants.\nStefan: brooding and mysterious, he seems to be the only one who can resist Elena, even as he struggles to protect her from the horrors that haunt his past.\nDamon: sexy, dangerous, and driven by an urge for revenge against Stefan, the brother who betrayed him. Determined to have Elena, he\'d kill to possess her.\nCollected here in one volume for the first time, volumes one and two of The Vampire Diaries, the tale of two vampire brothers and the beautiful girl torn between them.', NULL, NULL, '978-1-4449-0071-2', 'https://www.goodreads.com/book/show/395871.The_Awakening_The_Struggle?from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(12, 'The Vampire Diaries : The Fury', 'A Love Triangle of Unspeakable Horror... Stefan Tormented after losing Elena, he\'s determined to end the feud with his brother, Damon--whatever the cost. Damon Mocking Stefan and Elena, he laughs in the face of doom. Elena Wild with her craving for blood, she confronts the ultimate evil. The terrifying story of two vampire brothers and the beautiful girl torn between them.', NULL, NULL, '978-0-06-199077-9', 'https://www.goodreads.com/book/show/1169808.The_Fury?from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(13, 'Harry Potter and the Philosopher\'s Stone', NULL, NULL, NULL, '9781408855652', 'https://www.goodreads.com/book/show/45905732-harry-potter-and-the-philosopher-s-stone?from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(14, 'Harry Potter and the Chamber of Secrets', 'The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he\'s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike', NULL, NULL, '1408855666', 'https://www.goodreads.com/book/show/15881.Harry_Potter_and_the_Chamber_of_Secrets?ac=1&from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(15, 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter\'s third year at Hogwarts is full of new dangers. A convicted murderer, Sirius Black, has broken out of Azkaban prison, and it seems he\'s after Harry. Now Hogwarts is being patrolled by the dementors, the Azkaban guards who are hunting Sirius. But Harry can\'t imagine that Sirius or, for that matter, the evil Lord Voldemort could be more frightening than the dementors themselves, who have the terrible power to fill anyone they come across with aching loneliness and despair. Meanwhile, life continues as usual at Hogwarts. A top-of-the-line broom takes Harry\'s success at Quidditch, the sport of the Wizarding world, to new heights. A cute fourth-year student catches his eye. And he becomes close with the new Defense of the Dark Arts teacher, who was a childhood friend of his father. Yet despite the relative safety of life at Hogwarts and the best efforts of the dementors, the threat of Sirius Black grows ever closer. But if Harry has learned anything from his education in wizardry, it is that things are often not what they seem. Tragic revelations, heartwarming surprises, and high-stakes magical adventures await the boy wizard in this funny and poignant third installment of the beloved series.\n--scholastic.com', NULL, NULL, '1408855674', 'https://www.goodreads.com/book/show/5.Harry_Potter_and_the_Prisoner_of_Azkaban?from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(16, 'Harry Potter and the Goblet of Fire', 'Harry Potter is midway through his training as a wizard and his coming of age. Harry wants to get away from the pernicious Dursleys and go to the International Quidditch Cup. He wants to find out about the mysterious event that\'s supposed to take place at Hogwarts this year, an event involving two other rival schools of magic, and a competition that hasn\'t happened for a hundred years. He wants to be a normal, fourteen-year-old wizard. But unfortunately for Harry Potter, he\'s not normal - even by wizarding standards. And in his case, different can be deadly. --back cover', NULL, NULL, '1408855682', 'https://www.goodreads.com/book/show/6.Harry_Potter_and_the_Goblet_of_Fire?from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(17, 'Harry Potter and the Order of the Phoenix', 'There is a door at the end of a silent corridor. And it’s haunting Harry Potter\'s dreams. Why else would he be waking in the middle of the night, screaming in terror? Harry has a lot on his mind for this, his fifth year at Hogwarts: a Defense Against the Dark Arts teacher with a personality like poisoned honey; a big surprise on the Gryffindor Quidditch team; and the looming terror of the Ordinary Wizarding Level exams. But all these things pale next to the growing threat of He-Who-Must-Not-Be-Named---a threat that neither the magical government nor the authorities at Hogwarts can stop. As the grasp of darkness tightens, Harry must discover the true depth and strength of his friends, the importance of boundless loyalty, and the shocking price of unbearable sacrifice.His fate depends on them all', NULL, NULL, '9781408855690', 'https://www.goodreads.com/book/show/2.Harry_Potter_and_the_Order_of_the_Phoenix?ac=1&from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(18, 'Harry Potter and the Half Blood Prince', 'When Harry Potter and the Half-Blood Prince opens, the war against Voldemort has begun. The Wizarding world has split down the middle, and as the casualties mount, the effects even spill over onto the Muggles. Dumbledore is away from Hogwarts for long periods, and the Order of the Phoenix has suffered grievous losses. And yet, as in all wars, life goes on.\nHarry, Ron, and Hermione having passed their O.W.L. level exams, start on their specialist N.E.W.T. courses. Sixth-year students learn to Apparate, losing a few eyebrows in the process. Teenagers flirt and fight and fall in love. Harry becomes captain of the Gryffindor Quidditch team, while Draco Malfoy pursues his own dark ends. And classes are as fascinating and confounding as ever, as Harry receives some extraordinary help in Potions from the mysterious Half-Blood Prince.', NULL, NULL, '9781408855706', 'Harry Potter and the Half Blood Prince', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(19, 'Harry Potter and the Deathly Hallows', 'Harry Potter is leaving Privet Drive for the last time. But as he climbs into the sidecar of Hagrid’s motorbike and they take to the skies, he knows Lord Voldemort and the Death Eaters will not be far behind. The protective charm that has kept him safe until now is broken. But the Dark Lord is breathing fear into everything he loves. And he knows he can’t keep hiding. To stop Voldemort, Harry knows he must find the remaining Horcruxes and destroy them.\nHe will have to face his enemy in one final battle.\n--jkrowling.com', NULL, NULL, '1408855712', 'https://www.goodreads.com/book/show/136251.Harry_Potter_and_the_Deathly_Hallows?ac=1&from_search=true', 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `book_authors`
--

CREATE TABLE `book_authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_authors`
--

INSERT INTO `book_authors` (`id`, `book_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 1, 11, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(2, 2, 11, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(3, 3, 11, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(4, 4, 11, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(5, 5, 11, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(6, 6, 12, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(7, 7, 13, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(8, 8, 5, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(9, 9, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(10, 10, 11, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(11, 11, 12, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(12, 12, 13, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(13, 13, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(14, 14, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(15, 15, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(16, 16, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(17, 17, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(18, 18, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(19, 19, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `book_genres`
--

CREATE TABLE `book_genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_genres`
--

INSERT INTO `book_genres` (`id`, `book_id`, `genre_id`) VALUES
(1, 1, 2),
(2, 2, 9),
(3, 3, 9),
(4, 4, 9),
(5, 5, 7),
(6, 6, 9),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 10),
(11, 11, 9),
(12, 12, 9),
(13, 13, 8),
(14, 14, 8),
(15, 15, 8),
(16, 16, 8),
(17, 17, 8),
(18, 18, 8),
(19, 19, 8);

-- --------------------------------------------------------

--
-- Table structure for table `book_items`
--

CREATE TABLE `book_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `book_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `publisher_id` int(10) UNSIGNED DEFAULT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_items`
--

INSERT INTO `book_items` (`id`, `book_id`, `book_code`, `edition`, `format`, `status`, `location`, `price`, `publisher_id`, `language_id`, `file_name`, `created_at`, `updated_at`) VALUES
(1, 1, '41542272', 'First Edition', 1, 1, '', 250, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(2, 2, '72921458', 'First Edition', 1, 2, '', 320, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(3, 3, '25851826', 'Second Edition', 2, 2, '', 350, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(4, 4, '92253967', 'First Edition', 2, 2, '', 650, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(5, 5, '05629420', 'First Edition', 2, 2, '', 520, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(6, 6, '75362384', 'First Edition', 2, 2, '', 520, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(7, 7, '48029970', 'Second Edition', 2, 2, '', 250, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(8, 8, '07100067', 'First Edition', 2, 3, '', 420, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(9, 8, '12565787', 'Second Edition', 2, 1, '', 3200, 1, 2, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(10, 9, '36558443', 'Second Edition', 1, 2, '', 150, 2, 2, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(11, 10, '32278237', 'First Edition', 2, 1, '', 520, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(12, 11, '57778398', 'First Edition', 2, 1, '', 520, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(13, 12, '23464571', 'Third Edition', 2, 1, '', 320, 1, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(14, 13, '21125623', 'First Edition', 2, 1, '', 320, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(15, 14, '98765455', 'Second Edition', 2, 1, '', 320, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(16, 15, '24102677', 'Third Edition', 2, 1, '', 320, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(17, 16, '91388548', 'Fourth Edition', 2, 1, '', 320, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(18, 17, '01543302', 'Fifth Edition', 2, 1, '', 320, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(19, 18, '76531739', 'Sixth Edition', 2, 1, '', 320, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(20, 19, '99464181', 'Seventh Edition', 2, 1, '', 320, 2, 1, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `book_languages`
--

CREATE TABLE `book_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_languages`
--

INSERT INTO `book_languages` (`id`, `language_name`, `language_code`, `created_at`, `updated_at`) VALUES
(1, 'English', 'EN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'Gujarati', 'GJ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(3, 'Marathi', 'MR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(4, 'Urdu', 'UR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(5, 'Spanish', 'ES', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(6, 'Portuguese', 'PT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(7, 'French', 'FR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(8, 'German', 'DE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(9, 'Chinese', 'ZH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(10, 'Italian', 'IT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(11, 'Norwegian', 'NO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(12, 'Russian', 'RU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(13, 'Dutch', 'NL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(14, 'Swedish', 'SV', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(15, 'Arabic', 'AR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(16, 'Greek', 'EL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(17, 'Japanese', 'JA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(18, 'Korean', 'KO', '2022-07-12 23:30:58', '2022-07-12 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `book_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_requests`
--

INSERT INTO `book_requests` (`id`, `member_id`, `book_name`, `isbn`, `edition`, `format`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Attitude Is Everything', '9788188452767', '1st', 2, 0, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(2, 1, 'Think and Grow Rich', '9780615823423', '3rd', 2, 1, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(3, 1, 'The Surrogates', '9788817039383', '10th', 1, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(4, 1, 'Harry Potter and the Philosopher\'s Stone', '9780439324663', '1st', 1, 2, '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `book_series`
--

CREATE TABLE `book_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_series`
--

INSERT INTO `book_series` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Harry Potter', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(2, 'The Vampire Diaries', '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `book_tags`
--

CREATE TABLE `book_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_tags`
--

INSERT INTO `book_tags` (`id`, `book_id`, `tag_id`) VALUES
(1, 2, 6),
(2, 3, 2),
(3, 7, 1),
(4, 8, 1),
(5, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'Albania', 'AL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(3, 'Algeria', 'DZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(4, 'American Samoa', 'AS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(5, 'Andorra', 'AD', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(6, 'Angola', 'AO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(7, 'Anguilla', 'AI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(8, 'Antarctica', 'AQ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(9, 'Antigua and Barbuda', 'AG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(10, 'Argentina', 'AR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(11, 'Armenia', 'AM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(12, 'Aruba', 'AW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(13, 'Australia', 'AU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(14, 'Austria', 'AT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(15, 'Azerbaijan', 'AZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(16, 'Bahamas', 'BS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(17, 'Bahrain', 'BH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(18, 'Bangladesh', 'BD', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(19, 'Barbados', 'BB', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(20, 'Belarus', 'BY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(21, 'Belgium', 'BE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(22, 'Belize', 'BZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(23, 'Benin', 'BJ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(24, 'Bermuda', 'BM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(25, 'Bhutan', 'BT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(26, 'Bolivia (Plurinational State of)', 'BO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(27, 'Bonaire, Sint Eustatius and Saba', 'BQ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(28, 'Bosnia and Herzegovina', 'BA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(29, 'Botswana', 'BW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(30, 'Bouvet Island', 'BV', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(31, 'Brazil', 'BR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(32, 'British Indian Ocean Territory', 'IO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(33, 'United States Minor Outlying Islands', 'UM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(34, 'Virgin Islands (British)', 'VG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(35, 'Virgin Islands (U.S.)', 'VI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(36, 'Brunei Darussalam', 'BN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(37, 'Bulgaria', 'BG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(38, 'Burkina Faso', 'BF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(39, 'Burundi', 'BI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(40, 'Cambodia', 'KH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(41, 'Cameroon', 'CM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(42, 'Canada', 'CA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(43, 'Cabo Verde', 'CV', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(44, 'Cayman Islands', 'KY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(45, 'Central African Republic', 'CF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(46, 'Chad', 'TD', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(47, 'Chile', 'CL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(48, 'China', 'CN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(49, 'Christmas Island', 'CX', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(50, 'Cocos (Keeling) Islands', 'CC', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(51, 'Colombia', 'CO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(52, 'Comoros', 'KM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(53, 'Congo', 'CG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(54, 'Congo (Democratic Republic of the)', 'CD', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(55, 'Cook Islands', 'CK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(56, 'Costa Rica', 'CR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(57, 'Croatia', 'HR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(58, 'Cuba', 'CU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(59, 'Curaçao', 'CW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(60, 'Cyprus', 'CY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(61, 'Czech Republic', 'CZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(62, 'Denmark', 'DK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(63, 'Djibouti', 'DJ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(64, 'Dominica', 'DM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(65, 'Dominican Republic', 'DO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(66, 'Ecuador', 'EC', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(67, 'Egypt', 'EG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(68, 'El Salvador', 'SV', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(69, 'Equatorial Guinea', 'GQ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(70, 'Eritrea', 'ER', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(71, 'Estonia', 'EE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(72, 'Ethiopia', 'ET', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(73, 'Falkland Islands (Malvinas)', 'FK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(74, 'Faroe Islands', 'FO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(75, 'Fiji', 'FJ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(76, 'Finland', 'FI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(77, 'France', 'FR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(78, 'French Guiana', 'GF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(79, 'French Polynesia', 'PF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(80, 'French Southern Territories', 'TF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(81, 'Gabon', 'GA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(82, 'Gambia', 'GM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(83, 'Georgia', 'GE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(84, 'Germany', 'DE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(85, 'Ghana', 'GH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(86, 'Gibraltar', 'GI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(87, 'Greece', 'GR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(88, 'Greenland', 'GL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(89, 'Grenada', 'GD', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(90, 'Guadeloupe', 'GP', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(91, 'Guam', 'GU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(92, 'Guatemala', 'GT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(93, 'Guernsey', 'GG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(94, 'Guinea', 'GN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(95, 'Guinea-Bissau', 'GW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(96, 'Guyana', 'GY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(97, 'Haiti', 'HT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(98, 'Heard Island and McDonald Islands', 'HM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(99, 'Holy See', 'VA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(100, 'Honduras', 'HN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(101, 'Hong Kong', 'HK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(102, 'Hungary', 'HU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(103, 'Iceland', 'IS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(104, 'India', 'IN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(105, 'Indonesia', 'ID', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(106, 'Iran (Islamic Republic of)', 'IR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(107, 'Iraq', 'IQ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(108, 'Ireland', 'IE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(109, 'Isle of Man', 'IM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(110, 'Israel', 'IL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(111, 'Italy', 'IT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(112, 'Jamaica', 'JM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(113, 'Japan', 'JP', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(114, 'Jersey', 'JE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(115, 'Jordan', 'JO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(116, 'Kazakhstan', 'KZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(117, 'Kenya', 'KE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(118, 'Kiribati', 'KI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(119, 'Kuwait', 'KW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(120, 'Kyrgyzstan', 'KG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(121, 'Lao People\'s Democratic Republic', 'LA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(122, 'Latvia', 'LV', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(123, 'Lebanon', 'LB', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(124, 'Lesotho', 'LS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(125, 'Liberia', 'LR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(126, 'Libya', 'LY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(127, 'Liechtenstein', 'LI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(128, 'Lithuania', 'LT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(129, 'Luxembourg', 'LU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(130, 'Macao', 'MO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(131, 'Macedonia (the former Yugoslav Republic of)', 'MK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(132, 'Madagascar', 'MG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(133, 'Malawi', 'MW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(134, 'Malaysia', 'MY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(135, 'Maldives', 'MV', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(136, 'Mali', 'ML', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(137, 'Malta', 'MT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(138, 'Marshall Islands', 'MH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(139, 'Martinique', 'MQ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(140, 'Mauritania', 'MR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(141, 'Mauritius', 'MU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(142, 'Mayotte', 'YT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(143, 'Mexico', 'MX', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(144, 'Micronesia (Federated States of)', 'FM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(145, 'Moldova (Republic of)', 'MD', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(146, 'Monaco', 'MC', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(147, 'Mongolia', 'MN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(148, 'Montenegro', 'ME', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(149, 'Montserrat', 'MS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(150, 'Morocco', 'MA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(151, 'Mozambique', 'MZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(152, 'Myanmar', 'MM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(153, 'Namibia', 'NA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(154, 'Nauru', 'NR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(155, 'Nepal', 'NP', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(156, 'Netherlands', 'NL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(157, 'New Caledonia', 'NC', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(158, 'New Zealand', 'NZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(159, 'Nicaragua', 'NI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(160, 'Niger', 'NE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(161, 'Nigeria', 'NG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(162, 'Niue', 'NU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(163, 'Norfolk Island', 'NF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(164, 'Korea (Democratic People\'s Republic of)', 'KP', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(165, 'Northern Mariana Islands', 'MP', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(166, 'Norway', 'NO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(167, 'Oman', 'OM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(168, 'Pakistan', 'PK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(169, 'Palau', 'PW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(170, 'Palestine, State of', 'PS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(171, 'Panama', 'PA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(172, 'Papua New Guinea', 'PG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(173, 'Paraguay', 'PY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(174, 'Peru', 'PE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(175, 'Philippines', 'PH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(176, 'Pitcairn', 'PN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(177, 'Poland', 'PL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(178, 'Portugal', 'PT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(179, 'Puerto Rico', 'PR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(180, 'Qatar', 'QA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(181, 'Republic of Kosovo', 'XK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(182, 'Romania', 'RO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(183, 'Russian Federation', 'RU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(184, 'Rwanda', 'RW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(185, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(186, 'Saint Kitts and Nevis', 'KN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(187, 'Saint Lucia', 'LC', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(188, 'Saint Martin (French part)', 'MF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(189, 'Saint Pierre and Miquelon', 'PM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(190, 'Saint Vincent and the Grenadines', 'VC', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(191, 'Samoa', 'WS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(192, 'San Marino', 'SM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(193, 'Sao Tome and Principe', 'ST', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(194, 'Saudi Arabia', 'SA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(195, 'Senegal', 'SN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(196, 'Serbia', 'RS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(197, 'Seychelles', 'SC', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(198, 'Sierra Leone', 'SL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(199, 'Singapore', 'SG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(200, 'Sint Maarten (Dutch part)', 'SX', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(201, 'Slovakia', 'SK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(202, 'Slovenia', 'SI', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(203, 'Solomon Islands', 'SB', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(204, 'Somalia', 'SO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(205, 'South Africa', 'ZA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(206, 'South Georgia and the South Sandwich Islands', 'GS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(207, 'Korea (Republic of)', 'KR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(208, 'South Sudan', 'SS', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(209, 'Spain', 'ES', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(210, 'Sri Lanka', 'LK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(211, 'Sudan', 'SD', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(212, 'Suriname', 'SR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(213, 'Svalbard and Jan Mayen', 'SJ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(214, 'Swaziland', 'SZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(215, 'Sweden', 'SE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(216, 'Switzerland', 'CH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(217, 'Syrian Arab Republic', 'SY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(218, 'Taiwan', 'TW', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(219, 'Tajikistan', 'TJ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(220, 'Tanzania, United Republic of', 'TZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(221, 'Thailand', 'TH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(222, 'Timor-Leste', 'TL', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(223, 'Togo', 'TG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(224, 'Tokelau', 'TK', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(225, 'Tonga', 'TO', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(226, 'Trinidad and Tobago', 'TT', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(227, 'Tunisia', 'TN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(228, 'Turkey', 'TR', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(229, 'Turkmenistan', 'TM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(230, 'Turks and Caicos Islands', 'TC', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(231, 'Tuvalu', 'TV', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(232, 'Uganda', 'UG', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(233, 'Ukraine', 'UA', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(234, 'United Arab Emirates', 'AE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(236, 'United States of America', 'US', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(237, 'Uruguay', 'UY', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(238, 'Uzbekistan', 'UZ', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(239, 'Vanuatu', 'VU', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(240, 'Venezuela (Bolivarian Republic of)', 'VE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(241, 'Viet Nam', 'VN', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(242, 'Wallis and Futuna', 'WF', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(243, 'Western Sahara', 'EH', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(244, 'Yemen', 'YE', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(245, 'Zambia', 'ZM', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(246, 'Zimbabwe', 'ZW', '2022-07-12 23:30:58', '2022-07-12 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_on_landing_page` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `description`, `created_at`, `updated_at`, `show_on_landing_page`) VALUES
(1, 'Art', 'Books that showcase particular types of art.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(2, 'Biography', 'A biography (from the Greek words bios meaning \"life\", and graphos meaning \"write\") is a non-fictional account of a person\'s life. Biographies are written by an author who is not the subject/focus of the book. ', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(3, 'Business', 'A business (also known as enterprise or firm) is an organization engaged in the trade of goods, services, or both to consumers.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(4, 'Comics', 'A comic book or comicbook, also called comic magazine or simply comic, is a publication that consists of comic art in the form of sequential juxtaposed panels that represent individual scenes.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(5, 'Contemporary', 'Contemporary fiction creates imaginary characters and situations that depict our world\nand society. It focuses on themes of growing up and confronting personal and social problems. ', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(6, 'Crime', 'Crime fiction is the literary genre that fictionalises crimes, their detection, criminals and their motives.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(7, 'Fantasy', 'Fantasy is a genre that uses magic and other supernatural forms as a primary element of plot, theme, and/or setting. Fantasy is generally distinguished from science fiction and horror by the expectation that it steers clear of technological and macabre themes, respectively, though there is a great deal of overlap between the three (collectively known as speculative fiction or science fiction/fantasy).', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(8, 'Fiction', 'Fiction is the telling of stories which are not real. More specifically, fiction is an imaginative form of narrative, one of the four basic rhetorical modes.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(9, 'Novels', '', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(10, 'History', 'History (from Greek ἱστορία - historia, meaning \"inquiry, knowledge acquired by investigation\") is the discovery, collection, organization, and presentation of information about past events. History can also mean the period of time after writing was invented.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(11, 'Horror', 'Horror fiction is fiction in any medium intended to scare, unsettle, or horrify the audience. Historically, the cause of the \"horror\" experience has often been the intrusion of a supernatural element into everyday human experience.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(12, 'Humor and Comedy', '', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(13, 'Music', 'Books about music history, music genres and musicians.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(14, 'Mystery', 'The mystery genre is a type of fiction in which a detective, or other professional, solves a crime or series of crimes. It can take the form of a novel or short story.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(15, 'Nonfiction', 'Nonfiction is an account or representation of a subject which is presented as fact. This presentation may be accurate or not; that is, it can give either a true or a false account of the subject in question. ', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(16, 'Philosophy', 'Philosophy is the study of general problems concerning matters such as existence, knowledge, truth, beauty, justice, validity, mind, and language. ', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(17, 'Poetry', 'Poetry is a form of literary art in which language is used for its aesthetic and evocative qualities in addition to, or in lieu of, its apparent meaning.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(18, 'Psychology', 'Books that involve psychology; the study of mental processes and human behavior.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(19, 'Religion', 'Religion is a cultural system that establishes symbols that relate humanity to spirituality and moral values. Many religions have narratives, symbols, traditions and sacred histories that are intended to give meaning to life or to explain the origin of life or the universe.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(20, 'Romance', 'According to the Romance Writers of America, \"Two basic elements comprise every romance novel: a central love story and an emotionally-satisfying and optimistic ending.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(21, 'Science', 'Science (from the Latin scientia, meaning “knowledge”) is the effort to discover, and increase human understanding of how the physical world works.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(22, 'Self Help', 'Self-help, or self-improvement, is a self-guided improvement[1]—economically, intellectually, or emotionally—often with a substantial psychological basis.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(23, 'Suspense', 'Suspense is the element of both fiction and some nonfiction that makes the reader uncertain about the outcome.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(24, 'Spirituality', 'Spirituality may refer to almost any kind of meaningful activity, personal growth, or blissful experience.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(25, 'Sports', 'Sports : engagement in physical activity intended to create a benefit to the participant. Ranging from Amateur to Professional, from incompetent to proficient, for all levels of ability, all nations, all creeds, all genders. As James Joyce said \"I am, a stride at a time\"', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(26, 'Thriller', 'Thrillers are characterized by fast pacing, frequent action, and resourceful heroes who must thwart the plans of more-powerful and better-equipped villains.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(27, 'Travel', 'Travel is the movement of people or objects (such as airplanes, boats, trains and other conveyances) between relatively distant geographical locations.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(28, 'Economics', 'Economics is a social science concerned with the factors that determine the production, distribution, and consumption of goods and services.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0),
(29, 'Politics', 'Politics (from Greek πολιτικός, \"of, for, or relating to citizens\"), is a process by which groups of people make collective decisions.', '2022-07-12 23:30:58', '2022-07-12 23:30:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_settings`
--

CREATE TABLE `homepage_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepage_settings`
--

INSERT INTO `homepage_settings` (`id`, `key`, `value`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://www.facebook.com/infyom', 'Facebook link', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(2, 'github', 'https://github.com/InfyOmLabs', 'Github link', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(3, 'linkedin', 'https://in.linkedin.com/company/infyom-technologies', 'Linkedin link', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(4, 'twitter', 'infyom', 'Twitter link', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(5, 'contact_email', 'contact@infyom.in', 'Contact Email', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(6, 'contact_phone', '7096336561', 'Contact Phone', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(7, 'website', 'http://www.infyom.com', 'Website', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(8, 'company_description', 'Leading Laravel Development Company Of India.', 'Company Description', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(9, 'hero_image_title', 'Hero image title 1', 'Hero Image Title', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(10, 'hero_image_description', 'This is Hero image Description.', 'Hero Image Description', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(11, 'about_us_text', 'An About Us page helps your company make a good first impression, and is critical for building customer trust and loyalty.', 'About us Text', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(12, 'genres_text', 'Art', 'Genres Text', '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(13, 'popular_books_text', 'Innovation ', 'Popular Books Text', '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `issued_books`
--

CREATE TABLE `issued_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_item_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `reserve_date` datetime DEFAULT NULL,
  `issued_on` datetime DEFAULT NULL,
  `return_due_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `return_date` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `issuer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `returner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issued_books`
--

INSERT INTO `issued_books` (`id`, `book_item_id`, `member_id`, `reserve_date`, `issued_on`, `return_due_date`, `note`, `return_date`, `status`, `issuer_id`, `returner_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, '2019-09-01 00:00:00', '2019-09-16 00:00:00', NULL, '2019-09-12 00:00:00', 3, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(2, 2, 1, '2019-08-05 00:00:00', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(3, 3, 1, '2019-07-22 00:00:00', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(4, 4, 1, '2019-07-18 00:00:00', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(5, 5, 1, NULL, '2019-07-02 00:00:00', '2019-07-17 00:00:00', NULL, NULL, 2, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(6, 6, 1, NULL, '2019-07-02 00:00:00', '2019-07-17 00:00:00', NULL, NULL, 2, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(7, 7, 1, NULL, '2019-09-25 00:00:00', '2019-10-10 00:00:00', NULL, NULL, 2, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(8, 8, 1, NULL, '2019-04-01 00:00:00', '2019-04-16 00:00:00', NULL, NULL, 6, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(9, 9, 1, NULL, '2019-05-01 00:00:00', '2019-05-16 00:00:00', NULL, '2019-05-14 00:00:00', 3, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL),
(10, 10, 1, '2019-04-07 00:00:00', NULL, NULL, NULL, NULL, 5, NULL, NULL, '2022-07-12 23:30:59', '2022-07-12 23:30:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_id`, `first_name`, `last_name`, `email`, `password`, `phone`, `image`, `is_active`, `activation_code`, `created_at`, `updated_at`, `email_verified_at`) VALUES
(1, '62ce518ae85ec', 'LMS', 'Member', 'member@lms.com', '$2y$10$lduMyt2C5DUdGG1ujRaq8exCHpo0aU4vmy5kH8svhoQyJp6lZfONu', '9999999999', NULL, 1, '62ce518b225db', '2022-07-12 23:30:59', '2022-07-12 23:30:59', '2022-07-13 05:00:59'),
(2, '62ce518b22616', 'Vishal', 'Ribdiya', 'vishal@lms.com', '$2y$10$5gA4iISMmXCZhCOaoscQROFZsxZFlr3MSEtW8Z3nMs8wZ1/HLOBUq', '9898989898', NULL, 1, '62ce518b4fb31', '2022-07-12 23:30:59', '2022-07-12 23:30:59', '2022-07-13 05:00:59'),
(3, '62ce518b4fb63', 'Mitul', 'Golakiya', 'mitul@lms.com', '$2y$10$lH6yy69h1UgCkVFzjhS.7O0grtrvkJ/lcOmHgEYJLBl1NmVJCMy3m', '7878787878', NULL, 1, '62ce518b7cd7a', '2022-07-12 23:30:59', '2022-07-12 23:30:59', '2022-07-13 05:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `membership_plans`
--

CREATE TABLE `membership_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `num_books_borrow` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership_plans`
--

INSERT INTO `membership_plans` (`id`, `name`, `price`, `description`, `frequency`, `slug`, `created_at`, `updated_at`, `num_books_borrow`) VALUES
(1, 'Silver', 300.00, 'Borrow 2 books at a time.', 1, 'silver', '2022-07-12 23:30:58', '2022-07-12 23:30:58', NULL),
(2, 'Golden', 400.00, 'Borrow 4 books at a time.', 1, 'golden', '2022-07-12 23:30:58', '2022-07-12 23:30:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_settings`
--

CREATE TABLE `member_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_settings`
--

INSERT INTO `member_settings` (`id`, `key`, `default_value`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'current_language', 'en', 'Current Language', '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `member_settings_values`
--

CREATE TABLE `member_settings_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `setting_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_17_111046_create_genres_table', 1),
(4, '2019_06_18_041744_create_authors_table', 1),
(5, '2019_06_19_051749_create_publishers_table', 1),
(6, '2019_06_19_060058_create_tags_table', 1),
(7, '2019_06_19_094902_create_book_languages_table', 1),
(8, '2019_06_19_120625_create_books_table', 1),
(9, '2019_06_19_130589_create_countries_table', 1),
(10, '2019_06_20_073240_create_addresses_table', 1),
(11, '2019_06_24_045413_create_book_tags_table', 1),
(12, '2019_06_24_050246_create_book_genres_table', 1),
(13, '2019_06_24_094343_create_book_items_table', 1),
(14, '2019_06_24_104225_create_membership_plans_table', 1),
(15, '2019_06_24_115700_create_members_table', 1),
(16, '2019_06_25_052422_create_issued_books_table', 1),
(17, '2019_06_25_103633_create_book_series_table', 1),
(18, '2019_06_25_110455_create_series_books_table', 1),
(19, '2019_07_11_052338_create_book_authors_table', 1),
(20, '2019_07_12_122450_create_settings_table', 1),
(21, '2019_09_11_115425_create_permission_tables', 1),
(22, '2019_10_21_112403_create_book_requests_table', 1),
(23, '2019_10_23_070035_create_homepage_settings_table', 1),
(24, '2019_11_27_095747_create_penalties_table', 1),
(25, '2019_11_29_044349_add_email_verified_at_column_into_members_table', 1),
(26, '2019_11_29_070906_make_existing_users_and_member_email_verified', 1),
(27, '2019_12_06_114550_create_testimonials_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2020_01_07_052507_make_book_item_price_nullable', 1),
(30, '2020_02_04_070051_create_member_settings_table', 1),
(31, '2020_02_04_071801_create_member_setting_values_table', 1),
(32, '2020_03_03_092343_add_deleted_at_column_into_issued_books_table', 1),
(33, '2020_07_10_061355_create_add_filename_to_book_items_table', 1),
(34, '2020_09_16_043210_add_show_on_landing_page_to_genres_table', 1),
(35, '2020_09_16_063553_create_about_us_cards_table', 1),
(36, '2021_02_13_061139_remove_penalties_where_book_item_id_and_collected_by_null', 1),
(37, '2021_02_15_093832_remove_penalties_where_member_id_null', 1),
(38, '2022_06_17_064542_create_translations_table', 1),
(39, '2022_06_17_105144_create_subscriptions_table', 1),
(40, '2022_06_22_050040_add_num_books_borrow_column_into_membership_plans', 1),
(41, '2022_06_22_063757_add_foreign_key_into_transactions_table', 1),
(42, '2022_06_24_061339_remove_membership_i_d_from_members', 1),
(43, '2022_06_27_110905_drop_stripe_plan_i_d_from_plans', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2);

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
-- Table structure for table `penalties`
--

CREATE TABLE `penalties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `book_item_id` int(10) UNSIGNED DEFAULT NULL,
  `actual_penalty` double NOT NULL,
  `issued_book_id` int(10) UNSIGNED DEFAULT NULL,
  `collected_penalty` double NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `collected_at` datetime NOT NULL,
  `collected_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_books', 'web', 'Can Manage Books', 'Create/Update/Delete Books, Book Series, Book Languages, Authors, Publishers, Tags', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'issue_books', 'web', 'Can Manage Issue Books', 'Can Manage Issue Books', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(3, 'manage_members', 'web', 'Can Manage Members', 'Create/Update/Delete Members', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(4, 'manage_finance', 'web', 'Can Manage Finance', 'Manage Membership Plans, Payments', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(5, 'manage_settings', 'web', 'Can Manage Settings', 'Manage Settings', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(6, 'manage_roles', 'web', 'Can Manage Roles', 'Manage Roles', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(7, 'manage_authors', 'web', 'Can Manage Authors', 'Manage Authors', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(8, 'manage_publishers', 'web', 'Can Manage Publishers', 'Manage Publishers', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(9, 'manage_book_series', 'web', 'Can Manage Book Series', 'Manage Book Series', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(10, 'manage_users', 'web', 'Can Manage Users', 'Manage Users', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(11, 'manage_book_languages', 'web', 'Can Manage Book Languages', 'Manage Book Languages', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(12, 'manage_plans', 'web', 'Can Manage Plans', 'Manage Plans', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(13, 'manage_tags', 'web', 'Can Manage Tags', 'Manage Tags', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(14, 'manage_genres', 'web', 'Can Manage Genres', 'Manage Genres', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(15, 'manage_book_requests', 'web', 'Can Manage Book Requests', 'Manage Book Requests', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(16, 'manage_penalties', 'web', 'Can Manage Penalties', 'Manage Penalties', '2022-07-12 23:30:58', '2022-07-12 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Penguin Random House', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'McGraw-Hill Education', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(3, 'HarperCollins', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(4, 'Egmont Books', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(5, 'Shueisha', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(6, 'Kodansha', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(7, 'Pearson Education', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(8, 'Egmont Group', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(9, 'Klett', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(10, 'Jaico Publishing House', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(11, 'Westland Publications', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(12, 'Hachette Livre', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(13, 'Scholastic', '2022-07-12 23:30:58', '2022-07-12 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Library Admin', 'Library Admin', 'web', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'librarian', 'Librarian', 'Librarian', 'web', '2022-07-12 23:30:58', '2022-07-12 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(1, 2),
(2, 2),
(3, 2),
(5, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `series_books`
--

CREATE TABLE `series_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `series_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `sequence` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series_books`
--

INSERT INTO `series_books` (`id`, `series_id`, `book_id`, `sequence`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 1, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(2, 1, 14, 2, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(3, 1, 15, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(4, 1, 16, 4, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(5, 1, 17, 5, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(6, 1, 18, 6, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(7, 1, 19, 7, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(8, 2, 11, 1, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(9, 2, 12, 2, '2022-07-12 23:30:59', '2022-07-12 23:30:59'),
(10, 2, 7, 3, '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'currency', 'INR', 'Indian Rupee', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'return_due_days', '15', 'Return Due Days', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(3, 'reserve_due_days', '5', 'Reserve Due Days', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(4, 'library_name', 'My Library', 'My Library', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(5, 'library_logo', 'images/logo-blue-black.png', 'Library Logo', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(6, 'language', 'en', 'English', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(7, 'favicon_icon', 'images/favicon/favicon.ico', 'Icon', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(8, 'reserve_books_limit', '5', 'Maximum reserve books limit', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(9, 'issue_books_limit', '5', 'Maximum issue books limit', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(10, 'penalty_per_day', '10', 'Penalty amount per day', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(11, 'book_due_reminder_before_days', '2', 'Book Due Reminder Before Days', '2022-07-12 23:30:59', '2022-07-12 23:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `plan_amount` double NOT NULL DEFAULT '0',
  `plan_frequency` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `trial_ends_at` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Family', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'Animal', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(3, 'Fiction', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(4, 'Science', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(5, 'History', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(6, 'Biopic', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(7, 'Art', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(8, 'Horror', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(9, 'Comedy', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(10, 'Nature', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(11, 'Popular', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(12, 'Sports', '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(13, 'Entertainment', '2022-07-12 23:30:58', '2022-07-12 23:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_mode` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `phone`, `image`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'LMS', 'Admin', 'admin@lms.com', '2022-07-12 23:30:58', '$2y$10$xzbSROLSvaN3RqSJnRDRteoHvRMyFekBFh6ESkcq6xEkRmQ.Fu7ju', NULL, NULL, 1, NULL, '2022-07-12 23:30:58', '2022-07-12 23:30:58'),
(2, 'LMS', 'Librarian', 'librarian@lms.com', '2022-07-12 23:30:58', '$2y$10$MLLIMGK0aNP4m88nxRq3ueQ.GM9BCYwYCb3Nm7muDCQGmygN2.WU.', NULL, NULL, 1, NULL, '2022-07-12 23:30:58', '2022-07-12 23:30:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_cards`
--
ALTER TABLE `about_us_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_authors`
--
ALTER TABLE `book_authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_authors_book_id_foreign` (`book_id`),
  ADD KEY `book_authors_author_id_foreign` (`author_id`);

--
-- Indexes for table `book_genres`
--
ALTER TABLE `book_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_genres_book_id_foreign` (`book_id`),
  ADD KEY `book_genres_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `book_items`
--
ALTER TABLE `book_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_items_book_code_unique` (`book_code`),
  ADD KEY `book_items_publisher_id_foreign` (`publisher_id`),
  ADD KEY `book_items_language_id_foreign` (`language_id`);

--
-- Indexes for table `book_languages`
--
ALTER TABLE `book_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_languages_language_name_unique` (`language_name`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_series`
--
ALTER TABLE `book_series`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_series_title_unique` (`title`);

--
-- Indexes for table `book_tags`
--
ALTER TABLE `book_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_tags_book_id_foreign` (`book_id`),
  ADD KEY `book_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_settings`
--
ALTER TABLE `homepage_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issued_books_book_item_id_foreign` (`book_item_id`),
  ADD KEY `issued_books_member_id_foreign` (`member_id`),
  ADD KEY `issued_books_issuer_id_foreign` (`issuer_id`),
  ADD KEY `issued_books_returner_id_foreign` (`returner_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_member_id_unique` (`member_id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `membership_plans`
--
ALTER TABLE `membership_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_settings`
--
ALTER TABLE `member_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_settings_values`
--
ALTER TABLE `member_settings_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_settings_values_member_id_foreign` (`member_id`),
  ADD KEY `member_settings_values_setting_id_foreign` (`setting_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penalties_book_item_id_foreign` (`book_item_id`),
  ADD KEY `penalties_collected_by_foreign` (`collected_by`),
  ADD KEY `penalties_member_id_foreign` (`member_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `series_books`
--
ALTER TABLE `series_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `series_books_series_id_foreign` (`series_id`),
  ADD KEY `series_books_book_id_foreign` (`book_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_member_id_foreign` (`member_id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_member_id_foreign` (`member_id`),
  ADD KEY `transactions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_cards`
--
ALTER TABLE `about_us_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `book_authors`
--
ALTER TABLE `book_authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `book_genres`
--
ALTER TABLE `book_genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `book_items`
--
ALTER TABLE `book_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `book_languages`
--
ALTER TABLE `book_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_series`
--
ALTER TABLE `book_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_tags`
--
ALTER TABLE `book_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `homepage_settings`
--
ALTER TABLE `homepage_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `issued_books`
--
ALTER TABLE `issued_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership_plans`
--
ALTER TABLE `membership_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member_settings`
--
ALTER TABLE `member_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member_settings_values`
--
ALTER TABLE `member_settings_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `series_books`
--
ALTER TABLE `series_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `book_authors`
--
ALTER TABLE `book_authors`
  ADD CONSTRAINT `book_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_authors_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_genres`
--
ALTER TABLE `book_genres`
  ADD CONSTRAINT `book_genres_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_genres_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_items`
--
ALTER TABLE `book_items`
  ADD CONSTRAINT `book_items_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `book_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_items_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `book_tags`
--
ALTER TABLE `book_tags`
  ADD CONSTRAINT `book_tags_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD CONSTRAINT `issued_books_book_item_id_foreign` FOREIGN KEY (`book_item_id`) REFERENCES `book_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `issued_books_issuer_id_foreign` FOREIGN KEY (`issuer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `issued_books_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `issued_books_returner_id_foreign` FOREIGN KEY (`returner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_settings_values`
--
ALTER TABLE `member_settings_values`
  ADD CONSTRAINT `member_settings_values_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_settings_values_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `member_settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `penalties`
--
ALTER TABLE `penalties`
  ADD CONSTRAINT `penalties_book_item_id_foreign` FOREIGN KEY (`book_item_id`) REFERENCES `book_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penalties_collected_by_foreign` FOREIGN KEY (`collected_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penalties_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `series_books`
--
ALTER TABLE `series_books`
  ADD CONSTRAINT `series_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `series_books_series_id_foreign` FOREIGN KEY (`series_id`) REFERENCES `book_series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `membership_plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `membership_plans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
