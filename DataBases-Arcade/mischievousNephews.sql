/*Please add ; after each select statement*/
CREATE PROCEDURE mischievousNephews()
BEGIN
    select WEEKDAY(mischief_date) as weekday, mischief_date, author, title
    from mischief
    ORDER BY WEEKDAY,FIELD(author, 'Huey','Dewey','Louie'),mischief_date, title;
END
