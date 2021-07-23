-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Maio-2021 às 19:53
-- Versão do servidor: 10.3.29-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `whatsgobrasil_flix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `actor`
--

CREATE TABLE `actor` (
  `actor_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `episode`
--

CREATE TABLE `episode` (
  `episode_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'date', ''),
(2, 'package', ''),
(3, 'service_period', ''),
(4, 'payment_method', ''),
(5, 'total', ''),
(6, 'cancel_your_membership', ''),
(7, 'Click_Finish_Cancellation_below_to_cancel_your_membership', ''),
(8, 'Cancellation_will_be_effective_immedietly_after_your_confirmation', ''),
(9, 'Restart_your_membership_anytime. Your_viewing_preferences_will_be_saved_always', ''),
(10, 'cancel_plan', ''),
(11, 'Finish_Cancellation', ''),
(12, 'Edit_Profile', ''),
(13, 'Change_Email', ''),
(14, 'Current_Email', ''),
(15, 'New_Email', ''),
(16, 'Current_Password', ''),
(17, 'Frequently_asked_question', ''),
(18, 'Faq', ''),
(19, 'Refund_Policy', ''),
(20, 'Forgot_Email/_Password', ''),
(21, 'Enter_your_email_address. We_will_send_you_a_temporary_password.', ''),
(22, 'Email', ''),
(23, 'Email_me', ''),
(24, 'Movie', ''),
(25, 'Tv_Serial', ''),
(26, 'Admin', ''),
(27, 'Account', ''),
(28, 'Sign_out', ''),
(29, 'PLAY', ''),
(30, 'See_what_is_next.', ''),
(31, 'WATCH_ANYWHERE.', ''),
(32, 'CANCEL_ANYTIME.', ''),
(33, 'JOIN_TODAY', ''),
(34, 'Cancel_subscription_anytime', ''),
(35, 'Watch_from_anywhere', ''),
(36, 'Pricing_packages', ''),
(37, 'If_you_decide_Netflex_is_not_for_you, no_problem.', ''),
(38, 'No_commitment. Cancel_online_anytime.', ''),
(39, 'Watch_TV_shows_and_movies_anytime, anywhere. From_any_device.', ''),
(40, 'Watch_on_your_tv', ''),
(41, 'Watch_on_your_phone, tablet', ''),
(42, 'Watch_on_your_pc', ''),
(43, 'Choose_one_plan_and_watch_everything.', ''),
(44, 'Monthly_price', ''),
(45, 'Screens_you_can_watch_on_at_the_same_time', ''),
(46, 'Watch_on_your_laptop, TV, phone_and_tablet', ''),
(47, 'HD_available', ''),
(48, 'Unlimited_movies_and_TV_shows', ''),
(49, 'Cancel_anytime', ''),
(50, 'DONE', ''),
(51, 'movies', ''),
(52, 'Change_Password', ''),
(53, 'New_Password', ''),
(54, 'Save', ''),
(55, 'Add_to_My_list', ''),
(56, 'Added_to_My_list', ''),
(57, 'Genre', ''),
(58, 'Year', ''),
(59, 'About', ''),
(60, 'Cast', ''),
(61, 'More', ''),
(62, 'Episode', ''),
(63, 'Search_result_for', ''),
(64, 'Tv_series', ''),
(65, 'Password', ''),
(66, 'Forget_password', ''),
(67, 'Sign_up', ''),
(68, 'Sign_up_to_start_your_membership', ''),
(69, 'Create_your_account', ''),
(70, 'Email_Address', ''),
(71, 'Register', ''),
(72, 'Who_is_watching', ''),
(73, 'MEMBERSHIP_AND_BILLING', ''),
(74, 'Cancel_Membership', ''),
(75, 'PLAN_DETAILS', ''),
(76, 'Effective_upto', ''),
(77, 'Go_Back', ''),
(78, 'Cancel', ''),
(79, 'Billing_history', ''),
(80, 'MY_PROFILE', ''),
(81, 'Manage_profiles', ''),
(82, 'language_list', ''),
(83, 'add_phrase', ''),
(84, 'add_language', ''),
(85, 'language', ''),
(86, 'option', ''),
(87, 'edit_phrase', ''),
(88, 'delete_language', ''),
(89, 'phrase', ''),
(90, 'value_required', ''),
(91, 'MY_LIST', ''),
(92, 'update_phrase', ''),
(93, 'settings_updated', ''),
(94, 'video_playlist', ''),
(95, 'sign_in', ''),
(96, 'Privacy_Policy', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_short` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_long` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` longtext COLLATE utf8_unicode_ci NOT NULL,
  `featured` int(11) NOT NULL,
  `kids_restriction` int(11) NOT NULL DEFAULT 0,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `plan`
--

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `screens` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 active, 0 inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `plan`
--

INSERT INTO `plan` (`plan_id`, `name`, `screens`, `price`, `status`) VALUES
(1, 'basic', '1', '7.99', 1),
(2, 'standard', '2', '9.99', 1),
(3, 'premium', '4', '11.99', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `season`
--

CREATE TABLE `season` (
  `season_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_short` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_long` longtext COLLATE utf8_unicode_ci NOT NULL,
  `genre_id` int(11) NOT NULL,
  `actors` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'comma separated actor_id',
  `year` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `kids_restriction` int(11) NOT NULL,
  `episodes` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'site_name', 'Movie subscription portal'),
(2, 'site_email', ''),
(3, 'paypal_merchant_email', ''),
(4, 'invoice_address', ''),
(5, 'language', 'english'),
(6, 'purchase_code', ''),
(7, 'privacy_policy', ''),
(8, 'refund_policy', ''),
(9, 'stripe_publishable_key', ''),
(10, 'stripe_secret_key', ''),
(11, 'trial_period', 'off'),
(12, 'trial_period_days', '30'),
(13, 'theme', 'flixer');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price_amount` int(11) NOT NULL,
  `paid_amount` float NOT NULL,
  `timestamp_from` int(11) NOT NULL,
  `timestamp_to` int(11) NOT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 active, 0 cancelled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 admin, 0 customer',
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user1` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 1',
  `user2` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 2',
  `user3` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 3',
  `user4` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user 4',
  `user1_session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user2_session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user3_session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user4_session` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user1_movielist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user2_movielist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user3_movielist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user4_movielist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user1_serieslist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user2_serieslist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user3_serieslist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user4_serieslist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 banned'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`user_id`, `type`, `name`, `email`, `password`, `user1`, `user2`, `user3`, `user4`, `user1_session`, `user2_session`, `user3_session`, `user4_session`, `user1_movielist`, `user2_movielist`, `user3_movielist`, `user4_movielist`, `user1_serieslist`, `user2_serieslist`, `user3_serieslist`, `user4_serieslist`, `plan_id`, `status`) VALUES
(1, 1, 'Mr. Admin', 'admin@videoflix.com', '2fb5e13419fc89246865e7a324f476ec624e8740', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`);

--
-- Índices para tabela `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Índices para tabela `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`episode_id`);

--
-- Índices para tabela `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Índices para tabela `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Índices para tabela `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Índices para tabela `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Índices para tabela `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Índices para tabela `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`season_id`);

--
-- Índices para tabela `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Índices para tabela `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `actor`
--
ALTER TABLE `actor`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `episode`
--
ALTER TABLE `episode`
  MODIFY `episode_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `season`
--
ALTER TABLE `season`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
