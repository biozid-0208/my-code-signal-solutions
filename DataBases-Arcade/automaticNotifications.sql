CREATE PROCEDURE automaticNotifications()
SELECT email
FROM users
WHERE role not IN ("admin", "premium")
ORDER BY email;
