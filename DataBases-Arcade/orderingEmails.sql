/*Please add ; after each select statement*/
CREATE PROCEDURE orderingEmails()
BEGIN
    select id, email_title,
           case WHEN (FLOOR(size/POW(2,10)) <= FLOOR(size/POW(2,20))) THEN CONCAT(FLOOR(size/POW(2,10)), ' ', 'Kb')
                when FLOOR(size/POW(2,20)) > 0 then  CONCAT(FLOOR(size/POW(2,20)), ' ', 'Mb')
                else CONCAT(FLOOR(size/POW(2,10)), ' ', 'Kb') END short_size
    FROM emails
    order by size DESC;

END
