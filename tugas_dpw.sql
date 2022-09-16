-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2022 at 05:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_dpw`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama`, `harga`, `stok`, `berat`, `deskripsi`, `created_at`, `updated_at`) VALUES
(5, NULL, 'Oliver Peoples', 6890000, NULL, 4, 'Gregory Peck glasses\r\n\r\nBrown Gregory Peck glasses from Oliver Peoples. This item comes with a protective case. This item is unisex.\r\n\r\nMade in Italy\r\n\r\nComposition\r\nMetal 100%, Acetate 100%\r\n\r\nManufacturer\r\nLUXOTTICA\r\n\r\nBrand style ID: OV5186', '2022-08-21 02:28:26', '2022-08-31 13:54:49'),
(21, NULL, 'Saint Laurent Eyewear', 2500000, 10, 10, 'Saint Laurent Eyewear\r\ncat-eye frame optical glasses\r\n\r\nMade in Italy\r\n\r\nHighlights\r\ngold-tone\r\npolished finish\r\ngold-tone hardware\r\nlogo plaque at the arm\r\ncat eye frame\r\ncurved tips\r\nAll glasses from FARFETCH are sold as non-prescription frames.\r\nThese glasses come with a protective case.\r\nComposition\r\nAcrylic 100%\r\n\r\nBrand style ID: SLM93\r\n\r\nWearing\r\nThe model is 1.8 m wearing size OS', '2022-08-30 05:25:26', '2022-08-30 05:25:26'),
(22, NULL, 'Gentle Monster', 1580000, 20, 11, 'Gentle Monster\r\nUna.C N C1 square-frame glasses\r\n\r\nSouth Korean eyewear brand Gentle Monster continues to provide futuristic and exciting offerings each season. SS22 introduces the Una.C N C1 glasses, defined by their clear design and minimalist square frame. \r\n\r\nHighlights\r\ntransparent frame\r\nsquare frame\r\ngold-tone hardware\r\ncurved arms\r\nThese glasses come with a protective case.\r\nComposition\r\nAcetate 100%, Acrylic 100%\r\n\r\nBrand style ID: UnaCNC1', '2022-08-30 05:26:32', '2022-08-30 05:26:56'),
(23, NULL, 'Marc Jacobs Eyewear', 4968000, NULL, 15, 'Marc Jacobs Eyewear\r\ncat-eye frame sunglasses\r\n\r\nHighlights\r\npink\r\nacetate\r\ncat-eye frame\r\ngrey tinted lenses\r\ncurved tips\r\nThese glasses come with a protective case.\r\nComposition\r\nAcetate 100%\r\n\r\nWashing instructions\r\nDo Not Wash/Do Not Dry Clean\r\n\r\nBrand style ID: 20477892Y59IR', '2022-08-30 05:28:33', '2022-08-31 13:54:18'),
(24, NULL, 'Kate Spade Brylie glasses', 1580900, 35, 5, 'Kate Spade\r\nBrylie glasses\r\n\r\nTonal brown acetate Brylie glasses from Kate Spade featuring rectangular frames, tortoiseshell detailing, a logo at the temple and straight arms with curved tips. This item comes with a protective case. This item is unisex.\r\n\r\nComposition\r\nAcetate 100%\r\n\r\nBrand style ID: BRYLIE', '2022-08-31 06:43:41', '2022-08-31 06:43:41'),
(25, NULL, 'Lesca', 3540650, 45, 8, 'Lesca\r\ntortoiseshell round-frame glasses\r\n\r\ntortoiseshell round-frame glasses from LESCA featuring chocolate brown, caramel brown, tortoiseshell effect, clear lenses, round frame, raised bridge, straight arms and curved tips. These glasses come with a protective case..\r\n\r\nMade in France\r\n\r\nComposition\r\nAcetate 100%\r\n\r\nBrand style ID: GAB2', '2022-08-31 07:03:55', '2022-08-31 07:03:55'),
(26, NULL, 'Marc Jacobs Eyewear', 1650400, 55, 16, 'Marc Jacobs Eyewear\r\ncat-eye frame sunglasses\r\n\r\nHighlights\r\npink\r\nacetate\r\ncat-eye frame\r\ngrey tinted lenses\r\ncurved tips\r\nThese glasses come with a protective case.\r\nComposition\r\nAcetate 100%\r\n\r\nWashing instructions\r\nDo Not Wash/Do Not Dry Clean\r\n\r\nBrand style ID: 20477892Y59IR', '2022-08-31 07:05:38', '2022-08-31 07:05:38'),
(27, NULL, 'Ray-Ban', 4480200, 45, 9, 'Ray-Ban\r\nRoundabout tortoiseshell sunglasses\r\n\r\nMade in Italy\r\n\r\nHighlights\r\nacetate\r\ntortoiseshell effect\r\ncat-eye frame\r\ngreen tinted lenses\r\nUV-protective lenses\r\nlense decal\r\nlogo-debossed arm\r\noversize arms\r\ncurved tips\r\nWe know you\'ll look after them, but these glasses come with protection, just in case.\r\nComposition\r\nOuter: Acetate 100%\r\n\r\nBrand style ID: RB219295431', '2022-08-31 07:07:12', '2022-08-31 07:07:12'),
(28, 7, 'Balenciaga Eyewear', 3500000, 20, 10, 'Balenciaga Eyewear\r\nlogo pilot glasses\r\n\r\nPublic displays of affection are a marvellous thing. So show off your love for these pilot logo glasses from Balenciaga Eyewear. You should never be shy about who you love.\r\n\r\nMade in Italy\r\n\r\nHighlights\r\ngold-tone\r\nmetal\r\nembossed logo to the side\r\ndouble bridge\r\nclear lenses\r\ncurved tips\r\nnose pads\r\nWe know you\'ll look after them, but these glasses come with protection, just in case\r\nDon\'t be short-sighted. All glasses from FARFETCH are bought as non-prescription frames\r\nComposition\r\nMetal (Other) 100%\r\n\r\nBrand style ID: BB0117O', '2022-09-03 20:22:37', '2022-09-03 20:22:37'),
(29, 7, 'Gucci Eyewear', 5350000, 90, 20, 'Gucci Eyewear\r\nWeb detail hexagonal-frame glasses\r\n\r\nRemember how you used to think those high school geometry classes would do nothing for you? Designed with hexagonal frames and detailed with a signature blue, red and white Sylvie Web at the tips, these gold-tone glasses from Gucci Eyewear will give you a brand new perspective - literally. Guess teachers do know better after all... Featuring nose pads, an interlocking GG logo at the temple and straight arms with curved tips. This item comes with a protective case.\r\n\r\nMade in Italy\r\n\r\nComposition\r\nMetal (Other) 80%, Acetate 20%\r\n\r\nBrand style ID: GG0396O', '2022-09-03 20:37:34', '2022-09-03 20:37:34'),
(30, 7, 'Saint Laurent Eyewear', 4000000, 50, 15, 'Saint Laurent Eyewear\r\ncat-eye frame tortoiseshell optical glasses\r\n\r\nDr Saint Laurent knows what you need. That\'s why these cat-eye glasses were prescribed just for you. Ready for that test vision?\r\n\r\nMade in Italy\r\n\r\nHighlights\r\nbrown\r\ntortoiseshell effect\r\ncat-eye frame\r\nclear lenses\r\nlogo plaque at the arm\r\nstraight arms\r\ncurved tips\r\nWe know you\'ll look after them, but these glasses come with protection, just in case. Don\'t be short-sighted. All glasses from FARFETCH are bought as non-prescription frames.\r\nComposition\r\nAcrylic 100%, Acetate 100%\r\n\r\nBrand style ID: SLM60OPT', '2022-09-03 20:38:53', '2022-09-03 20:38:53'),
(31, 7, 'Linda Farrow', 6890000, 45, 8, 'Linda Farrow\r\nx Attico Irene rectangular-frame glasses\r\n\r\nLinda Farrow\'s glasses are designed in collaboration with Attico, which would explain the polished aesthetic. This geometric rectangular-frame pair is detailed with contrasting gold-tone logo detailing at the arms.\r\n\r\nHighlights\r\nmint\r\ngold-tone logo plaque\r\nclear lenses\r\nrectangle frame\r\nstraight arms\r\ncurved tips\r\nAll glasses from FARFETCH are sold as non-prescription frames.\r\nComposition\r\nAcrylic 100%, Acetate 100%\r\n\r\nBrand style ID: ATTICO14C6SUN\r\n\r\nWearing\r\nThe model is 1.81 m wearing size OS\r\n\r\nThe model is also styled with: Thebe Magugu handkerchief knitted dress', '2022-09-03 20:41:40', '2022-09-03 20:41:40'),
(32, 8, 'Lanvin', 6090000, 10, 25, 'New Season\r\n\r\nLanvin\r\nsquare frame glasses\r\n\r\nMade in Italy\r\n\r\nHighlights\r\nblack\r\nsquare frame\r\nmedallion pendant\r\nstraight arms\r\ncurved tips\r\nAll glasses from FARFETCH are sold as non-prescription frames.\r\nComposition\r\nAcetate 100%\r\n\r\nBrand style ID: LNV2618', '2022-09-03 21:39:13', '2022-09-03 21:39:13'),
(33, 8, 'Chloé Eyewear', 1560780, 35, 17, 'Chloé Eyewear\r\nSofya oversized-frame glasses\r\n\r\nBoasting oversized frames with a rimless effect at the top, Chloé Eyewear\'s Sofya glasses are finished with refined gold-tone hardware and ring embellishments at the side. Clear nose pads and curved arms in a versatile brown colour are added for a secure fit.\r\n\r\nMade in Italy\r\n\r\nHighlights\r\nbrown\r\nrimless lenses\r\noversize frame\r\ngold-tone hardware\r\nnose pads\r\ncurved arms\r\nThese glasses come with a protective case.\r\nComposition\r\nMetal 100%\r\n\r\nBrand style ID: CH0069O\r\n\r\nWearing\r\nThe model is 1.76 m wearing size OS\r\n\r\nThe model is also styled with: Arizona Love Trekky strappy sandals, Aje Casabianca braid-detail midi dress, Reco Pitti quilted shoulder bag', '2022-09-03 21:40:56', '2022-09-03 21:40:56'),
(34, 7, 'Oliver Peoples', 5350000, 50, 10, 'Oliver Peoples\r\nGregory Peck glasses\r\n\r\nBrown Gregory Peck glasses from Oliver Peoples. This item comes with a protective case. This item is unisex.\r\n\r\nMade in Italy\r\n\r\nComposition\r\nMetal 100%, Acetate 100%\r\n\r\nManufacturer\r\nLUXOTTICA\r\n\r\nBrand style ID: OV5186', '2022-09-03 22:50:21', '2022-09-03 22:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'fitri', 'fitrikusuma@gmail.com', 'Fitri Kusuma Wardani', '$2y$10$g/43ZSVRCixMS6MdMAFLb.lu1B8t564NUXoALFkkniK3YNT4vgtJG', NULL, '2022-09-03 20:06:37', '2022-09-03 20:07:24'),
(8, 'kusumaa', 'fitriwardani@gmail.com', 'kusuma', '$2y$10$og54FMkhuihRwMTOENCyEOpJ8Aa/9Zekx9E3DuFClYDNtWWj6LYZK', NULL, '2022-09-03 20:56:57', '2022-09-03 20:56:57'),
(9, 'oye3', 'oyeee@gmail.com', 'oye', '$2y$10$6xmKh1gwQ/bwnH/aTANe7OQPXCm2LhxmTDTCuI9mSh.0FzXIQJ8nO', NULL, '2022-09-03 21:41:38', '2022-09-03 21:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 7, '+6281020304050', '2022-09-03 20:06:37', '2022-09-03 20:06:37'),
(2, 8, '+6281020304051', '2022-09-03 20:56:57', '2022-09-03 20:56:57'),
(3, 9, '081020304050', '2022-09-03 21:41:38', '2022-09-03 21:41:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
