CREATE PROCEDURE websiteHacking()
SELECT id,login,name
FROM users
WHERE type='user'
   or type = type
ORDER BY id
