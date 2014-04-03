

-- filter top sources

SELECT COUNT( events.a_client_ip ) AS source_count, INET_NTOA(events.a_client_ip) AS client_ip FROM date_range, events LIMIT 1


-- filter top target

SELECT COUNT( events.b_host ) AS host_count, events.b_host FROM date_range, events LIMIT 1


-- filter top paths

 SELECT COUNT( events.b_path ) AS b_path_count, b_path FROM date_range, events LIMIT 1
 
 
-- filter sensor info

SELECT `a_date`, `h_producer`, `h_producer_ruleset`, `h_server` FROM `events` WHERE `sensor_id` = :sensor_id  order by `a_date` desc limit 1

SELECT `sensors`.`sensor_id` as sensor_id, `sensors`.`name` as name, `sensors`.`IP` as IP, `sensors`.`description` as description, `sensors`.`type` as type, `sensors_type`.`description` as type_description, `sensors`.`status` as status FROM `sensors` JOIN `sensors_type` ON `sensors`.`type` = `sensors_type`.`type` ORDER BY name LIMIT 1



-- filter event dates range

SELECT min(`a_date`), max(`a_date`) FROM `events` LIMIT 1





-- filter webhost name

SELECT `host_id`, `hostname` FROM `events_hostname` ORDER BY `hostname` LIMIT 1


-- need more filters! yess.. we need more...i want more




--
-- extract table from cryptdefense db for development 
--

-- table: date_range, events, events_hostname, sensors 









