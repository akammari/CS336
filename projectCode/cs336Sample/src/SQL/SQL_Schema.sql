DROP DATABASE IF EXISTS Buy1;
CREATE DATABASE Buy1;
USE Buy1;

CREATE TABLE users(
    username varchar(20),
    pass varchar(20),
    primary key(username)
);
INSERT INTO Buy.users VALUES("root", "root");
