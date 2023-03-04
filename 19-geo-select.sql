USE metro_cdmx;

-- Calcular distancias en metros con datos quemados

-- 43 Balderas y  125 Pinos Suárez
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) AS distance;

-- Calcular distancias en metros con consultas anidadas

SELECT
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `locations`
        WHERE `station_id` = (
            SELECT `stations`.`id`
            FROM `stations`
            WHERE name = "Balderas"
        )
    )
    ,
    (
        SELECT `locations`.`location`
        FROM `locations`
        WHERE `station_id` = (
            SELECT `stations`.`id`
            FROM `stations`
            WHERE name = "Pino Suarez"
        )
    )
) / 1000 AS distance;

-- Another place
SELECT
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `locations`
        WHERE `station_id` = (
            SELECT `stations`.`id`
            FROM `stations`
            WHERE name = "Cuitláhuac"
        )
    )
    ,
    (
        SELECT `locations`.`location`
        FROM `locations`
        WHERE `station_id` = (
            SELECT `stations`.`id`
            FROM `stations`
            WHERE name = "Merced"
        )
    )
) / 1000 AS "Distancia en Km";
