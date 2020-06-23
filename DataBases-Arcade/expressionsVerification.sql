/*Please add ; after each select statement*/
CREATE PROCEDURE expressionsVerification()
BEGIN
    select id, a , b, operation, c
    FROM expressions
    where if(operation = '+', a+b, null) = c
       or if(operation = '-', a-b, null) = c
       or if(operation = '*', a*b, null) = c
       or if(operation = '/', a/b, null) = c
    ;
END
