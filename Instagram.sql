USE ig_clone;
#'A'  '1'
select id from users;
SELECT id, username, created_at
FROM users
ORDER BY created_at asc
LIMIT 5;
#'2'
select * from photos;
SELECT u.id, username
FROM users as u
LEFT JOIN photos On u.id = photos.user_id
WHERE photos.user_id IS NULL;
select  id, user_id, created_dat
from photos
where created_dat is null;
#'3'
select * from likes;
#'4'
select * from photo_tags;
select * from comments;
#'B'
#'1'
select COUNT(*) AS Total_Photos, COUNT(DISTINCT user_id) AS Total_Users,
       COUNT(*) / COUNT(DISTINCT user_id) AS Avg_Photos_Per_User
FROM photos;
select * from photos;
select count(*) as Photos from photos;
#avg number of posts per user
#nahu krna ye
SELECT
    user_id,
    COUNT(*) AS total_posts,
    COUNT(*) / COUNT(DISTINCT user_id) AS average_posts_per_user
FROM
    photos
GROUP BY
    user_id;
#"B'
#'2'
SELECT user_id
FROM likes
GROUP BY user_id
HAVING COUNT(DISTINCT photo_id) = (SELECT COUNT(*) FROM photos);
#'3'
#userid, username,image_url,likes
select * from likes;
select * from photos;
select * from users;
SELECT u.id, u.username, p.image_url, COUNT(*) as likes
FROM users AS u
INNER JOIN photos AS p ON p.user_id = u.id
INNER JOIN likes AS l ON p.id = l.photo_id
GROUP BY u.id, u.username, p.image_url
ORDER BY likes DESC
LIMIT 1;  
#'4'
select * from tags;
select * from photo_tags;
SELECT t.tag_name, COUNT(*) as total
FROM tags as t
INNER JOIN photo_tags as p
ON t.id = p.tag_id
GROUP BY t.tag_name
ORDER BY total DESC
LIMIT 5;
#'5'
SELECT
    DAYNAME(created_at) AS wday,
    COUNT(*) AS registration_count
FROM
    users
GROUP BY
    wday
ORDER BY
    registration_count DESC
LIMIT 2;
select * from users;








