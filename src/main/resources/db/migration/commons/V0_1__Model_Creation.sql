#Definición de la base de datos
use restservice;

#Eliminación de las tablas
drop table if exists style;
drop table if exists song;
drop table if exists album;
drop table if exists artist;
drop table if exists user_access_level;
drop table if exists user;
drop table if exists access_level;

#Creación de las tablas
CREATE TABLE IF NOT EXISTS style (
  id INT NOT NULL AUTO_INCREMENT,
  style_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX style_id_uindex (id)
  );

CREATE TABLE IF NOT EXISTS artist (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(200) NULL,
  PRIMARY KEY (id)
  );

CREATE TABLE IF NOT EXISTS album (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    artist_id INT NOT NULL,
    name VARCHAR(200) NOT NULL,
    release_year INT,
    CONSTRAINT fk_album_artist FOREIGN KEY (artist_id) REFERENCES artist (id),
    UNIQUE INDEX album_id_uindex (id),
    INDEX album_artist_id_index (artist_id),
    INDEX album_year_index (release_year)
);

CREATE TABLE IF NOT EXISTS song (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    album_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    track_number INT,
    duration int,
    style_id INT NOT NULL,
    CONSTRAINT fk_song_album FOREIGN KEY (album_id) REFERENCES album (id),
    CONSTRAINT fk_song_style FOREIGN KEY (style_id) REFERENCES style (id),
    UNIQUE INDEX song_id_uindex (id),
    INDEX song_album_index (album_id),
    INDEX song_style_index (style_id)
);

CREATE TABLE IF NOT EXISTS user(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    realname VARCHAR(200),
    username VARCHAR(8) NOT NULL,
    password VARCHAR(32) NOT NULL,
    email VARCHAR(200),
    UNIQUE INDEX user_id_uindex (id)
);

CREATE TABLE IF NOT EXISTS access_level(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    level_name VARCHAR(20),
    UNIQUE INDEX access_level_id_uindex (id)
);

CREATE TABLE IF NOT EXISTS user_access_level(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    access_level_id INT NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user (id),
    CONSTRAINT fk_access_level FOREIGN KEY (access_level_id) REFERENCES access_level (id),
    UNIQUE INDEX user_access_level_id_uindex (id),
    INDEX user_access_level_access_level_index (access_level_id)
);