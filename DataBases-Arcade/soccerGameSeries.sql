/*Please add ; after each select statement*/
CREATE PROCEDURE soccerGameSeries()
BEGIN
    select
        case
            when sum(if(first_team_score>second_team_score, 1, 0)) > sum(if(first_team_score < second_team_score, 1, 0)) then 1
            when sum(if(first_team_score>second_team_score, 1, 0)) < sum(if(first_team_score < second_team_score, 1, 0)) then 2
            when sum(first_team_score) > sum(second_team_score) then 1
            when sum(first_team_score) < sum(second_team_score) then 2
            when sum(if(match_host=2, first_team_score, 0)) > sum(if(match_host=1, second_team_score, 0)) then 1
            when sum(if(match_host=2, first_team_score, 0)) < sum(if(match_host=1, second_team_score, 0)) then 2
            else 0
            end winner
    FROM scores;
END
