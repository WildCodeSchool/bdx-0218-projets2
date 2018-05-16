-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql7.freemysqlhosting.net
-- Généré le :  jeu. 03 mai 2018 à 09:12
-- Version du serveur :  5.5.58-0ubuntu0.14.04.1
-- Version de PHP :  7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sql7234609`
--

-- --------------------------------------------------------

--
-- Structure de la table `bar`
--

CREATE TABLE `bar` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `picto` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `numbers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bar`
--

INSERT INTO `bar` (`id`, `type`, `picto`, `name`, `numbers`) VALUES
(1, 'fun', 'fa-wine-glass', 'Caisses de St Emilion', 928),
(2, 'fun', 'fa-gamepad', 'Parties de Mario Kart', 223097),
(3, 'fun', 'fa-utensils', 'Toasts de foie gras', 500),
(4, 'serious', 'fa-users', 'Collaborateurs', 1345),
(5, 'serious', 'fa-building', 'Entreprises Partenaires', 546),
(6, 'serious', 'fa-compass', 'Métiers', 107);

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date_parution` varchar(25) DEFAULT NULL,
  `content` longtext,
  `images` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `blog`
--

INSERT INTO `blog` (`id`, `title`, `date_parution`, `content`, `images`, `autor`, `category`, `description`) VALUES
(1, 'DEVOPS, UN CHEMIN DE PROGRÈS OUVERT À TOUS', '2018/01/06', 'Dans un environnement économique en perpétuelle accélération, les entreprises sont soumises à une pression croissante qui se transmet inévitablement à l’informatique.Développer plus vite des applications plus sûres, offrant une meilleure expérience d’utilisation, et à moindre coût, tel est le lot de toutes les DSI. Comment définir sa stratégie la plus adaptée à son patrimoine applicatif et ses infrastructures ? Comment accompagner les équipes IT dans les nouvelles compétences à acquérir ?Pierre Baumgartner, National DevOps Leader chez Cloud Infrastructure France partage sa vision pour bâtir son propre chemin vers une implémentation adaptée et efficiente de DevOps.', 'images/blog_image1.jpg', 'Paul DUBOIS', 'CLOUD', 'DevOps est aujourd’hui un modèle de transformation incontournable pour les DSI. Mais qu’en est-il de sa mise en œuvre concrète ?'),
(2, 'Facebook : voici l\'outil pour savoir si Cambridge Analytica a accédé à vos données', '2018/03/02', '<div style=\"text-align: justify;\">Vos donn&eacute;es Facebook ont-elles &eacute;t&eacute; subtilis&eacute;es par Cambridge Analytica ? Il y a quelques jours, le r&eacute;seau social a r&eacute;v&eacute;l&eacute; que les donn&eacute;es de 87 millions ses utilisateurs avaient &eacute;t&eacute; r&eacute;cup&eacute;r&eacute;es &agrave; leur insu par cette firme qui a travaill&eacute; pour la campagne de Donald Trump. En France, il y aurait environ 211 000 personnes concern&eacute;es. Mardi 10 avril, Facebook a lanc&eacute; un outil vous permettant de v&eacute;rifier en un simple clic.</div>\r\n<div style=\"text-align: justify;\">Pour utiliser cet outil, rien de plus simple. Il vous suffit de cliquer sur ce lien qui vous renvoi vers la page d\'aide de Facebook consacr&eacute;e au scandale Cambridge Analytica. Celle-ci n\'existe pas encore en fran&ccedil;ais mais fonctionne avec n\'importe quel compte.</div>\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n<p style=\"text-align: justify;\"><strong>Une notification pour les personnes concern&eacute;es.</strong></p>\r\n<div style=\"text-align: justify;\">Si vos informations n\'ont pas &eacute;t&eacute; partag&eacute;es avec Cambridge Analytica, voici le message qui devrait appara&icirc;tre : \"Selon nos rapports, ni vous ni vos amis ne vous &ecirc;tes connect&eacute;s &agrave; This Is Your Digital Life. Par cons&eacute;quent, il ne semble pas que This Is Your Digital Life ait partag&eacute; vos informations Facebook avec Cambridge Analytica.\" A l\'inverse, si vous faites partie des utilisateurs concern&eacute;s (soit directement, soit via l\'un de vos amis), cela sera indiqu&eacute; sur cette page.</div>\r\n<div style=\"text-align: justify;\">Depuis lundi 9 avril, toutes les personnes concern&eacute;es doivent aussi recevoir une notification de Facebook les pr&eacute;venant de l\'utilisation de leurs donn&eacute;es par Cambridge Analytica.</div>\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n<p style=\"text-align: justify;\"><strong>Des donn&eacute;es utilis&eacute;es pour la campagne de Trump.</strong></p>\r\n<div style=\"text-align: justify;\">La firme Cambridge Analytica a r&eacute;cup&eacute;r&eacute;, via un questionnaire psychologique auquel ont r&eacute;pondu 270 000 personnes, les donn&eacute;es de millions de leurs amis en 2014. Cela a permis &agrave; la soci&eacute;t&eacute; britannique de se constituer une pr&eacute;cieuse base de donn&eacute;es avant d\'&ecirc;tre embauch&eacute;e par l\'&eacute;quipe de campagne de Donald Trump.</div>\r\n<div style=\"text-align: justify;\">A l\'&eacute;poque, les applications autoris&eacute;es par une personne avaient acc&egrave;s aux donn&eacute;es de ses amis, ce qui explique le tr&egrave;s grand nombre de personnes affect&eacute;es au final. Cette option a &eacute;t&eacute; supprim&eacute;e en 2014 mais le PDG, Mark Zuckerberg, a reconnu que le r&eacute;seau social devait mieux contr&ocirc;ler lui-m&ecirc;me l\'usage des donn&eacute;es par les applications tierces.</div>', 'images/blog_image2.jpg', 'Mark zuckerberg', 'DATA', 'Lundi 9 avril, Facebook a commencé à prévenir les utilisateurs dont les données avaient pu être subtilisées par Cambridge Analytica. Un outil permet désormais à chacun de vérifier cette information en un simple clic.'),
(3, 'React s\'arme du composant StrictMod.', '2018/04/02', '<p style=\"text-align: justify;\">Livr&eacute;e fin mars, la version 16.3 de la biblioth&egrave;que JavaScript React de Facebook qui permet de cr&eacute;er des interfaces utilisateurs comporte plusieurs changements notables. Concernant le cycle de vie des composants, le futur mode de rendu asynchrone &eacute;tend le composant de classe du mod&egrave;le d\'API, qui &eacute;tait utilis&eacute; d\'une mani&egrave;re qui n\'&eacute;tait pas pr&eacute;vue au d&eacute;part. De nouveaux cycles de vie ont &eacute;t&eacute; ajout&eacute;s, y compris getDerivedStateFromProps, comme alternative plus s&ucirc;re &agrave; l\'ancien cycle de vie componentWillReceiveProps. &Eacute;galement ajout&eacute;, getSnapshotBeforeUpdate, qui assure une lecture correcte des propri&eacute;t&eacute;s, notamment du DOM avant application des mises &agrave; jour. Certains cycles de vie comme componentWillMount et componentWillReceiveUpdate seront &eacute;galement pr&eacute;c&eacute;d&eacute;s du pr&eacute;fixe &laquo; unsafe &raquo;. Dans ce contexte, &laquo; unsafe &raquo; ne se r&eacute;f&egrave;re pas &agrave; la s&eacute;curit&eacute;, mais il indique que le code utilisant ces cycles de vie est potentiellement plus sujet aux bogues dans les futures versions de React.</p>\r\n<p style=\"text-align: justify;\">La version 16.3 de React ne demande aucune action des d&eacute;veloppeurs pour ce qui est des m&eacute;thodes h&eacute;rit&eacute;es. Cette mouture doit inciter les responsables de projets open source &agrave; mettre &agrave; jour leurs biblioth&egrave;ques avant les avertissements d\'obsolescence qui ne seront activ&eacute;s qu\'&agrave; partir d\'une prochaine version de la s&eacute;rie 16.x. Cette version comporte par ailleurs un nouveau composant, StrictMode, servant &agrave; identifier les composants dont le cycle de vie n\'est pas s&ucirc;r. StrictMode ne fonctionne qu\'en mode d&eacute;veloppement. Il pr&eacute;vient de l&rsquo;utilisation par l&rsquo;API d&rsquo;une ancienne cha&icirc;ne de r&eacute;f&eacute;rence et d&eacute;tecte les effets secondaires inattendus. StrictMode active des contr&ocirc;les suppl&eacute;mentaires pour les descendants. D\'autres fonctionnalit&eacute;s lui seront ajout&eacute;es ult&eacute;rieurement.</p>\r\n<p style=\"text-align: justify;\"><strong>Une API de contexte qui assure le contr&ocirc;le statique.</strong></p>\r\n<p style=\"text-align: justify;\">La nouvelle API de contexte prend en charge le contr&ocirc;le du type statique et les mises &agrave; jour approfondies. &laquo; Cette API est &eacute;galement plus efficace que la version exp&eacute;rimentale pr&eacute;c&eacute;dente &raquo;, a d&eacute;clar&eacute; Brian Vaughn, membre de l\'&eacute;quipe React JS de Facebook. L&rsquo;API de contexte permet de faire transiter les donn&eacute;es par une arborescence de composants sans avoir &agrave; passer manuellement les props, les objets repr&eacute;sentant les propri&eacute;t&eacute;s, dont certains incluent des pr&eacute;f&eacute;rences locales et le th&egrave;me de l\'interface utilisateur. L\'ancienne API continuera de fonctionner avec les versions 16.x de React, afin de donner aux utilisateurs le temps d&rsquo;effectuer leur migration.</p>\r\n<p style=\"text-align: justify;\">React 16.3 comporte aussi une API createrefAPI am&eacute;lior&eacute;e. Utilis&eacute;e pour la gestion des r&eacute;f&eacute;rences, elle permet d\'acc&eacute;der aux n&oelig;uds DOM ou aux &eacute;l&eacute;ments React d&eacute;velopp&eacute;s par la m&eacute;thode render. &Eacute;galement pr&eacute;sente dans la nouvelle mouture,</p>', 'images/blog_image3.jpg', 'Paul Pupuy', 'FRAMEWORK', 'Dans sa version 16.3, la bibliothèque JavaScript React de Facebook comporte un composant, StrictMode, permettant d\'identifier les composants dont le cycle de vie n\'est pas sûr. L\'API de contexte est par ailleurs également renouvelée.'),
(4, 'Comment faire de l\'intelligence artificielle l\'alliée de votre entreprise ?', '2018/04/15', '<p style=\"text-align: justify;\">L\'arriv&eacute;e de l\'intelligence artificielle dans les entreprises g&eacute;n&egrave;re un certain nombre de craintes chez les managers comme l\'ont montr&eacute; de r&eacute;centes &eacute;tudes. Comment faire de l\'IA une alli&eacute;e ? Pourquoi il ne faut pas la craindre ? Par Philippe Deljurie, Partner sp&eacute;cialiste des questions num&eacute;riques au sein du cabinet de management de transition X-PM.</p>\r\n<p style=\"text-align: justify;\">L\'av&egrave;nement de l\'Intelligence Artificielle &agrave; l\'&eacute;chelle industrielle suscite de larges d&eacute;bats quant &agrave; son impact sur l\'emploi. De nombreux salari&eacute;s et managers voient l\'Intelligence Artificielle comme une menace. Pour autant, de r&eacute;centes &eacute;tudes semblent montrer que l\'intelligence artificielle sera tout autant un levier de performance pour les entreprises. Alors, menace ou opportunit&eacute;, tout d&eacute;pend de la mani&egrave;re d\'appr&eacute;hender l\'IA et de se familiariser avec ces applications le plus rapidement possible.</p>\r\n<p style=\"text-align: justify;\"><strong> Entre mythes et r&eacute;alit&eacute;s : cessons de craindre l\'IA !</strong></p>\r\n<p style=\"text-align: justify;\">Le d&eacute;veloppement de l\'IA au travail suscite bon nombre d\'interrogations et de fantasmes. Les &eacute;conomistes qui se sont pench&eacute;s sur la question sont n&eacute;anmoins unanimes sur un point : loin d\'&ecirc;tre un ph&eacute;nom&egrave;ne de mode, l\'IA est une tendance de fond. Cela signifie que l\'IA va continuer de s\'immiscer dans l\'entreprise. Plus elle sera sophistiqu&eacute;e, plus la place qu\'elle y occupera sera importante.</p>\r\n<p style=\"text-align: justify;\">Aujourd\'hui, surtout utile pour l\'automatisation de t&acirc;ches r&eacute;p&eacute;titives, elle commence &agrave; &ecirc;tre utilis&eacute;e pour d&eacute;tecter et pr&eacute;venir les fraudes ou les cyberattaques :</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- dans un cas, elle peut venir concurrencer l\'humain;</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- dans l\'autre, elle permet &agrave; l\'humain des t&acirc;ches qu\'il n\'aurait pas &eacute;t&eacute; capable d\'accomplir.</p>\r\n<p style=\"text-align: justify;\">Ces deux seuls exemples illustrent les deux impacts de l\'IA sur l\'emploi. A y regarder de plus pr&egrave;s, dans les deux cas de figure, l\'IA peut &ecirc;tre vue comme une opportunit&eacute; :</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- son application dans le secteur industriel permet un &eacute;largissement du p&eacute;rim&egrave;tre d\'intervention des robots : les co&ucirc;ts de production peuvent alors &ecirc;tre, sinon plus int&eacute;ressants, du moins tout autant que le co&ucirc;t de la main d\'oeuvre de pays &laquo; &agrave; bas co&ucirc;t &raquo;, au point d\'envisager la relocalisation de l\'outil de production, avec les gains logistiques que cela procure;</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- son application dans des domaines comme la cybers&eacute;curit&eacute;, ou encore l\'industrie 4.0, va engendrer des besoins en comp&eacute;tences nouvelles, et donc la cr&eacute;ation d\'emplois.</p>\r\n<p style=\"text-align: justify;\">Tous les facteurs pour faire de l\'IA un ph&eacute;nom&egrave;ne structurel &agrave; grande &eacute;chelle sont l&agrave; : la donn&eacute;e, la puissance de calcul et les algorithmes. D&egrave;s lors, la question pour les entreprises est de commencer &agrave; l\'appr&eacute;hender, &agrave; se familiariser avec, &agrave; la mettre en oeuvre de mani&egrave;re concr&egrave;te et pragmatique, d\'abord &agrave; petite &eacute;chelle avant de l\'impl&eacute;menter plus largement. Savoir l\'utiliser &agrave; bon escient devient d&egrave;s lors un enjeu &eacute;conomique majeur pour les entreprises.</p>\r\n<p style=\"text-align: justify;\"><strong>IA : une strat&eacute;gie d\'int&eacute;gration offensive, mod&eacute;r&eacute;e ou d&eacute;fensive ?</strong></p>\r\n<p style=\"text-align: justify;\">Incontestablement, le leader d\'un secteur doit &ecirc;tre en pointe sur ce sujet, s\'il veut conserver une longueur d\'avance sur la concurrence. Car les startups profitent d\'une grande agilit&eacute; pour d&eacute;velopper rapidement des projets innovants et, ainsi, grignoter des parts de march&eacute;. Selon moi, trois approches de l\'int&eacute;gration de l\'IA se distinguent depuis quelques ann&eacute;es :</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- Offensive : l\'entreprise mise tout sur l\'Intelligence Artificielle, elle accorde un budget et une &eacute;quipe suffisante pour l\'int&eacute;grer dans tous ses projets. Elle estime qu\'ils doivent &ecirc;tre dans les premiers &agrave; le faire dans leur secteur, car il y a une prime au leader en mati&egrave;re d\'int&eacute;gration de l\'Intelligence Artificielle. A l\'image des n&eacute;o-banques et de la cybers&eacute;curit&eacute;, tr&egrave;s en pointe sur ce sujet ;</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- Mod&eacute;r&eacute;e : on y va progressivement, en int&eacute;grant de l\'IA dans certains projets importants mais pas forc&eacute;ment strat&eacute;giques. Cela a valeur de test grandeur nature. On observe les r&eacute;sultats, on reste en veille des &eacute;volutions techniques et, en fonction des orientations strat&eacute;giques, on peut la d&eacute;ployer &agrave; grande &eacute;chelle d&egrave;s que le besoin se fait sentir.</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- D&eacute;fensive : &agrave; trop observer on risque de se laisser distancer par les concurrents ayant bien n&eacute;goci&eacute; ce virage et de ne pas pouvoir rattraper le retard accumul&eacute;.</p>\r\n<p style=\"text-align: justify;\">Le choix de la strat&eacute;gie &agrave; adopter incombe aux dirigeants et managers de l\'entreprise. S\'ils optent pour une approche mod&eacute;r&eacute;e ou offensive, le recours &agrave; des comp&eacute;tences ext&eacute;rieures s\'av&egrave;re indispensable pour son d&eacute;ploiement. Pour gagner en efficacit&eacute;, mieux vaut faire confiance &agrave; des dirigeants op&eacute;rationnels ayant d&eacute;j&agrave; une exp&eacute;rience dans la conduite de ce type de projets. La vision business et technique de managers de transition fera rapidement monter en comp&eacute;tence les &eacute;quipes. Si vous ratez le train de l\'IA, gare &agrave; la disparition ! Ceux qui n\'ont pas encore int&eacute;gr&eacute; l\'Intelligence Artificielle dans leur d&eacute;veloppement doivent tr&egrave;s vite adopter une approche mod&eacute;r&eacute;e, au minimum. Sinon, ils se condamnent &agrave; dispara&icirc;tre &agrave; plus ou moins long terme.</p>', 'images/blog_image4.jpg', 'John Doe', 'IA', 'L\'arrivée de l\'intelligence artificielle dans les entreprises génère un certain nombre de craintes chez les managers comme l\'ont montré de récentes études. Comment faire de l\'IA une alliée ? Pourquoi il ne faut pas la craindre ? Par Philippe Deljurie, Partner spécialiste des questions numériques au sein du cabinet de management de transition X-PM.'),
(5, 'Big data : quel est le mode d\'organisation projet le plus pertinent ?', '2018/05/01', '<p style=\"text-align: justify;\">Le d&eacute;veloppement des projets big data se r&eacute;alise dans un environnement technologique complexe. Les technologies demeurent multiples et ne sont pas encore toutes matures (cf. cartographie des outils big data).</p>\r\n<p style=\"text-align: justify;\">Il faut disposer de comp&eacute;tences multiples au niveau des d&eacute;veloppeurs et d&rsquo;une collaboration forte avec l&rsquo;ensemble des acteurs du projet : m&eacute;tier, architecte, int&eacute;grateur, d&eacute;veloppeur, data steward, data protection officer. Du c&ocirc;t&eacute; des m&eacute;tiers, les cas d&rsquo;usage sont souvent nouveaux et le besoin &eacute;volue rapidement. Cette incertitude motive &agrave; d&eacute;velopper un dialogue r&eacute;gulier avec les &eacute;quipes projets et &agrave; d&eacute;crire leurs besoins au fil de l&rsquo;eau.</p>\r\n<p style=\"text-align: justify;\">L&rsquo;adhocratie est rendue n&eacute;cessaire dans des environnements complexes, changeants, o&ugrave; la standardisation n&rsquo;est pas efficace. En combinant ces caract&eacute;ristiques avec celles des projets big data, cette organisation s&rsquo;av&egrave;re &ecirc;tre la plus pertinente. Sur les projets informatiques, cette organisation se traduit g&eacute;n&eacute;ralement par le choix de l&rsquo;Agile Scrum ou Kanban pour la gestion de projet.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>Les contraintes de l&rsquo;organisation et les mani&egrave;res de les lever.</strong></p>\r\n<p style=\"text-align: justify;\">Dans une organisation adhocratique, les d&eacute;cisions sont d&eacute;centralis&eacute;es et la formalisation du travail est peu d&eacute;velopp&eacute;e. La notion de management n&rsquo;existe pas ; la coordination s&rsquo;effectue de mani&egrave;re informelle en se concertant directement.</p>\r\n<p style=\"text-align: justify;\">En Agile Scrum, le &laquo; Scrum Master &raquo; favorise et maintient la coop&eacute;ration.</p>\r\n<p style=\"text-align: justify;\">A ce titre, il r&eacute;alise les actions suivantes :</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- Veiller &agrave; ce qu&rsquo;&agrave; chaque it&eacute;ration, un objectif commun et coh&eacute;rent soit d&eacute;fini,</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- Insister sur le point de r&eacute;trospective qui permet de traiter les conflits et instaurer un climat de confiance,</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- Rappeler r&eacute;guli&egrave;rement que les collaborateurs forment une m&ecirc;me &eacute;quipe quelles que soient leurs qualifications,</p>\r\n<p style=\"padding-left: 30px; text-align: justify;\">- Diffuser une norme culturelle autour de l&rsquo;agile et de ses valeurs.</p>\r\n<p style=\"text-align: justify;\">Les projets Agile Scrum se retrouvent souvent &agrave; contre courant de la culture et des codes d&rsquo;entreprises qui ont majoritairement une organisation bureaucratique avec une gestion de projet en cycle en V.</p>\r\n<p style=\"text-align: justify;\">L&rsquo;intervention d&rsquo;un coach au sein du projet permet de faciliter l&rsquo;int&eacute;gration de l&rsquo;organisation Agile. La gestion de projet en cycle en V, adapt&eacute;e aux organisations bureaucratiques, ne permet plus de r&eacute;pondre aux contraintes des projets big data. L&rsquo;Agile Scrum s&rsquo;impose comme la solution la plus pertinente avec une adaptation qui doit s&rsquo;op&eacute;rer entre une culture d&rsquo;entreprise diff&eacute;rente et l&rsquo;application de l&rsquo;ajustement mutuel.</p>', 'images/blog_image5.jpg', 'Erik Snow', 'AGILITE', 'L’Agile Scrum est-elle finalement l’organisation projet la plus adaptée à un projet de type big data ? Le point sur les contraintes d\'organisation à lever pour aboutir à un management efficace.');

-- --------------------------------------------------------

--
-- Structure de la table `collab`
--

CREATE TABLE `collab` (
  `id` int(3) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `images` varchar(50) DEFAULT NULL,
  `age` varchar(30) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `techno` varchar(150) DEFAULT NULL,
  `experience` varchar(150) DEFAULT NULL,
  `techno1` varchar(50) NOT NULL,
  `techno2` varchar(50) NOT NULL,
  `techno3` varchar(50) NOT NULL,
  `techno4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `collab`
--

INSERT INTO `collab` (`id`, `name`, `images`, `age`, `description`, `techno`, `experience`, `techno1`, `techno2`, `techno3`, `techno4`) VALUES
(1, 'Maxime', 'dev02.jpg', '20ans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc magna turpis, volutpat id felis metus.', 'HTML5 ; GITHUB ; ANDROID ; JAVASCRIPT`', '6 ans', 'fa-html5', 'fa-github', 'fa-php', 'fa-css3'),
(2, 'Vincent', 'dev07.jpg', '29 ans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc magna turpis, volutpat id felis metus.', 'HTML5 ; GITHUB ; ANDROID ; JAVASCRIPT', '8 ans', 'fa-html5', 'fab.fa-2x.fa-github', 'fa-node-js', 'fa-react'),
(3, 'Camille', 'dev10.jpg', '26 ans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc magna turpis, volutpat id felis metus.', 'HTML5 ; GITHUB ; NODEJS ; REACT', '3 ans', 'fa-html5', 'fa-github', 'fa-node-js', 'fa-react'),
(4, 'Martin', 'dev03.jpg', '30 ans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc magna turpis, volutpat id felis metus.', 'HTML5 ; GITHUB ; WORDPRESS ; JAVASCRIPT', '8 ans', 'fa-html5', 'fa-github', 'fa-wordpress-simple', 'fa-js-square');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(1) NOT NULL,
  `horaires` varchar(22) DEFAULT NULL,
  `adresse` varchar(40) DEFAULT NULL,
  `tel` varchar(14) DEFAULT NULL,
  `mail` varchar(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `horaires`, `adresse`, `tel`, `mail`) VALUES
(2, 'Semaine: 9h00 - 18h00', '68 cours de Verdun', '06.69.50.26.33', 'alex.l@wildcodeschool.com');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `image`) VALUES
(1, 'test', 'test@test.com', 'test', ''),
(2, 'test2', 'fanny@gmail.com', 'fanny', ''),
(3, 'Alexandre Lorion', 'alex.lorion@wildcodeschol.fr', 'alex', '');

-- --------------------------------------------------------

--
-- Structure de la table `missions`
--

CREATE TABLE `missions` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom_poste` varchar(255) NOT NULL,
  `recruteur` varchar(50) NOT NULL,
  `duree` varchar(255) NOT NULL,
  `localisation` varchar(255) NOT NULL,
  `departement` varchar(3) NOT NULL,
  `diplome` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `poste` mediumtext NOT NULL,
  `entreprise` mediumtext NOT NULL,
  `competences` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logo` varchar(50) NOT NULL,
  `valide` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `missions`
--

INSERT INTO `missions` (`id`, `nom_poste`, `recruteur`, `duree`, `localisation`, `departement`, `diplome`, `experience`, `poste`, `entreprise`, `competences`, `date`, `logo`, `valide`) VALUES
(1, 'Developpeur ReactJS', 'Ubisoft', 'CDI', 'Bordeaux', '33', 'Bac + 3', '', 'F/H, diplômé d\'une école d\'ingénieur ou d\'une formation supérieure universitaire équivalente vous justifiez d\'une expérience réussie de 2 ans minimum.La connaissance des méthodes Agiles dont SCRUM serait un plus. Vous êtes de nature curieuse pour aborder de nouveaux aspects métiers et fonctionnels, et disposez d’un bon relationnel pour une intégration rapide au sein d’une équipe dynamique.Devenez un Happy Digital Member en nous envoyant votre candidature !', 'Dans le cadre de son évolution, Ubisoft recherche un(e) developpeur(euse) ReactJS. Vous souhaitez participer à des projets collaboratifs directement sur des jeux video. Vous êtes attiré par tout l\'uninvers des jeux vidéos. Vous avez une expérience de développeur Web, alors n\'hésitez pas à postuler', 'Connaissance en front HTML/CSS/JSConnaissance en React JS. Angular JS serait un plusPratique de GIT couranteSalaire selon expérience', '2018-04-12 23:00:00', 'logo_ubisoft.png', 1),
(2, 'Formateur PHP', 'Wild Code School', 'CDI', 'Nantes', '44', 'Bac + 5', '', 'Nous cherchons un formateur expert dans le language PHP. Diplomé d\'une école d\'informatique, vous justifiez d\'une exépérience de 10 minimum dans le développement Web. VOus avez déjà eu à encadrer des formateurs internes lors de vos précédents emplois et vous aimez le sens de l\'apprentissage. Alors n\'hésitez pas à candidater !!', 'la Wild Code School est une école d\'apprentissage Web. Installé à La Loupe en tout premier, la WCS voit son activité grandir d\'année en année. Ainsi, plusieurs école se sont ouvertes sur le territoire Nationale. Nous offrons une formation de 5 mois pour des personnes venant de tout profil', 'Connaissance en front HTML/CSS/JS\r\nConnaissance du language PHP et des frameword associé (Symphony 4 de préférence)\r\nPratique de GIT courante\r\nSalaire selon expérience', '2018-03-31 23:00:00', 'logo_wcs.png', 1),
(4, 'Developeur Android', 'Meetic', 'CDI', 'Paris', '75', 'Bac+2', '', 'Leader du marché national de mise en relation entre célibataires, Meetic se doit de s\'adapter aux nouvelles pratiques. \r\nL\'utilisation des smartphones étant devenus la 1ere source de connexion Internet, vous serez en charge de l\'amélioration de notre application android ! (gestion de la localisation, chat en ligne, etc..). ', 'Meetic est un service de \"dating\", qui permet aux célibataires de se rencontrer en leur proposant des services dédiés à la recherche amoureuse.\r\n\r\nL’inscription et la recherche de profils sont gratuites et spontanées. À tout moment, chaque célibataire peut rédiger son annonce, ajouter une ou plusieurs photos de profil, remplir tout ou partie des critères de recherche proposés s’il le souhaite puis effectuer sa recherche spontanément. Seule la mise en relation par réponse ou envoi d’un message à un autre célibataire est un service payant, soumis à abonnement.\r\n', 'Vous faites preuve de créativité et de persuasion. Connaissances demandées en : \r\n- Java, JEE\r\n- Technologies JS et particulièrement NodeJS et ReactJS\r\n- Language SQL\r\n\r\nExpérience exigée de 3 ans minimum sur un poste similaire ', '2018-03-13 23:00:00', 'logo_meetic.png', 1),
(5, 'Developeur PHP / Geomaticien', 'ARGEFO', 'CDI', 'Saint magne', '33', 'Bac +3', '', 'ARGEFO recherche pour son accroissement d\'activité un développeur WEB, spécialisé en PHP. \r\nFort de ses connaissances en Systeme d\'Information Géographique, ARGEFO a déployé un WebSIG sur son portail Internet pour gérer sa clientèle. Nous avons besoin alors d\'un développeur PHP, avec une connaissance de Symphony, pour continuer à étendre notre activité. ', 'L\'Agence Rgionale de GEstion FOrestière, situé à St Magne (33), est un bureau d\'étude spécialisé dans la gestion forestière. Nous utilisons les technologies WEB, et plus particulièrement les WEBSSIG pour cartographier et gérer les propriétés forestières de nos clients. Notre activité nous amène également sur d\'autres thématiques comme de la gestion urbaine, et relevés GPS d\'infrastructures.', 'Compétences souhaitées : \r\n- HTML / CSS / JS en front End\r\n- PHP avec Symphony 4 \r\n- Base de donnée (MySQL, PosgreSQL) et language SQL\r\n- Notions de SIG et des logiciels associés (ArcGIS, QGIS)\r\n- Connaissance de l\'environnement cartographique', '2018-04-12 23:00:00', 'logo_argefo.png', 1),
(7, 'Developpeur FullStack JS', 'Lidl', 'CDI', 'Strasbourg', '67', 'Bac + 4', '', 'Vous créerez,  et  vous ferez évoluer et les applications Web pour la France et pour l’international et  disponibles sur des supports variés (Tablette, PC, MAC).\r\nVous assurerez une qualité de service optimale en effectuant des correctifs de bugs et des mises à jour;\r\nVous serez en charge du développement du Front et du Back Office, ainsi que de Web service.\r\n\r\n', 'Dans un environnement composé de 1500 magasins, 25 directions régionales et un siège social sur deux sites, au sein de la Direction des systèmes d’information de Lidl France, vous intégrez l’équipe Développement du service Infrastructure.', '-Vous justifiez d’une expérience professionnelle de 2 ans au cours de laquelle vous avez acquis une forte expérience en .Net (C#) et dans les technologies liées au WEB (JavaScript, HTML5, CSS3, XML, etc.);\r\n\r\n- La connaissance et l’utilisation des bases de données SQL Server et Oracle sont appréciées. Enfin, la connaissance de Node.JS, Angular, Bootstrap, Team Foundation Server et GIT sont des plus;\r\n\r\n- La maîtrise de l’anglais est souhaitée;\r\n\r\n-  Curieux, doté d’une réelle capacité d’adaptation, vos connaissances des différentes technologies citées vous permettront de réussir à ce poste.', '2018-02-01 23:00:00', 'logo_lidl.png', 1),
(15, 'Developpeur FullStack', 'Amistad  Agency', 'CDI - Tps partiel', 'Pessac ', '33', 'Bac +2', '', '', 'Amistad Agency, une agence digitalement créative !\r\n\r\nNous recherchons pour compléter notre équipe technique, un développeur Web Fullstack expérimenté qui aura en charge au sein d’une équipe  d\'assurer le bon fonctionnement des sites internets dont vous êtes responsables, ainsi que d\'en assurer la maintenance', 'Compétences en : \r\n- HTML / CSS\r\n- Jquery\r\n- GIT \r\n- Polyvalent en PHP5\r\n- Wordpress / Magento / Prestashop / Shopify\r\n- MySQL\r\n- Linux', '2018-03-31 23:00:00', 'amistad.jpg', 1),
(16, 'Developpeur PHP', 'Smile', 'CDI', 'Bordeaux', '33', 'Bac +5', '', 'Vous interviendrez sur des projets de création de sites internet, au sein d\'une équipe constituée d\'un chef de projet, d\'intégrateurs HTML, de développeurs et serez encadré par un expert technique. Vous participerez aux phases suivantes du projet : Conception et développement d\'application web (internet/intranet/extranet) en utilisant les solutions retenues (cms, framework) Rédaction des spécifications techniques et fonctionnelles Tests et recette: Rédiger et définir les scénarii de test Maintenance évolutive/corrective: Apporter les évolutions souhaitées par le client et les améliorations techniques des développements déjà effectués Amélioration des performances pour des sites à gros trafic Mise en place de sécurité adaptée à la typologie de site Intervention sur des projets en fonctionnement Agile', 'Société Smile est le leader du \"sourire\" au travail mais aussi de l\'intégration et de l\'infogérance de solutions open source.\r\n\r\nEnthousiastes, agiles et performants, leur vocation est de libérer le potentiel d\'innovation des entreprises, à travers l\'open source.\r\n\r\nSes smiliens experts accompagnent les entreprises dans des domaines aussi variés que le Digital, les Business Apps, l\'Embarqué & l\'IoT et l\'Infrastructure.', 'Compétences requises : \r\n- PHP\r\n- Jquery\r\n- Ajax\r\n- HTML /CSS\r\n- Architecture Linux / Debian\r\n- Base de donné MySQL', '2018-02-26 23:00:00', 'smile.jpeg', 1),
(17, 'Developpeur NodeJS / React JS', 'Wanteeed', 'CDI', 'Bordeaux', '33', 'BAc + 3', '', 'Nous vous proposons de rejoindre une startup qui est en train de bousculer son marché. Non, on ne va pas changer le monde, mais on compte quand même bien faire bouger la façon dont les gens achètent sur internet ! Et on trouve ça cool.\r\nAu sein d\'une équipe de 7 personnes, vous travaillerez sur des problématiques diverses et variées', 'Wanteeed est un service Web spécialisé dans la recherche et l\'application automatique du meilleur code promo pour ce que vous êtes en train d\'acheter.\r\n\r\n/!\\ Nous ne sommes pas un énième site de code promo ;)\r\nNous cassons les conventions, sortons des schémas établis pour créer le nôtre. Nous sommes une petite équipe de passionnés, animés par le fait de construire un produit qui plait à nos utilisateurs et cela se voit plutôt bien dans les avis qu\'ils nous laissent. Nous partons du principe que rien n\'est impossible et que toute idée est bonne à être étudiée et testée.\r\nNous vous proposons de participer à cette liberté d\'action et ce challenge perma', 'Compétences en : \r\n- HTML / CSS pour un peu  de front quand même\r\n- NodeJS (Express)\r\n- React JS / Redux\r\n- PostgreSQL\r\n- GIT\r\n\r\nAnglais courant exigé', '2018-03-20 23:00:00', 'wanteed.png', 1),
(18, 'Developpeur PHP', 'Page personnel', 'CDD 1 an', 'Mont de Marsan', '40', 'Bac + 3', '', 'En tant que Développeur PHP, vos missions seront  de participer à l\'analyse des besoins des utilisateurs du programme, de développer des logiciels informatiques, d\'animer la phase de test et de recette du logiciel afin d\'en assurer une utilisation optimale, et de former les utilisateurs', 'Page Personnel Informatique recrute des techniciens et des ingénieurs issus des métiers de l\'informatique, pour des clients aussi variés que des éditeurs de logiciels, sociétés d\'infogérance, agences web et plus généralement toute entreprise finale utilisatrice de ressources en IT : développement, administration réseaux, pilotage de projets, support, helpdesk et infrastructures. Notre client recherche un Développeur PHP pour son site de Mont de Marsan(40)', 'Titulaire d\'un diplôme supérieur en informatique, vous disposez d\'au moins une expérience à un poste de Développeur PHP.Maitrise des languages :\r\n- HTML / CSS- PHP\r\n- XLM- JS / JQUERY\r\n- Vous connaissez SQL', '2018-02-03 23:00:00', 'page_personnel.jpeg', 1),
(19, 'Developpeur FullStack', 'WebFutur by TargetWeb', 'CDI', 'Paris', '75', 'Bac + 3', '', 'Nous recherchons un développeur(euse), possédant de l\'expérience ( min 3 ans ) et capable de travailler en équipe sur des projets variés.\r\n\r\nLes qualités requises en plus d\'une bonne connaissance technique sont : un esprit d\'initiative, une capacité d\'adaptation, savoir établir de bonne relation sociale.', 'Depuis 18 ans, Webfutur By Target Web s\'impose comme une agence digitale incontournable sur le marché des PME / PMI en région aquitaine.  \r\nForte d\'une expertise globale dans le domaine du web et de plusieurs certifications (Prestashop, Google Partner...), elle accompagne les entreprises de l\'hébergement jusqu\'aux campagnes de communication en passant par la conception de leurs outils digitaux. \r\nL\'agence dispose également du statut d\'organisme de formation, ce qui garantit aux sociétés d\'avoir des interlocuteurs pédagogues et capables de monter en compétences leurs propres salariés. \r\n\r\nCette vision a permis à l\'agence de fidéliser plus de 500 clients et d\'élaborer plus de 1000 projets', 'Compétences requises : \r\n- PHP\r\n- SQL\r\n- JavaScript\r\n\r\nLes plus appréciés : \r\n- HTML / CSS\r\n- Framework : Zend, Symfony\r\n- CMS : Wordpress, Magento', '2017-12-02 23:00:00', 'taget_web.png', 1),
(20, 'Developpeur PHP', 'Beemoov', 'CDD 1 an', 'Nantes', '44', 'Bac + 3', '', 'Nous recherchons un(e) Développeur Web Full Stack pour le développement de nouvelles fonctionnalités, la maintenance et l’évolution de notre Otome Game Eldarya\r\n\r\nRattaché au Chef de Projet, vous aurez en charge le maintien et le développement des fonctionnalités pour le jeu Eldarya', 'Beemoov figure parmi les leaders mondiaux de jeux cross-plateformes - web & mobile - de type otome game. Fort de 80 000 000 de comptes actifs, le catalogue de jeux regroupe des jeux à succès tels que Ma Bimbo, Amour Sucré et Eldarya.\r\n\r\nCes jeux sont aujourd\'hui disponibles en 13 langues.\r\n', 'Compétences requises : \r\n- PHP\r\n- Components Symfony\r\n- Gitlab, Github\r\n- API\r\n- Mysql\r\n- HTML / CSS / Sass / Js / Jquery', '2018-04-25 23:00:00', 'beemoov.png', 1),
(21, 'Developpeur Front React JS', 'Antadis', 'CDI', 'Paris', '75', 'Bac + 3', '', 'Nous cherchons à renforcer notre équipe de production avec un(e) Développeur Front End.\r\n\r\nVous intégrerez une équipe jeune, dynamique et soudée en charge de la production des différents projets de l’agence. En plus du développement front end des différents sites web avec React., nous vous proposons de développer le front-end des applications mobiles iOS et Android via React Native .', 'Antadis est une entreprise spécialisée dans le développement web\r\n\r\nNotre équipe de 30 personnes met toute son expertise au service de ses clients dans la conception et le développement de leur site internet et dans le déploiement de leur stratégie digitale. Près de 200 clients nous font confiance (grands comptes, PME, start-ups, collectivités...).\r\n\r\nSpécialisés en solutions Open Source et experts en UX et développement web, notre agence crée et déploie quotidiennement des projets digitaux de toute envergure : sites e-commerce, vente privée, sites de boxs ou configurateurs produits, sites vitrines, intranets…', 'Maitrise des technologies suivantes : \r\n- ReactJS, React Native\r\n- PHP\r\n- JavaScript (ES6), Xcode, Android Studio', '2018-04-02 23:00:00', 'antadis.png', 1),
(57, 'Developpeur JS', 'ARGEFO', 'CDD 6 Mois', 'Bordeaux', '17', 'Bac + 5', 'Debutant accepté', 'Descriptiion du poste', 'Descriptiion du poste', 'Descriptiion du poste', '2018-05-02 15:04:58', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `fullname`, `age`, `location`, `gender`) VALUES
(7, 'Fanny', 'Gaudin', 'zut', '1', '', ''),
(8, 'Charles', 'Poniard', 'bleu', '4', '', ''),
(9, 'TOm', 'fsdf', 'fsf', 'fsfe', 'fesfs', 'fesf'),
(11, 'Test', 'test', 'test', 'test', 'test', 'test'),
(12, 'truc', 'fsef', 'fesf', 'fesf', 'fesf', 'fesf');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bar`
--
ALTER TABLE `bar`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `collab`
--
ALTER TABLE `collab`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bar`
--
ALTER TABLE `bar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `collab`
--
ALTER TABLE `collab`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
