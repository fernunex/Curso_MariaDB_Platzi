USE metro_cdmx;

-- Creacion de la tabla line_stations

CREATE TABLE `lines_stations` (

    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,

    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `station_id` BIGINT(20) UNSIGNED NOT NULL,

    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
                ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),

    CONSTRAINT `line_stations_line_id_foreing`
    FOREIGN KEY (line_id) REFERENCES `lines` (`id`),

    CONSTRAINT `line_stations_station_id_foreing`
    FOREIGN KEY (station_id) REFERENCES `stations` (`id`)

)
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_unicode_ci;