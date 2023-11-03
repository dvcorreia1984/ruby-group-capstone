CREATE DATABASE catalog_of_my_things;

CREATE TABLE book (
  id BIGSERIAL PRIMARY KEY,
  genre_id INTEGER,
  author_id INTEGER,
  label_id INTEGER,
  publish_date DATE,
  archived BOOLEAN
);

CREATE TABLE musicAlbum (
  id BIGSERIAL PRIMARY KEY,
  genre_id INTEGER,
  author_id INTEGER,
  label_id INTEGER,
  publish_date DATE,
  archived BOOLEAN
);

CREATE TABLE games (
  id INT PRIMARY KEY,
  genre_id INTEGER,
  author_id INTEGER,
  label_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  multiplayer BOOLEAN,
  last_played_at VARCHAR(255)
);

CREATE TABLE genre (
  id BIGSERIAL PRIMARY KEY,
  name VARCHAR(30),
  items JSON[]
);

CREATE TABLE label (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR(30),
  color VARCHAR(10),
  items JSON[]
);

CREATE TABLE author (
  id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

ALTER TABLE book ADD CONSTRAINT fk_label_id FOREIGN KEY(label_id) REFERENCES label(id);
ALTER TABLE book ADD CONSTRAINT fk_genre_id FOREIGN KEY(genre_id) REFERENCES genre(id);
ALTER TABLE book ADD CONSTRAINT fk_author_id FOREIGN KEY(author_id) REFERENCES author(id);

ALTER TABLE musicAlbum ADD CONSTRAINT fk_label_id FOREIGN KEY(label_id) REFERENCES label(id);
ALTER TABLE musicAlbum ADD CONSTRAINT fk_genre_id FOREIGN KEY(genre_id) REFERENCES genre(id);
ALTER TABLE musicAlbum ADD CONSTRAINT fk_author_id FOREIGN KEY(author_id) REFERENCES author(id);

ALTER TABLE games ADD CONSTRAINT fk_label_id FOREIGN KEY(label_id) REFERENCES label(id);
ALTER TABLE games ADD CONSTRAINT fk_genre_id FOREIGN KEY(genre_id) REFERENCES genre(id);
ALTER TABLE games ADD CONSTRAINT fk_author_id FOREIGN KEY(author_id) REFERENCES author(id);
