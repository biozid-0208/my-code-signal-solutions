CREATE PROCEDURE correctIPs()
BEGIN
    SELECT id, ip
    FROM ips
    where ip REGEXP "(\\d{2}\\.\\d+)$|(\\.\\d{2})$"
      and IS_IPV4(ip)
    order by id;
END
