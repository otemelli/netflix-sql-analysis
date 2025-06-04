-- Tabel aanmaken voor Netflix-titels
CREATE TABLE netflix_titles (
    show_id VARCHAR(20) PRIMARY KEY,     -- Unieke ID voor elke titel
    type VARCHAR(20),                    -- Type van content: 'Movie' of 'TV Show'
    title VARCHAR(255),                  -- Naam van de titel
    director TEXT,                       -- Naam van de regisseur(s)
    cast TEXT,                           -- Hoofdrolspelers in de titel
    country TEXT,                        -- Land(en) van productie
    date_added DATE,                     -- Datum waarop de titel aan Netflix is toegevoegd
    release_year INT,                    -- Jaar waarin de titel oorspronkelijk is uitgebracht
    rating VARCHAR(20),                  -- Leeftijdsclassificatie (bijv. PG, R, TV-MA)
    duration VARCHAR(50),                -- Duur (bijv. '90 min' of '3 Seasons')
    listed_in TEXT,                      -- Genres of categorieën waartoe de titel behoort
    description TEXT                     -- Korte omschrijving van de titel
);
