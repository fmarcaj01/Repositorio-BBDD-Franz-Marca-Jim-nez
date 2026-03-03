-- 1. Número total de películas que hay en la base de datos
SELECT COUNT(*) AS total_peliculas 
FROM film;

-- 2. Duración de la película más corta y de la más larga
SELECT MIN(length) AS duracion_minima, MAX(length) AS duracion_maxima 
FROM film;

-- 3. Coste de reemplazo medio de todas las películas
SELECT AVG(replacement_cost) AS coste_medio 
FROM film;
-- 4. Suma total de todos los pagos recibidos en la empresa
SELECT SUM(amount) AS total_recaudado 
FROM payment;
-- 5. Utiliza COUNT(original_language_id) y COUNT(*) en una misma consulta. Explica las diferencias.
SELECT COUNT(original_language_id), COUNT(*) 
FROM film;

-- Explicación 
-- COUNT(*): Cuenta todas las filas de la tabla, sin importar si tienen datos o no.
-- COUNT(original_language_id): Solo cuenta las filas donde esa columna no es NULL.
-- Por qué son diferentes: En la tabla film de Sakila, la columna original_language_id está vacía (es NULL) para casi todas las películas, mientras que la tabla tiene 1.000 filas en total.

-- 6. Valores distintos de rating (clasificación) existen en la tabla de películas
SELECT COUNT(DISTINCT rating) AS tipos_de_rating 
FROM film; 
-- 7. Duración media de las películas que tienen una clasificación de 'PG-13'
SELECT AVG(length) AS media_pg13 
FROM film 
WHERE rating = 'PG-13';
