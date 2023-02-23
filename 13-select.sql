use metro_cdmx;

-- Selecting all
SELECT * FROM `lines`;

-- Filter by columns
SELECT id, color FROM `lines`;

-- Math operation with math
SELECT (2+2) AS Result;

-- AVG 
SELECT AVG(year) AS year_avg from `trains`;

-- Joins tables
SELECT
`lines`.`name`,
`trains`.`serial_number`
FROM `lines`
INNER JOIN `trains`
WHERE `lines`.`id` = `trains`.`line_id`;