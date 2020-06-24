/*Please add ; after each select statement*/
CREATE PROCEDURE soccerPlayers()
BEGIN
    select GROUP_CONCAT(first_name,' ', surname,' ','#',player_number order by player_number SEPARATOR '; ') players
    from soccer_team;
END
