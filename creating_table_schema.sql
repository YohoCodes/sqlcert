CREATE TABLE films (
    id BIGSERIAL PRIMARY KEY,
    title TEXT,
    release_year FLOAT,
    country TEXT,
    duration FLOAT,
    language TEXT,
    certification TEXT,
    gross FLOAT,
    budget FLOAT
);

CREATE TABLE people (
    id BIGSERIAL PRIMARY KEY,
    name TEXT,
    birthdate DATE,
    deathdate DATE
);

CREATE TABLE reviews (
    film_id TEXT,
    num_user TEXT,
    num_critic TEXT,
    imdb_score TEXT,
    num_votes TEXT,
    facebook_likes TEXT
);

CREATE TABLE roles (
    id BIGSERIAL PRIMARY KEY,
    film_id INT,
    person_id INT,
    role TEXT
);