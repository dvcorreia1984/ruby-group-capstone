CREATE DATABASE catalog_of_my_things;

CREATE TABLE book (
  id BIGSERIAL PRIMARY KEY,
  genre_id INTEGER,
  author_id INTEGER,
  label_id INTEGER,
  publish_date DATE,
  archived BOOLEAN
);

CREATE TABLE label (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR(30),
  color VARCHAR(10),
  items JSON[]
);

ALTER TABLE book ADD CONSTRAINT fk_label_id FOREIGN KEY(label_id) REFERENCES label(id);
