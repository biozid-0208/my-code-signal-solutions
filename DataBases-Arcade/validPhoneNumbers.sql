CREATE PROCEDURE validPhoneNumbers()
BEGIN
    /* Write your SQL here. Terminate each statement with a semicolon. */
    select * from phone_numbers
    where phone_number rlike '^[(]?1[)-]?[0-9]{3}[-][0-9]{3}[-][0-9]{4}$'
    order by surname;
END
