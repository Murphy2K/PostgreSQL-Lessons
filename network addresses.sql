CREATE TABLE table_netaddr
    (
        id serial PRIMARY KEY,
        ip inet -- This is for IPv4 and IPv6 host and network addresses
    )
;


-- Insert some data
INSERT INTO
        table_netaddr ( ip )
    VALUES ( '4.35.221.243' ) ,
        ( '4.152.207.126' )   ,
        ( '4.152.207.238'    )  ,
        ( '4.249.111.162' )   ,
        ( '12.1.223.132' )    ,
        ( '12.8.192.60' );




-- Analize entries for /24 network ip addresses
-- SET_MASKLEN function
SELECT
        ip,
        set_masklen(ip,24) AS inet_24
    FROM table_netaddr;
	
	
	