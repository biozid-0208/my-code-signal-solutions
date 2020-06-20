/*Please add ; after each select statement*/
CREATE PROCEDURE contestLeaderboard()
BEGIN
    select name
    FROM leaderboard
    order by score desc
    limit 5 OFFSET 3;
END
