-- create-and-seed.sql
-- Design and seed a table for ONE of the following scenarios:
--
--   A. A restaurant menu
--      Suggested columns: name, cuisine, price, vegetarian, calories, available
--
--   B. A music library
--      Suggested columns: title, artist, genre, year, duration_seconds, streams
--
--   C. A gym class schedule
--      Suggested columns: class_name, instructor, day_of_week, capacity, enrolled, difficulty
--
--   D. A movie collection 
--      Suggested columns: title, director, genre, year, runtime_minutes, rating
--
--   E. A bookstore inventory
--      Suggested columns: title, author, genre, price, pages, in_stock
--
-- Requirements:
--   [ ] Creates a new database with an appropriate name
--   [ ] Connects to the database after creating it
--   [ ] Creates a new table with an appropriate name
--   [ ] The seed file can be executed multiple times without causing errors related to the database and/or table already existing
--   [ ] The table has a primary key column with unique, auto-generated, and sequential values
--   [ ] The table has at least 5 additional columns beyond the primary key
--   [ ] The table has at least 3 different data types used
--   [ ] The table has at least one `NOT NULL` constraint
--   [ ] The table has at least one `DEFAULT` value
--   [ ] The table has at least one `UNIQUE` constraint
--   [ ] The table has at least 8 rows of seed data inserted

-- ============================================================
-- Step 1: Create the database
-- ============================================================

DROP DATABASE IF EXISTS music_db;
CREATE DATABASE music_db;
\c music_db 

-- ============================================================
-- Step 2: Create the table
-- ============================================================
CREATE TABLE songs (
  song_id           SERIAL PRIMARY KEY,
  title             TEXT NOT NULL,
  artist            TEXT NOT NULL,
  genre             TEXT NOT NULL,
  release_year      INT NOT NULL,
  duration_seconds  INT NOT NULL,
  streams           INT DEFAULT 0,
  UNIQUE (title, artist)
);


-- ============================================================
-- Step 3: Insert seed data (at least 8 rows)
-- ============================================================
INSERT INTO songs (title, artist, genre, release_year, duration_seconds, streams) VALUES
  ('Trust', 'Brent Faiyaz', 'R&B', 2018, 180, 50000000),
  ('Clouded', 'Brent Faiyaz', 'R&B', 2020, 210, 70000000),
  ('Dead Man Walking', 'Brent Faiyaz', 'R&B', 2021, 240, 65000000),
  ('Dior', 'Pop Smoke', 'Drill', 2019, 210, 300000000),
  ('Mood Swings', 'Pop Smoke', 'Drill', 2020, 215, 450000000),
  ('What You Know Bout Love', 'Pop Smoke', 'Drill', 2020, 200, 350000000),
  ('Blinding Lights', 'The Weeknd', 'R&B', 2019, 200, 1200000000),
  ('Goosebumps', 'Travis Scott', 'Hip-Hop', 2016, 244, 850000000),
  ('Snooze', 'SZA', 'R&B', 2023, 202, 600000000),
  ('Lucid Dreams', 'Juice WRLD', 'Hip-Hop', 2018, 239, 950000000);