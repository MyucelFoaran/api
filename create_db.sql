DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INTEGER PRIMARY KEY,
login TEXT NOT NULL UNIQUE
);
CREATE TABLE notes (
id INTEGER PRIMARY KEY,
title TEXT NOT NULL,
content TEXT,
id_user INTEGER NOT NULL REFERENCES users(id),
created_at TEXT
);
INSERT INTO users (id, login) VALUES
(1, 'admin'),
(2, 'user25'),
(3, 'ivanov'),
(4, 'petrova');
