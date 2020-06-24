/*Please add ; after each select statement*/
CREATE PROCEDURE travelDiary()
BEGIN
    select GROUP_CONCAT(distinct country order by country) countries
    from diary;
END
