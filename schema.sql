CREATE DATABASE catalog_of_my_things;

CREATE TABLE book (
  id BIGSERIAL PRIMARY KEY,
  genre_id INTEGER,
  author_id INTEGER,
  label_id INTEGER,
  publish_date DATE,
  archived BOOLEAN
);

CREATE TABLE MusicAlbum (
  id BIGSERIAL PRIMARY KEY,
  genre_id INTEGER,
  author_id INTEGER,
  label_id INTEGER,
  publish_date DATE,
  archived BOOLEAN
);

CREATE TABLE Genre (
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

ALTER TABLE book ADD CONSTRAINT fk_label_id FOREIGN KEY(label_id) REFERENCES label(id);
ALTER TABLE MusicAlbum ADD CONSTRAINT fk_genre_id FOREIGN KEY(genre_id) REFERENCES Genre(id);
