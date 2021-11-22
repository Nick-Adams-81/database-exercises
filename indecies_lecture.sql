
CREATE DATABASE IF NOT EXISTS quasar_db;

USE quasar_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30) NOT NULL,
    pet_age INT,
    PRIMARY KEY(id),
    INDEX index_owner_name (owner_name)
);

DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    address VARCHAR(100),
    PRIMARY KEY(id)
);

INSERT INTO owners(name, address)
VALUES ('Nick', '123 some road'),
       ('Darth Adams', '455 Death star'),
       ('Lt. cmdr Data', 'USS Enterprise NCC-1701-D');

INSERT INTO pets(pet_name, owner_name, pet_age)
VALUES ('Styx', 'Nick', 8),
       ('Bosco', 'Terry', 11),
       ('Pixi', 'Lindsey', 13),
       ('Rocco', 'Joe', 6);

SELECT * FROM pets;

SELECT * FROM owners;

SELECT * FROM pets WHERE owner_name = 'Nick';

SELECT * FROM pets WHERE id = 2;

SELECT * FROM pets WHERE pet_age = 8;

SHOW INDEX FROM pets;

DESCRIBE pets;
