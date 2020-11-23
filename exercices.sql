-- Exercice 1
-- La base de donnée `stockImages` a été créé à l'aide de l'interface graphique

-- Exercice 2
DROP DATABASE IF EXISTS `stockImages`

-- Exercice 3
CREATE DATABASE IF NOT EXISTS `mediaBank`

-- Exercice 4 (ne pas le faire)

-- Exercice 5
CREATE TABLE `images`
( 
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    `name` VARCHAR(50), 
    `link` VARCHAR(255), 
    `width` INT, 
    `height` INT, 
    `format` VARCHAR(5), 
    `description` TEXT, 
    `publicationDate` DATE
)

CREATE TABLE `videos`
( 
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
    `name` VARCHAR(50), 
    `link` VARCHAR(255), 
    `duration` TIME,  
    `description` TEXT, 
    `publicationDate` DATE
)

-- Exercice 6
INSERT INTO `images` VALUES
(1, 'orwellPortrait', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg', 1176, 1596, 'jpg', 'Portrait de l’auteur Geroge Orwell', '2020-05-10'),
(2, 'steinbeckPortrait', 'https://live.staticflickr.com/525/18306511889_1c9606e8ea_z.jpg', 640, 476, 'jpg', 'Portrait de l’auteur John Steinbeck', '2020-01-02')

INSERT INTO `videos` VALUES
(1, '1984_trailer', 'https://www.youtube.com/watch?v=Z4rBDUJTnNU&t=4s', '00:02:39', 'Bande annonce du film 1984', '2020-05-15'),
(2, 'micemen_trailer', 'https://www.youtube.com/watch?v=2QnM6hsXxNE', '00:10:41', 'Bande annonce du film des Souris et des hommes', '2020-01-02')

-- Exercice 7
UPDATE `images`
SET `publicationDate` = '2020-11-23'
WHERE `id` = 1

UPDATE `videos`
SET `duration` = '00:01:41'
WHERE `id` = 2

-- Exercice 8
DELETE FROM `images`
WHERE `id` = 2

DELETE FROM `videos`
WHERE `id` = 1

-- Exercice 9
DROP TABLE `videos`