/*Please add ; after each select statement*/
CREATE PROCEDURE projectsTeam()
BEGIN
    select distinct(name) from projectLog ORDER by name;
END
