/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterest()
BEGIN
    select  country,
            SUM(case when leisure_activity_type= 'Adventure park' then number_of_places else 0 end) adventure_park,
            SUM(case when leisure_activity_type= 'Golf' then number_of_places else 0 end) golf,
            SUM(case when leisure_activity_type= 'River cruise' then number_of_places else 0 end) river_cruise,
            SUM(case when leisure_activity_type= 'Kart racing' then number_of_places else 0 end) kart_racing
    FROM countryActivities
    GROUP by country
    order by country;
END
