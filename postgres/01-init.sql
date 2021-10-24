CREATE DATABASE testdb;

\c testdb

create user testuser with password 'testuser';

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_MODERATOR');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');

GRANT USAGE ON SCHEMA public TO testuser
grant all privileges on database testdb to testuser;

