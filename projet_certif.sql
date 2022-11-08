START TRANSACTION;

-- Création de la base de données
CREATE DATABASE `chat_api` DEFAULT CHARACTER SET "utf8mb4";

-- Positionnement dans la base de données
USE `chat_api`;

-- Création de la table `users`
CREATE TABLE `users` (
    `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `email` VARCHAR(100) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `username` VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

-- Création de la table `canaux`
CREATE TABLE `canaux` (
    `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `description` VARCHAR(255),
    `name` VARCHAR(255) NOT NULL,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

-- Création de la table `messages`
CREATE TABLE `messages` (
    `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `content` TEXT NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `canal_id` BIGINT UNSIGNED NOT NULL,
    `user_id` BIGINT UNSIGNED NOT NULL,
    CONSTRAINT `fk_messages_canaux` FOREIGN KEY (`canal_id`) REFERENCES `canaux`(`id`),
    CONSTRAINT `fk_messages_users` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)
) ENGINE = InnoDB;

-- Création de la table
CREATE TABLE `user_canal` (
    `user_id` BIGINT UNSIGNED NOT NULL,
    `canal_id` BIGINT UNSIGNED NOT NULL,
    CONSTRAINT `pk_user_canal` PRIMARY KEY (`user_id`, `canal_id`),
    CONSTRAINT `fk_messages_canal_id` FOREIGN KEY (`canal_id`) REFERENCES `canaux`(`id`),
    CONSTRAINT `fk_messages_user_id` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)
) ENGINE = InnoDB;

COMMIT;
