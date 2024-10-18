--  Create a table to hold the data (if not already created)
CREATE TABLE IF NOT EXISTS metal_bands (
    id INT PRIMARY KEY AUTO_INCREMENT,
    origin VARCHAR(255),
    nb_fans INT
)--  
-- Insert data from the metal_bands.sql dump (assumed to be done already)

--  Query to rank country origins bas
SELECT
    origin,
    SUM(nb_fans) AS total_fans
FROM
    metal_bands
GROUP BY
    origin
ORDER BY
    total_fans DESC;
