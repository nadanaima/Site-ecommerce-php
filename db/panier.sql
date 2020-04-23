-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 23 avr. 2020 à 03:30
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `panier`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`contact_id`, `email`, `message`) VALUES
(1, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', 'waw j ai aimÃ© votre site e commerce');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `mi` varchar(1) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`customerid`, `firstname`, `mi`, `lastname`, `address`, `country`, `zipcode`, `mobile`, `email`, `password`) VALUES
(1, 'kljk', 'E', 'fuyjgug', 'tdghhfytdtduyf', 'hhkh', '235', '12466423365', 'jbbk@gmail.com', 'hhhh'),
(2, 'hvjh', 'n', 'bvkjb', 'nbjkbk', 'hvj,b', 'bk;n', '12354', 'toto@cocomail.com', '123456'),
(3, '', '', '', '', '', '', '', '', ''),
(4, 'hbbjkn', 'v', 'vhj', 'jhgjk', 'dfgh', 'hgjk', 'fgh', 'ggyuh@gmail.com', '145nA?'),
(5, 'xcvb', 'c', 'sdfg', 'qsdfg', 'fgb', '125', '5615798562', 'nada@gmail.com', '133Autr?'),
(6, 'nkcd', 'c', 'dd', 'cndknc', 'ds', '12', '1264965', 'mina@gmail.com', '12345'),
(11, 'cd', 'b', 'hj', 'sdns', 'nk', 'sdd', '0625147897', 'chaima@gmail0com', '12345scsc'),
(12, 'ssd', 'v', 'fvv', 'sds', 'n', '165', '4', 'chaima@gmail.com', '123aUTR,'),
(13, 'jn', 'm', 'xcvb', 'fvgbhn', 'cvbn', '45', '1316546564', 'tata@cocomail.com', '1234'),
(14, 'ssc', 'd', 'qdd', 'cdd', 'ddsdd', '465', '465', 'mama@cocomail.com', '1234'),
(15, 'hudifhcd', 'd', 'sdcdc', 'sdc', 'fgfds', 'dcsd', '0621457896', 'mama@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_size`, `product_image`, `brand`, `category`) VALUES
(3, 'Nike Air Max Black', '12000', '7', 'mnikeshoes5.jpg', 'Nike', 'shoes'),
(4, 'Nike Air Max Red', '12000', '8', 'mnikeshoes6.jpg', 'Nike', 'shoes'),
(6, 'Adidas Gent', '13000', '9', 'amenshoes6.jpg', 'Adidas', 'shoes'),
(7, 'Reebok Orange', '15000', '8', 'mreebokshoes4.jpg', 'Reebok', 'shoes'),
(8, 'Lebron 11 Siver', '18000', '8', '124030907nike13.jpg', 'Nike', 'shoes'),
(9, 'Adidas Adizero Black', '18000', '10', '14237873113-adidas-Rose-Dominate-Adizero-shoes.jpg', 'Adidas', 'shoes'),
(10, 'Adidas Adizero Blue', '18000', '10', '1024158586Adidas_Rose_Shoes_009.jpg', 'Adidas', 'shoes'),
(11, 'Lebron 11 Red', '18000', '9', '567507982nike10.jpg', 'Nike', 'shoes'),
(13, 'Nike Hypervenom', '10000', '12', '1312216564nike-hypervenoms-customize-fg-2015-outlet-neymar-colors-soccer-shoes-professional.jpg', 'Nike', 'shoes'),
(14, 'Nike Pant Green and Black', '12000', '11', 'mnikepants3.jpg', 'Nike', 'pants'),
(15, 'Nike Pant Blue', '12000', '12', 'mnikepants.jpg', 'Nike', 'pants'),
(16, 'Adidas Green', '12000', '9', 'madidaspants2.jpg', 'Adidas', 'pants'),
(17, 'Reebok Black', '12000', '8', 'mreebokpant4.jpg', 'Rebook', 'pants'),
(19, 'Nike Blue and white', '8000', '9', 'mniketshirt2.jpg', 'Nike', 'Tshirt'),
(20, 'Nike Grey', '8000', '10', 'mniketshirt4.jpg', 'Nike', 'Tshirt'),
(21, 'Adidas Black', '8000', '12', 'madidastshirt4.jpg', 'Adidas', 'Tshirt'),
(26, 'Adidas', '15000', '8', 'madidaspants5.jpg', 'Adidas', 'pants'),
(28, 'Reebok Grey', '18000', '9', 'mreebokpant5.jpg', 'Reebok', 'pants'),
(29, 'Adidas White', '10000', '9', 'madidastshirt5.jpg', 'Adidas', 'Tshirt'),
(30, 'Reebok White ', '8000', '11', 'mreeboktshirt3.jpg', 'Reebok', 'Tshirt'),
(31, 'Reebok Grey', '10000', '10', 'mreeboktshirt6.jpg', 'Reebok', 'Tshirt'),
(157, 'Adidas blue', '10000', '9', 'boot2.jpg', 'Adidas', 'feature'),
(21561, 'Adidas White and silver', '15000', '10', 'boot5.jpg', 'Adida', 'feature'),
(51292, 'Adidas Adizero F50', '10000', '10', 'boot13.jpg', 'Adidas', 'feature'),
(358159, 'Adidas ', '8000', '8', 'boot15.jpg', 'Adidas', 'feature'),
(431860, 'Nike Hypervenom Neymar Jr.', '12000', '9', '852236910hypervenom.png', 'Nike', 'feature'),
(961461, 'Adidas Bounce Titan', '9000', '9', '367527167Rabatt_Prezzo_Ridotto_Adidas_Bounce_Titan_Herren_White_Schwarz_Running_Sho_Online.jpg', 'Adidas', 'feature');

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `qty`) VALUES
(1, 71339, 20),
(2, 82631, 30),
(3, 3, 20),
(4, 4, 20),
(5, 6, 20),
(6, 7, 20),
(7, 8, 20),
(8, 9, 20),
(9, 10, 19),
(10, 11, 23),
(11, 13, 20),
(12, 14, 20),
(13, 15, 20),
(14, 16, 20),
(15, 17, 20),
(18, 21, 20),
(19, 26, 13),
(20, 28, 20),
(27, 21561, 30),
(16, 358159, 20),
(17, 51292, 20),
(24, 157, 20),
(21, 29, 18),
(22, 30, 20),
(23, 31, 20),
(26, 431860, 40);

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_stat` varchar(100) NOT NULL,
  `order_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `customerid`, `amount`, `order_stat`, `order_date`) VALUES
(1, 1, 10000, 'ON HOLD', 'Apr 05, 2020'),
(3, 1, 142000, 'ON HOLD', 'Apr 05, 2020'),
(4, 1, 63000, 'ON HOLD', 'Apr 05, 2020'),
(36, 1, 15000, 'ON HOLD', 'Apr 23, 2020'),
(651, 1, 12000, 'ON HOLD', 'Apr 05, 2020'),
(674, 1, 102000, 'ON HOLD', 'Apr 05, 2020');

-- --------------------------------------------------------

--
-- Structure de la table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `transacton_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `transaction_detail`
--

INSERT INTO `transaction_detail` (`transacton_detail_id`, `product_id`, `order_qty`, `transaction_id`) VALUES
(2, 431860, 1, 651),
(3, 431860, 4, 4),
(4, 7, 1, 4),
(5, 431860, 6, 674),
(6, 7, 1, 674),
(7, 26, 1, 674),
(8, 431860, 6, 3),
(9, 7, 1, 3),
(10, 26, 3, 3),
(11, 13, 1, 3),
(12, 431860, 6, 3374),
(13, 7, 1, 3374),
(14, 26, 5, 3374),
(15, 13, 2, 3374),
(16, 26, 1, 36);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Index pour la table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`transacton_detail_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
