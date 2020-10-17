USE users_db;

INSERT INTO Users (first_name, last_name, username, email, password)
VALUES ('luis', 'cuevas', 'lcuevas89', 'luigi89@gmail.com', '12358'),
('alejandro', 'cuevas', 'acuevas92', 'ale92@gmail.com', '52478'); 

INSERT INTO Posts (user_id, post_text)
VALUES (1, 'Hello how are you?');

INSERT INTO Comments (post_id, user_id, comment_text)
VALUES (1, 3, 'Good thanks'), 
(1,3, 'And you?');

SELECT u.user_id, u.first_name, u.last_name, p.user_id, p.post_text, p.post_timestamp,c.user_id, c.comment_text, c.comment_timestamp
FROM Users u 
LEFT JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Comments c ON p.post_id = c.post_id;





