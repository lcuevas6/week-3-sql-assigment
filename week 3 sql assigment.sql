DROP DATABASE IF EXISTS users_db;
CREATE DATABASE users_db;

CREATE TABLE Users(
user_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
username VARCHAR(40) NOT NULL,
email VARCHAR(40) NOT NULL,
password VARCHAR(100) NOT NULL,
PRIMARY KEY (user_id)
users);

CREATE TABLE Posts(
post_id INT NOT NULL AUTO_INCREMENT,
user_id INT,
post_text TEXT NOT NULL,
post_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (post_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Comments(
comment_id INT NOT NULL AUTO_INCREMENT,
post_id INT, 
user_id INT, 
comment_text TEXT NOT NULL, 
comment_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (comment_id),
FOREIGN KEY (post_id) REFERENCES Posts(post_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id) 
);