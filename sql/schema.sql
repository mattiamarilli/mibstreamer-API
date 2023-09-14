DROP SCHEMA IF EXISTS faceart;
CREATE SCHEMA faceart;

USE faceart;

CREATE TABLE authors (
    id_author INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_author VARCHAR(64) NOT NULL,
    infourl_author VARCHAR(2000) NOT NULL
);

CREATE TABLE paintings (
	id_painting INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(64) NOT NULL,
    year INT(4) NOT NULL,
    location VARCHAR(64) NOT NULL,
	imgurl VARCHAR(2000) NOT NULL,
    infourl VARCHAR(2000) NOT NULL,
	description VARCHAR(64) NOT NULL,
	id_author INT NOT NULL REFERENCES authors (id_author)
);

CREATE TABLE scores (
    id_score INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_painting INT NOT NULL REFERENCES paintings (id_painting),
    nickname varchar(20) NOT NULL,
    score float NOT NULL
);

CREATE TABLE tips (
    id_tip INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(2000) NOT NULL
);

CREATE TABLE tips_paintings (
    id_painting INT NOT NULL REFERENCES paintings (id_painting),
    id_tip INT NOT NULL REFERENCES tips (id_tip),
    PRIMARY KEY (id_painting, id_tip)
);