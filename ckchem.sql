-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2014 at 12:05 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ckchem`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `type` int(11) NOT NULL,
  `width` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `text`, `type`, `width`) VALUES
(1, 'Antioxidant', 'Acai Berry Extract\nAcerola Cherry Extract\nAlpha Lipoic Acid\nAmla Extract\nApple Extract\nAstaxanthin\nBarley Grass Powder\nBilberry Extract\nBlueberry Extract\nCatechins\nCelery Extract\nCurcumin\nFucoidan\nGrape Seed Extract\nGreen Coffee Bean Extract\nLutein\nPine Bark Extract\nResveratrol\nRosemary Extract', 1, 1),
(2, 'Lower Blood Pressure', 'Blueberry Extract\nCelery Seed Extract\nCoQ10\nCorn Peptide\nEpimedium Extract\nGrape Seed Extract\nGreen Coffee Bean Extract\nGreen Tea Extract\nHawthorn Berry Extract\nMisai Kucing Extract\nSpirulina Powder\nPine Bark Extract\nRoselle Powder', 2, 1),
(3, 'Lower Cholesterol', 'Acai Berry Extract\r\nAloe Vera Extract (White)\r\nApple Extract\r\nAstragalus Extract\r\nBarley Powder\r\nBilberry Extract\r\nBlueberry Extract\r\nBrown Rice Powder\r\nCelery Extract\r\nCoQ10\r\nCurcumin\r\nDHA\r\nFenugreek Extract\r\nFlax Seed Extract\r\nGreen Tea Extract\r\nGymnema Extract\r\nGynostemma Extract\r\nHawthorn Berry Extract\r\nL-Leucine\r\nL-Lysine\r\nMilk Thistle Extract\r\nMisai Kucing Extract\r\nOat beta Glucan\r\nOat Flour\r\nSpirulina Powder\r\nPsyllium Husk\r\nRed Clover Extract\r\nRed Yeast Rice\r\nResveratrol', 3, 1),
(4, 'Lower Blood Sugar', 'Acerola Cherry Extract\r\nAgaricus Blazei Extract\r\nAloe Vera Extract (White)\r\nAlpha Lipoic Acid\r\nAmerican Ginseng Extract\r\nAmla Extract\r\nAstragalus Extract\r\nBeta Carotene\r\nBitter Melon Extract\r\nBlueberry Extract\r\nBrown Rice Powder\r\nCinnamon Extract\r\nCorosolic Acid\r\nCurcumin\r\nFenugreek Extract\r\nFlax Seed Extract\r\nFucoxanthin\r\nGreen Tea Extract\r\nGymnema Extract\r\nLo Han Guo Extract\r\nMango Seed Extract\r\nMisai Kucing Extract\r\nSalacia Extract\r\nSea Buckthorn Extract', 4, 1),
(5, 'Weight Loss', 'African Mango Extract\r\nAloe Vera Extract\r\nApple Extract\r\nBlueberry Extract\r\nHoodia Extract\r\nCapsicum Extract\r\nCaralluma Extract\r\nArabinose\r\nFucoxanthin\r\nGarcinia Extract\r\nGreen Coffee Bean Extract\r\nGreen Tea Extract\r\nHawthorn Berry Powder\r\nHop Extract\r\nL-Carnitine\r\nMilk Thistle Extract\r\nPsyllium Husk\r\nRoselle Powder\r\nSalacia Extract\r\nSemen Cassia Extract\r\nSoy Lecithin\r\nSoybean Peptide', 5, 1),
(6, 'Immune System', 'Agaricus Blazei Extract\r\nAloe Vera Extract (White)\r\nAmerican Ginseng Extract\r\nAmla Extract\r\nAscorbic Acid\r\nAstragalus Extract\r\nBarley Grass Powder\r\nBee Propolis \r\nBroccoli Extract\r\nChlorella\r\nColostrum Powder\r\nCordyceps Extract\r\nCurcumin\r\nFucoidan\r\nGanoderma Extract\r\nGinger Extract\r\nGinseng Extract\r\nGreen Tea Extract\r\nL-Cysteine\r\nBee Pollen Powder\r\nSpirulina Powder\r\nRed Beet Powder\r\nSiberian Ginseng Extract', 6, 1),
(7, 'Liver', 'Agaricus Blazei Extract\r\nCorn Peptide\r\nDandelion Extract\r\nDonggui Extract\r\nEpimedium Extract\r\nGreen Tea Extract\r\nMilk Thistle Extract\r\nPearl Powder\r\nSea Buckthorn Extract\r\nSoy Lecithin', 7, 2),
(8, 'Detox', 'Aloe Vera Extract\r\nAlpha Lipoic Acid\r\nApple Fiber\r\nBarley Powder\r\nBarley Grass Powder\r\nSenna Extract\r\nChlorella\r\nInulin\r\nOat fiber\r\nFOS\r\nSpirulina Powder\r\nPalm Fiber\r\nPearl Powder\r\nPsyllium Husk\r\nRed Beet Powder\r\nRoselle Powder\r\nSemen Cassia Extract\r\nSodium Copper Chlorophyllin\r\nSoy Lecithin', 8, 1),
(9, 'Eye Health', 'Alpha Lipoic Acid\r\nVit C + Zinc\r\nAstaxanthin\r\nBilberry Extract\r\nBlackcurrant Extract\r\nBlueberry Extract\r\nGinkgo Extract\r\nGrape Seed Extract\r\nLutein\r\nLycopene\r\nPearl Powder\r\nPine Bark Extract\r\nSemen Cassia Extract', 7, 2),
(10, 'Bone Health', 'Alpha Lipoic Acid\r\nAscorbic Acid\r\nAstaxanthin\r\nBlack Cohosh Extract\r\nBlack Soybean Hull\r\nBoswellia Serrata Extract\r\nBovine Collagen\r\nBrown Rice Powder\r\nCalcium Carbonate\r\nCalcium Lactate\r\nChondroitin Sulphate\r\nCinnamon Extract\r\nCollagen Type II\r\nCurcumin\r\nFucoidan\r\nGinger Extract\r\nGrape Seed Extract\r\nGreen Tea Extract\r\nL-Cysteine\r\nL-Lysine\r\nLycopene\r\nN-Acetyl Glucosamine\r\nRed Clover Extract\r\nSoy Isoflavone', 9, 2),
(11, 'Skin Beauty', 'Alpha Lipoic Acid\r\nApple Extract\r\nAscorbic Acid\r\nAstaxanthin\r\nBeta Carotene\r\nDeer Placenta\r\nEquine Placenta\r\nFish Collagen\r\nGrape Seed Extract\r\nGreen Papaya Extract\r\nGreen Tea Extract\r\nHA\r\nL-Arginine\r\nL-Cysteine\r\nL-Glutathione\r\nL-Lysine\r\nLycopene\r\nMilk Thistle Extract\r\nBee Pollen Powder\r\nPearl Powder\r\nPhyto HA\r\nRosemary Extract', 10, 2),
(12, 'Women', 'Black Cohosh Extract\r\nDandelion Extract\r\nDonggui Extract\r\nEvening Primrose Seed Extract\r\nFennel Seed Extract\r\nFlax Seed Extract\r\nGinger Extract\r\nGinkgo Extract\r\nGreen Papaya Extract\r\nHop Extract\r\nKacip fatimah Extract\r\nMaca Extract\r\nManjakani Extract\r\nMucuna\r\nPearl Powder\r\nPueraria Lobata Extract\r\nRed Beet Powder\r\nRed Clover Extract\r\nSoy Isoflavone', 11, 2),
(13, 'Digestion', 'Amla Extract\r\nAmylase\r\nBarley Powder\r\nBarley Grass Powder\r\nBromelain\r\nBrown Rice Powder\r\nCapsicum Extract\r\nCelery Extract\r\nCinnamon Extract\r\nDigezyme\r\nGinger Extract\r\nInulin\r\nLactospore\r\nFOS', 12, 2),
(14, 'Brain', 'Alpha Lipoic Acid\r\nAstaxanthin\r\nBacopa Extract\r\nBlueberry Extract\r\nBrown Rice Powder\r\nDHA\r\nGinkgo Extract\r\nGinseng Extract\r\nGrape Seed Extract\r\nL-Glutamine\r\nMucuna\r\nRosemary Extract\r\nSoy Lecithin', 13, 2),
(15, 'Kidney', 'Astragalus Extract\r\nBarley Powder\r\nBilberry Extract\r\nCordyceps Extract\r\nDandelion Extract\r\nFlax Seed Extract\r\nGuarana Extract\r\nMisai Kucing Extract', 13, 2),
(16, 'Body Building', 'Beta Alanine\r\nCreatine Monohydrate\r\nD-Ribose\r\nWhey Powder\r\nIsolated Soy Protein\r\nL-Arginine\r\nL-Carnitine\r\nL-Glutamine\r\nL-Leucine\r\nL-Ornithine\r\nMucuna\r\nPea Protein\r\nPine Bark Extract\r\nSoybean Peptide', 14, 2),
(17, 'Men', 'Butea Superba Extract\r\nCordyceps Extract\r\nD-Ribose\r\nDonggui Extract\r\nEpimedium Extract\r\nGuarana Extract\r\nGynostemma Extract\r\nL-Carnitine\r\nL-Citrulline\r\nL-Glutathione\r\nLycopene\r\nMaca Extract\r\nMucuna\r\nSaw Palmetto Extract', 15, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
