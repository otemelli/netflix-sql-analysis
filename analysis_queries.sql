-- 1. Number of titles by type (Movie vs TV Show)
SELECT type, COUNT(*) AS total
FROM netflix_titles
GROUP BY type;

-- 2. Top 10 countries with the most titles
SELECT country, COUNT(*) AS total
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 10;

-- 3. Most common genres
SELECT listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

-- 4. Number of titles per year
SELECT release_year, COUNT(*) AS total
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;

-- 5. Directors with the most titles
SELECT director, COUNT(*) AS total
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total DESC
LIMIT 10;

-- 6. Average duration of movies (in minutes)
SELECT ROUND(AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED))) AS avg_movie_duration
FROM netflix_titles
WHERE type = 'Movie' AND duration LIKE '%min%';

-- 7. Average number of seasons for TV shows
SELECT ROUND(AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED))) AS avg_seasons
FROM netflix_titles
WHERE type = 'TV Show';

-- 8. Number of titles added per year
SELECT YEAR(date_added) AS year_added, COUNT(*) AS total
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added;

-- 9. Distribution of ratings (age classification)
SELECT rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;

-- 10. Release years with the most titles
SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY total_titles DESC
LIMIT 10;


-- 11. Number of titles by country and type
SELECT country, type, COUNT(*) AS total
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country, type
ORDER BY total DESC;

-- 12. Most recent releases per genre
SELECT title, release_year, listed_in
FROM netflix_titles
WHERE release_year = (SELECT MAX(release_year) FROM netflix_titles)
ORDER BY listed_in;

-- 13. Percentage of Movies vs TV Shows per year
SELECT release_year,
       type,
       COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY release_year) AS percentage
FROM netflix_titles
GROUP BY release_year, type
ORDER BY release_year;

-- 14. Titles with the longest duration
SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
ORDER BY CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) DESC
LIMIT 10;

-- 15. Average age of titles (difference between release year and current year)
SELECT ROUND(AVG(YEAR(CURDATE()) - release_year)) AS avg_age
FROM netflix_titles;

-- 16. Number of titles by director and rating
SELECT director, rating, COUNT(*) AS total
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director, rating
ORDER BY total DESC
LIMIT 20;

-- 17. Common genre combinations
SELECT listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

-- 18. Titles with multiple countries of production
SELECT title, country
FROM netflix_titles
WHERE country LIKE '%,%';

-- 19. Trends in additions to Netflix per month
SELECT MONTH(date_added) AS month, COUNT(*) AS total
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY month
ORDER BY month;

-- 20. Number of titles without director or cast information
SELECT
  COUNT(*) AS total_missing_info
FROM netflix_titles
WHERE director IS NULL OR director = ''
   OR cast IS NULL OR cast = '';

