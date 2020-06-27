/*Please add ; after each select statement*/
CREATE PROCEDURE booksCatalogs()
BEGIN
    select distinct SUBSTRING_INDEX(SUBSTRING(xml_doc, LOCATE('<author>', xml_doc)+8, LOCATE('</author>', xml_doc)), '<', 1 )author
    FROM catalogs
    order by author;
END


=========Best Solution==============
/*Please add ; after each select statement*/
CREATE PROCEDURE booksCatalogs()
BEGIN
    select extractvalue(xml_doc, '/descendant-or-self::author[1]') author
    from catalogs
    order by author;
END


======second Best Solution ================

    /*Please add ; after each select statement*/
CREATE PROCEDURE booksCatalogs()
BEGIN
	select distinct ExtractValue(xml_doc, 'catalog/book[1]/author') as author from catalogs order by author;
END
