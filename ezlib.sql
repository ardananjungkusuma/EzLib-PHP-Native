-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 02:50 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezlib`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(70) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `alamat_admin` varchar(80) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_admin`, `alamat_admin`, `email`) VALUES
(1, 'ardan', '1da5f689d169e9a8ccde10841c9759b2', 'Ardan Anjung Kusuma', 'Bojonegoro', 'ardan@ezlib.com'),
(2, 'sugeng', '9e28894760bdf11cb2bef7a32c020e3b', 'Sugeng Prastiyo', 'Blitar', 'sugeng@ezlib.com');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `keterangan_buku` longtext NOT NULL,
  `status_buku` varchar(25) NOT NULL,
  `nama_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `nama_buku`, `penerbit`, `keterangan_buku`, `status_buku`, `nama_file`) VALUES
(1, 'The Girl - With The Dragon Tattoo', 'Stieg Larsson', 'Harriet Vanger, a scion of one of Swedenâ€™s wealthiest families disappeared over forty years ago. All these years later, her aged uncle continues to seek the truth. He hires Mikael Blomkvist, a crusading journalist recently trapped by a libel conviction, to investigate. He is aided by the pierced and tattooed punk prodigy Lisbeth Salander. Together they tap into a vein of unfathomable iniquity and astonishing corruption.', 'Tidak Tersedia', 'img/booksCatalogue/2429135.jpg'),
(2, 'To Kill A Mockingbird', 'Harper Lee', 'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.', 'Booked', 'img/booksCatalogue/2657.jpg'),
(3, 'Harry Potter and The Prisoner of Azkaban', 'J.K. Rowling', 'Harry Potter\'s third year at Hogwarts is full of new dangers. A convicted murderer, Sirius Black, has broken out of Azkaban prison, and it seems he\'s after Harry. Now Hogwarts is being patrolled by the dementors, the Azkaban guards who are hunting Sirius. But Harry can\'t imagine that Sirius or, for that matter, the evil Lord Voldemort could be more frightening than the dementors themselves, who have the terrible power to fill anyone they come across with aching loneliness and despair. Meanwhile, life continues as usual at Hogwarts. A top-of-the-line broom takes Harry\'s success at Quidditch, the sport of the Wizarding world, to new heights. A cute fourth-year student catches his eye. And he becomes close with the new Defense of the Dark Arts teacher, who was a childhood friend of his father. Yet despite the relative safety of life at Hogwarts and the best efforts of the dementors, the threat of Sirius Black grows ever closer. But if Harry has learned anything from his education in wizardry, it is that things are often not what they seem. Tragic revelations, heartwarming surprises, and high-stakes magical adventures await the boy wizard in this funny and poignant third installment of the beloved series.', 'Tersedia', 'img/booksCatalogue/5.jpg'),
(4, 'The Adventurous Eaters Club: Mastering the Art of Family Mealtime', 'Misha Collins, Vicki Collins', 'A TV star Misha Collins and his wife, journalist and historian Vicki Collins, show families how to be mealtime adventurers so that kids might have a lifelong relationship with real food\r\n\r\nChicken nuggets. Hot dogs. Macaroni and cheese. These are just some of the greatest hits we offer kids at mealtime.\r\n\r\nMisha and Vicki Collins totally get it. When their son West was a toddler, he began refusing anything that wasnâ€™t bland and beige. At first, they succumbed, anything to end the mealtime battles. But with sinking hearts they realized fruit snacks and buttered noodles werenâ€™t just void of nutrition, they were setting him up for a lifetime with a limited palate and a reliance on convenience foods. ', 'Booked', 'img/booksCatalogue/43884186.jpg'),
(5, 'Using the Mysteries of Autism to Decode Animal Behavior', 'Temple Grandin, Catherine Johnson', 'Why would a cow lick a tractor? Why are collies getting dumber? Why do dolphins sometimes kill for fun? How can a parrot learn to spell? How did wolves teach man to evolve?\r\n\r\nTemple Grandin draws upon a long, distinguished career as an animal scientist and her own experiences with autism to deliver an extraordinary message about how animals act, think, and feel. She has a perspective like that of no other expert in the field, which allows her to offer unparalleled observations and groundbreaking ideas.', 'Tersedia', 'img/booksCatalogue/7366.jpg'),
(6, 'Artificial Intelligence: A Guide for Thinking Humans', 'Melanie Mitchell', 'A sweeping examination of the current state of artificial intelligence and how it is remaking our world\r\n\r\nNo recent scientific enterprise has proved as alluring, terrifying, and filled with extravagant promise and frustrating setbacks as artificial intelligence. The award-winning author Melanie Mitchell, a leading computer scientist, now reveals AIâ€™s turbulent history and the recent spate of apparent successes, grand hopes, and emerging fears surrounding it.\r\n\r\nIn Artificial Intelligence, Mitchell turns to the most urgent questions concerning AI today: How intelligentâ€”reallyâ€”are the best AI programs? How do they work? What can they actually do, and when do they fail? How humanlike do we expect them to become, and how soon do we need to worry about them surpassing us? Along the way, she introduces the dominant models of modern AI and machine learning, describing cutting-edge AI programs, their human inventors, and the historical lines of thought underpinning recent achievements.', 'Tersedia', 'img/booksCatalogue/ai1.jpg'),
(7, 'Judy Joo Korean Soul Food: Authentic dishes and modern twists', 'Judy Joo', 'Fresh from the success of Korean Food Made Simple, chef Judy Joo is back with a brand new collection of recipes that celebrate the joys of Korean comfort food and gets straight to the heart and soul of the kitchen.\r\n\r\nDrawing on her own heritage and international experience, Judy presents recipes for everything from street food to snacks and sharing plates, kimchi to Ko-Mex fusion food, and dumplings to dessert. Through clear, easy-to-understand recipes and gorgeous photography, Judy will help you master the basics before putting her signature fun, unexpected twist on the classics, including Philly Cheesesteak dumplings and a Full English Breakfastâ€“inspired Bibimbap bowl.', 'Tidak Tersedia', 'img/booksCatalogue/koreaajudyjooo.jpg'),
(8, 'Boneshaker (The Clockwork Century #1)', 'Cherie Priest', 'In the early days of the Civil War, rumors of gold in the frozen Klondike brought hordes of newcomers to the Pacific Northwest. Anxious to compete, Russian prospectors commissioned inventor Leviticus Blue to create a great machine that could mine through Alaskaâ€™s ice. Thus was Dr. Blueâ€™s Incredible Bone-Shaking Drill Engine born.', 'Tersedia', 'img/booksCatalogue/1137215._SY475_.jpg'),
(9, 'Leviathan (Leviathan #1)', 'Scott Westerfeld', 'Prince Aleksander, would-be heir to the Austro-Hungarian throne, is on the run. His own people have turned on him. His title is worthless. All he has is a battletorn war machine and a loyal crew of men.', 'Tersedia', 'img/booksCatalogue/6050678.jpg'),
(10, 'Anne Boleyn: 500 Years of Lies', 'Hayley Nolan', 'History has lied.\r\n\r\nAnne Boleyn has been sold to us as a dark figure, a scheming seductress who bewitched Henry VIII into divorcing his queen and his church in an unprecedented display of passion. Quite the tragic love story, right?\r\n\r\nWrong.\r\n\r\nIn this electrifying exposÃ©, Hayley Nolan explores for the first time the full, uncensored evidence of Anne Boleynâ€™s life and relationship with Henry VIII, revealing the shocking suppression of a powerful woman.\r\n\r\nSo leave all notions of outdated and romanticised folklore at the door and forget what you think you know about one of the Tudorsâ€™ most notorious queens. She may have been silenced for centuries, but this urgent book ensures Anne Boleynâ€™s voice is being heard now.\r\n\r\n#TheTruthWillOut', 'Tersedia', 'img/booksCatalogue/44806537._SY475_.jpg'),
(11, 'The Infinite Game', 'Simon Sinek', 'Do you know how to play the game you are in?\r\n\r\nIn finite games, like football or chess, the players are known, the rules are fixed, and the endpoint is clear. The winners and losers are easily identified.\r\n\r\nIn infinite games, like business or politics or life itself, the players come and go, the rules are changeable, and there is no defined endpoint. There are no winners or losers in an infinite game; there is only ahead and behind.\r\n\r\nThe more I started to understand the difference between finite and infinite games, the more I began to see infinite games all around us. I started to see that many of the struggles that organizations face exist simply because their leaders were playing with a finite mindset in an infinite game. These organizations tend to lag behind in innovation, discretionary effort, morale and ultimately performance.\r\n\r\nThe leaders who embrace an infinite mindset, in stark contrast, build stronger, more innovative, more inspiring organizations. Their people trust each other and their leaders. They have the resilience to thrive in an ever-changing world, while their competitors fall by the wayside. Ultimately, they are the ones who lead the rest of us into the future.', 'Tersedia', 'img/booksCatalogue/38390751.jpg'),
(12, 'How to Raise a Reader', 'Pamela Paul,Maria Russo', 'An indispensable guide to welcoming childrenâ€”from babies to teensâ€”to a lifelong love of reading, written by Pamela Paul and Maria Russo, editors of The New York Times Book Review.\r\n \r\nDo you remember your first visit to where the wild things are? How about curling up for hours on end to discover the secret of the Sorcererâ€™s Stone? Combining clear, practical advice with inspiration, wisdom, tips, and curated reading lists, How to Raise a Reader shows you how to instill the joy and time-stopping pleasure of reading.', 'Tersedia', 'img/booksCatalogue/raise123.jpg'),
(13, 'Fair Play', 'Eve Rodsky', 'A revolutionary, real-world solution to the problem of unpaid, invisible work that women have shouldered for too long.\r\n\r\nIt started with the Shit I Do List. Tired of being the shefault parent responsible for all aspects of her busy household, Eve Rodsky counted up all the unpaid, invisible work she was doing for her family and then sent that list to her husband, asking for things to change. His response was... underwhelming. Rodsky realized that simply identifying the issue of unequal labor on the home front wasnt enough: She needed a solution to this universal problem. Her sanity, identity, career, and marriage depended on it.', 'Tersedia', 'img/booksCatalogue/44071899._SY475H.jpg'),
(14, 'Messengers: Who We Listen To, Who We Dont, and Why', 'Stephen Martin', 'We live in a world where proven facts and verifiable data are freely and widely available. Why, then, are self-confident ignoramuses so often believed over thoughtful experts? And why do seemingly irrelevant details such as a persons appearance or financial status influence whether or not we trust what they are saying, regardless of their wisdom or foolishness?\r\nStephen Martin and Joseph Marks compellingly explain how in our uncertain and ambiguous world, the messenger is increasingly the message. We frequently fail, they argue, to separate the idea being communicated from the person conveying it, explaining why the status or connectedness of the messenger has become more important than the message itself.', 'Booked', 'img/booksCatalogue/43522604.jpg'),
(15, 'Aphrodite Made Me Do It', 'Trista Mateer', 'Bestselling and award-winning author Trista Mateer takes an imaginative approach to self-care in this new poetry and prose collection, Aphrodite Made Me Do It. In this empowering retelling, she uses the mythology of the goddess to weave a common thread through the past and present. By the end of this book, Aphrodite make you believe in the possibility of your own healing.', 'Tersedia', 'img/booksCatalogue/43819413aa.jpg'),
(16, 'To Drink Coffee with a Ghost', 'Amanda Lovelace', 'You cannot have a funeral for your mother without also having a funeral for yourself. This book poses the ever-lingering question What happens when someone dies before they are able to redeem themselves?\r\n\r\nFrom the bestselling and award-winning poetess, amanda lovelace, comes the finale of her illustrated duology, things that haunt. In the first installment, to make monsters out of girls, lovelace explored the memory of being in a toxic romantic relationship. In to drink coffee with a ghost, lovelace unravels the memory of the complicated relationship she had with her now-deceased mother.', 'Tersedia', 'img/booksCatalogue/36297097.jpg'),
(17, 'Masquerade', 'Cyrus Parker', 'Non-binary poet Cyrus Parker returns with an all-new collection of poetry and prose dedicated to those struggling to find their own identity in a world that often forces one into the confines of whatâ€™s considered socially acceptable.\r\n \r\nDivided into three parts and illustrated by Parker, masquerade grapples with topics such as the never-ending search for acceptance, gender identity, relationships, and the struggle to recognize your own face after hiding behind another for so long.', 'Tersedia', 'img/booksCatalogue/42202749.jpg'),
(18, 'Between You and These Bones', 'F.D. Soul', 'Published June 7th 2018 by Vi Verbis Press', 'Tidak Tersedia', 'img/booksCatalogue/40829629._SY475_.jpg'),
(19, 'Dumpty: The Age of Trump in Verse', 'John Lithgow', 'Award-winning actor and bestselling author John Lithgow wields a whip-smart, satirical pen in this poetic diatribe chronicling the last few abysmal years in politics. With lacerating wit, he takes readers verse by verse through the history of Donald Trump presidency, lampooning the likes of Betsy DeVos, Anthony Scaramucci, Scott Pruitt, Paul Manafort, Trump doctors, and many others. Illustrated from cover to cover with Lithgows never-before-seen line drawings, the poems collected in Dumpty draw inspiration from A. A. Milne, Lewis Carroll, Edward Lear, Rodgers and Hammerstein, Mother Goose, and many more. A YUGE feat of laugh-out-loud lyrical storytelling, this hilarious and timely volume is bound to bring joy to poetry lovers, political junkies, and Lithgow fans.', 'Tersedia', 'img/booksCatalogue/44601187._SX318_.jpg'),
(20, 'Strange Planet', 'Nathan W. Pyle', 'The Emergence Day\r\nBeing Gains a Sibling\r\nThe Being Family Attains a Beast\r\nThe Formal Education of a Being\r\nCelebration of Special Days\r\nBeing Begins a Vocation\r\nThe Beings at Home\r\nHealth Status of a Being\r\nThe Hobbies of a Being\r\nThe Extended Family of the Being\r\nThe Being Reflects on Life While Watching the Planet Rotate', 'Tersedia', 'img/booksCatalogue/44890112._SX318_.jpg'),
(21, 'Hope Rides Again (Obama Biden Mysteries #2)', 'Andrew Shaffer ', 'Obama and Biden return in this thrilling sequel to the New York Times best-selling bromance-mystery HOPE RIDES AGAIN, this time in Chicago.\r\n\r\nFollowing a successful but exhausting book tour, Joe Biden is looking forward to returning home. However, before he does, he is got one last stop to make: Chicago, where the Obama Foundation is holding its first annual global economics forum. Barack Obama has invited Joe to meet a wealthy left-leaning philanthropist, whose deep pockets Joe will need if he decides to run for president. Joe isnt even sure if wants to run...but hes not going to pass up a rare chance to reconnect with his one-time governing mate.\r\n\r\nJoe and Obama barely have time to catch up before another mystery lands in their laps: Obama prized Blackberry is stolen. When the suspect turns up comatose from a gunshot wound, local police are content with writing it off as just another gangland shooting. But Joe and Obama smell a rat.', 'Tersedia', 'img/booksCatalogue/42506471._SY475_.jpg'),
(22, 'Do You Mind If I Cancel? (Things That Still Annoy Me)', 'Gary Janetti', 'Gary Janetti, the writer and producer for some of the most popular television comedies of all time, and creator of one of the most wickedly funny Instagram accounts there is, now turns his skills to the page in a hilarious, and poignant book chronicling the pains and indignities of everyday life.\r\n\r\nGary spends his twenties in New York, dreaming of starring on soap operas while in reality working at a hotel where he lusts after an unattainable colleague and battles a bellman who despises it when people actually use a bell to call him. He chronicles the torture of finding a job before the internet when you had to talk on the phone all the time, and fantasizes, as we all do, about who to tell off when he finally wins an Oscar. As Gary himself says, These are essays from my childhood and young adulthood about things that still annoy me.', 'Tersedia', 'img/booksCatalogue/43263670.jpg'),
(23, 'Little Leaders: Exceptional Men in Black History', 'Vashti Harrison', 'Learn all about the exceptional black men who broke barriers and fought injustice to realise their dreams and make the world a better place.\r\n\r\nWith Vashti Harrisons beautiful illustrations and illuminating writing, discover the stories of black men from all walks of life, including:\r\n\r\nDoctor Harold Moody\r\nDiplomat Kofi Annan\r\nActivist Paul Stephenson\r\nArchitect Sir David Adjaye\r\nComic book author Dwayne McDuffie\r\nMusician Prince\r\n\r\nYour own little leaders will be inspired to take on the world after learning about these incredible men.', 'Tersedia', 'img/booksCatalogue/44558653._SX318_.jpg'),
(24, 'Good Economics for Hard Times', 'Abhijit V. Banerjee, Esther Duflo', 'The winners of the Nobel Prize show how economics, when done right, can help us solve the thorniest social and political problems of our day.\r\n\r\nFiguring out how to deal with todays critical economic problems is perhaps the great challenge of our time. Much greater than space travel or perhaps even the next revolutionary medical breakthrough, what is at stake is the whole idea of the good life as we have known it.\r\n\r\nImmigration and inequality, globalization and technological disruption, slowing growth and accelerating climate change--these are sources of great anxiety across the world, from New Delhi and Dakar to Paris and Washington, DC. The resources to address these challenges are there--what we lack are ideas that will help us jump the wall of disagreement and distrust that divides us. If we succeed, history will remember our era with gratitude; if we fail, the potential losses are incalculable.', 'Tersedia', 'img/booksCatalogue/46761320._SY475_.jpg'),
(25, 'Narrative Economics: How Stories Go Viral and Drive Major Economic Events', 'Robert J. Shiller', 'In a world in which internet troll farms attempt to influence foreign elections, can we afford to ignore the power of viral stories to affect economies? In this groundbreaking book, Nobel Prize-winning economist and New York Times bestselling author Robert Shiller offers a new way to think about the economy and economic change. Using a rich array of historical examples and data, Shiller argues that studying popular stories that affect individual and collective economic behavior--what he calls narrative economics --has the potential to vastly improve our ability to predict, prepare for, and lessen the damage of financial crises, recessions, depressions, and other major economic events.', 'Tersedia', 'img/booksCatalogue/44526017.jpg'),
(26, 'Range: Why Generalists Triumph in a Specialized World', 'David Epstein', 'What s the most effective path to success in any domain? Its not what you think.\r\n\r\nPlenty of experts argue that anyone who wants to develop a skill, play an instrument, or lead their field should start early, focus intensely, and rack up as many hours of deliberate practice as possible. If you dabble or delay, you ll never catch up to the people who got a head start. But a closer look at research on the worlds top performers, from professional athletes to Nobel laureates, shows that early specialization is the exception, not the rule.\r\n\r\nDavid Epstein examined the worlds most successful athletes, artists, musicians, inventors, forecasters and scientists. He discovered that in most fields--especially those that are complex and unpredictable--generalists, not specialists, are primed to excel. Generalists often find their path late, and they juggle many interests rather than focusing on one. They re also more creative, more agile, and able to make connections their more specialized peers cant see.\r\n', 'Tersedia', 'img/booksCatalogue/41795733.jpg'),
(27, 'Talking to Strangers: What We Should Know about the People We Dont Know', 'Malcolm Gladwell', 'Malcolm Gladwell, host of the podcast Revisionist History and author of the #1 New York Times bestseller Outliers, offers a powerful examination of our interactions with strangers -- and why they often go wrong.\r\n\r\nHow did Fidel Castro fool the CIA for a generation? Why did Neville Chamberlain think he could trust Adolf Hitler? Why are campus sexual assaults on the rise? Do television sitcoms teach us something about the way we relate to each other that isnt true?\r\n\r\nWhile tackling these questions, Malcolm Gladwell was not solely writing a book for the page. He was also producing for the ear. In the audiobook version of Talking to Strangers, you will hear the voices of people he interviewed--scientists, criminologists, military psychologists. Court transcripts are brought to life with re-enactments. You actually hear the contentious arrest of Sandra Bland by the side of the road in Texas. As Gladwell revisits the deceptions of Bernie Madoff, the trial of Amanda Knox, and the suicide of Sylvia Plath, you hear directly from many of the players in these real-life tragedies. There is even a theme song - Janelle Monae Hell You Talmbout.', 'Tersedia', 'img/booksCatalogue/43848929._SX318_.jpg'),
(28, 'The Anubis Gates', 'Tim Powers', 'Brendan Doyle, a specialist in the work of the early nineteenth century poet William Ashbless, reluctantly accepts an invitation from a millionaire to act as a guide to time-travelling tourists. But while attending a lecture given by Samuel Taylor Coleridge in 1810, he becomes marooned in Regency London, where dark and dangerous forces know about the gates in time. Caught up in the intrigue between rival bands of beggars, pursued by Egyptian sorcerers, befriended by Coleridge, Doyle somehow survives. And learns more about the mysterious Ashbless than he could ever have imagined possible.', 'Tersedia', 'img/booksCatalogue/142296.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_booking` varchar(20) NOT NULL,
  `tanggal_pinjam` varchar(20) NOT NULL,
  `tanggal_kembali` varchar(20) NOT NULL,
  `denda` varchar(25) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_user`, `id_buku`, `tanggal_booking`, `tanggal_pinjam`, `tanggal_kembali`, `denda`, `status`) VALUES
(1, 3, 6, '01/12/2019', '02/12/2019', '09/12/2019', '', 'Dikembalikan'),
(2, 1, 4, '01/12/2019', '01/12/2019', '08/12/2019', '', 'Dikembalikan'),
(3, 1, 12, '01/12/2019', '03/12/2019', '12/12/2019', '10000', 'Dikembalikan'),
(4, 1, 10, '01/12/2019', 'Not Set', 'Not Set', '', 'Tidak Jadi Dibooking'),
(5, 3, 11, '02/12/2019', 'Not Set', 'Not Set', '', 'Tidak Jadi Dibooking'),
(6, 4, 18, '02/12/2019', 'Not Set', 'Not Set', '', 'Tidak Jadi Dibooking'),
(7, 4, 14, '03/12/2019', 'Not Set', 'Not Set', '', 'Dibooking'),
(8, 6, 19, '05/12/2019', 'Not Set', 'Not Set', '', 'Tidak Jadi Dibooking'),
(9, 7, 20, '08/12/2019', 'Not Set', 'Not Set', '', 'Dibooking'),
(10, 8, 1, '09/12/2019', '10/12/2019', '17/12/2019', '', 'Dipinjam');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(70) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `alamat_user` varchar(80) NOT NULL,
  `email` varchar(40) NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `alamat_user`, `email`, `no_hp`) VALUES
(1, 'rasyid', '0e9ecf5ef87767cba276f29647061269', 'Abdurrasyid Muhasibi', 'Blitar', 'rassyiiid@gmail.com', '+628512312451'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User 1', 'Remujung 12', 'useraraarar@gmail.com', '+6285721235129'),
(3, 'sugeng', '6c62460ad1e6a9a106a8debb80e2f07e', 'Sugeng Prastiyo', 'Jl. Bunga Kasih 27 Malang', 'sugengprastiyo001@gmail.com', '+6285242134'),
(4, 'martin', '34f74c049edea51851c6924f4a386762', 'Martin Amanu Khusna', 'Jl. Bunga Melati 47 Malang', 'martinamanuu12@gmail.com', '+62852123231'),
(5, 'osa', '374762714ec840404a3c2c4afc32cc22', 'Osa Mahanani.S', 'Jl. Senggani 15 Malang', 'osahehe2@gmail.com', '+628712341245'),
(6, 'livia', '3fb4b2291f7bf8c4835b8a11f1cf199f', 'Livia Yurike', 'Jl. Suhat 15 Malang', 'livialiv@gmail.com', '+628527213245'),
(7, 'hunayn', '01e340317b4ea5bf03eae0912a2d4546', 'Hunayn Risatayn', 'Jl. Anggrek 35', 'hunayn15@gmail.com', '+62852589912345'),
(8, 'agit', 'a505c964caa2a7a9f158378df55462f9', 'agit', 'malang', 'agit@yahoo.com', '+6285258967800');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
