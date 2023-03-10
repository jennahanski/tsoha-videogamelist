CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT,
    is_admin BOOLEAN DEFAULT FALSE
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    creator_id INTEGER REFERENCES users,
    name TEXT,
    year INTEGER,
    visible BOOLEAN DEFAULT TRUE
);

CREATE TABLE stats (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users,
    game_id INTEGER REFERENCES games,
    status INTEGER,
    playtime INTEGER,
    platform TEXT,
    favorite INTEGER
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users,
    game_id INTEGER REFERENCES games,
    comment TEXT,
    grade INTEGER,
    visible INTEGER
);

CREATE TABLE tags (
    id SERIAL PRIMARY KEY,
    creator_id INTEGER REFERENCES users,
    game_id INTEGER REFERENCES games,
    name TEXT
);