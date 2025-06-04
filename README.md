# Netflix SQL Analysis

This project analyzes a Netflix dataset using SQL queries to gain insights into titles available on the platform.
- [Netflix Movies and TV Shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)

---

## Project Contents

- `netflix_titles.csv` — the original dataset containing Netflix titles  
- `create_table.sql` — script to create the `netflix_titles` table in MySQL  
- `analysis_queries.sql` — 20 SQL queries with various analyses on the data

---

## Dataset Overview

The dataset includes the following columns:

| Column       | Description                                   |
|--------------|-----------------------------------------------|
| show_id      | Unique ID of the title                         |
| type         | Movie or TV Show                               |
| title        | Title name                                    |
| director     | Director                                      |
| cast         | Main cast                                     |
| country      | Country of production                          |
| date_added   | Date added to Netflix                          |
| release_year | Year of release                               |
| rating       | Age rating                                    |
| duration     | Duration (minutes or number of seasons)       |
| listed_in    | Genres                                        |
| description  | Short description                             |

---

## Analyses Included

1. Number of titles by type (Movie vs TV Show)  
2. Top 10 countries with the most titles  
3. Most common genres  
4. Number of titles per year  
5. Directors with the most titles  
6. Average duration of movies (in minutes)  
7. Average number of seasons for TV shows  
8. Number of titles added per year  
9. Distribution of ratings (age classification)  
10. Top actors with the most roles  
11. Number of titles by country and type  
12. Most recent releases per genre  
13. Percentage of Movies vs TV Shows per year  
14. Titles with the longest duration  
15. Average age of titles (difference between release year and current year)  
16. Number of titles by director and rating  
17. Common genre combinations  
18. Titles with multiple countries of production  
19. Trends in additions to Netflix per month  
20. Top 5 genres per year  
