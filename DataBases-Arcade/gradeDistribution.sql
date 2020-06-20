/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
    select Name, ID FROM Grades
    where ((Midterm1*25)/100 + (Midterm2*25)/100 + (Final*50)/100) < Final or
            ((Midterm1*50)/100 + (Midterm2*50)/100 ) < Final
    order by left(name, 3), id;
END
