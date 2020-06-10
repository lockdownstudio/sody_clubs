USE `essentialmode`;

CREATE TABLE `sody_clubs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sody_clubs_ranks` (
  `id` tinyint(5) NOT NULL,
  `club_name` varchar(50) NOT NULL,
  `club_rank` tinyint(5) NOT NULL,
  `club_rank_name` varchar(30) NOT NULL,
  `club_rank_label` varchar(50) NOT NULL,
  `pay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `users` ADD `club` VARCHAR(30) NULL, ADD `club_rank` TINYINT(5) NULL;

INSERT INTO `sody_clubs` (`name`, `label`) VALUES ('bbg', 'Bloob Bath Gang');f

INSERT INTO `sody_clubs_ranks` (`id`, `club_name`, `club_rank`, `club_rank_name`, `club_rank_label`, `pay`) VALUES
(NULL, 'lmc', 0, 'halcones', 'Halcones', 500),
(NULL, 'lmc', 1, 'sicarios', 'Sicarios', 1000),
(NULL, 'lmc', 2, 'teniente', 'Teniente', 1500),
(NULL, 'lmc', 3, 'senor', 'Señor', 2000),
(NULL, 'lmc', 4, 'boss', 'Padrino', 3000);

-- LMC EXAMPLE --
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('club_bbg_bank', 'BBG', 1),
('club_bbg_black', 'BBG Black', 1),
('club_bbg_priv', 'BBG Priv', 1),
('club_bbg_pub', 'BBG Pub', 1);

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(NULL, 'club_bbg_pub', 0, NULL),
(NULL, 'club_bbg_priv', 0, NULL),
(NULL, 'club_bbg_black', 0, NULL),
(NULL, 'club_bbg_bank', 0, NULL);

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('club_bbg_pub', 'BBG Public', 1),
('club_bbg_priv', 'BBG Private', 1),
('club_bbg', 'BBG', 1);

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('club_lmc', 'BBG', 1),
('club_lmc_priv', 'BBG Priv', 1),
('club_lmc_pub', 'BBG Pub', 1);
