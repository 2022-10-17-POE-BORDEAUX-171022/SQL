-- Création de la base de données
CREATE DATABASE IF NOT EXISTS `crm` DEFAULT CHARACTER SET "utf8mb4";

-- Positionnement dans la base de données
USE `crm`;

-- Création de la table client
CREATE TABLE IF NOT EXISTS `clients` (
    `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `company_name` VARCHAR(100) NOT NULL,
    `first_name` VARCHAR(100) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `phone` VARCHAR(15) NOT NULL,
    `address` TEXT NOT NULL,
    `zip_code` VARCHAR(15) NOT NULL,
    `city` VARCHAR(15) NOT NULL,
    `country` VARCHAR(15) NOT NULL,
    `state` TINYINT(1) DEFAULT 0
) ENGINE = InnoDB;

-- Création de la table orders
--
CREATE TABLE IF NOT EXISTS `orders` (
    `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `client_id` BIGINT UNSIGNED NOT NULL,
    `type_presta` VARCHAR(100) NOT NULL,
    `designation` VARCHAR(100) NOT NULL,
    `nb_days` INT NOT NULL,
    `unit_price` FLOAT NOT NULL,
    `state` TINYINT(1) NOT NULL,
    CONSTRAINT `fk_order_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE = InnoDB;
