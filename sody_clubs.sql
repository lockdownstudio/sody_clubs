USE `es_extended`;

CREATE TABLE `sody_clubs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
   PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sody_clubs_ranks` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`club_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`club_rank` INT NOT NULL,
	`club_rank_name` VARCHAR(30) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`club_rank_label` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`pay` INT NOT NULL,
	 PRIMARY KEY (id)
)
COLLATE='utf8mb4_0900_ai_ci'
;

ALTER TABLE `users` ADD `club` VARCHAR(30) NULL, ADD `club_rank` TINYINT(5) NULL;

INSERT INTO `sody_clubs` (`name`, `label`) VALUES ('bbg', 'Bloob Bath Gang');

INSERT INTO `sody_clubs_ranks` (`club_name`, `club_rank`, `club_rank_name`, `club_rank_label`, `pay`) VALUES
('bbg', 0, 'halcones', 'Halcones', 500),
('bbg', 1, 'sicarios', 'Sicarios', 1000),
('bbg', 2, 'teniente', 'Teniente', 1500),
('bbg', 3, 'senor', 'Señor', 2000),
('bbg', 4, 'boss', 'Padrino', 3000);

-- LMC EXAMPLE --
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('club_bbg_bank', 'BBG', 1),
('club_bbg_black', 'BBG Black', 1),
('club_bbg_priv', 'BBG Priv', 1),
('club_bbg_pub', 'BBG Pub', 1);

INSERT INTO `addon_account_data` (`account_name`, `money`, `owner`) VALUES
('club_bbg_pub', 0, NULL),
('club_bbg_priv', 0, NULL),
('club_bbg_black', 0, NULL),
('club_bbg_bank', 0, NULL);

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('club_bbg_pub', 'BBG Public', 1),
('club_bbg_priv', 'BBG Private', 1),
('club_bbg', 'BBG', 1);

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('club_bbg', 'BBG', 1),
('club_bbg_priv', 'BBG Priv', 1),
('club_bbg_pub', 'BBG Pub', 1);
