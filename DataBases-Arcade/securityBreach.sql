/*Please add ; after each select statement*/
CREATE PROCEDURE securityBreach()
BEGIN
    select first_name, second_name, attribute
    from users
    where attribute like binary CONCAT('_%', '\%',first_name, '_' ,second_name,'\%'  '%') ;
END
