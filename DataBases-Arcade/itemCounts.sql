/*Please add ; after each select statement*/
CREATE PROCEDURE itemCounts()
BEGIN
    SELECT item_name, item_type, count(item_name) item_count
    from availableItems
    group by item_name, item_type
    order by item_type,item_name;
END
