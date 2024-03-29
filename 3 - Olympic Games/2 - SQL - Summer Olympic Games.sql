-- Mean Ages of Summer Olympic Games Athletes
-- ==========================================
-- 
-- A study of mean ages of Olympic athletes competing from 1896 to 2020.
--
-- Author: Mark Richards
-- Email: mark.thomas.richards@outlook.com

-- Note: This was developed using BigQuery which uses Google Standard SQL. In 
-- that dialect "Name" and "Year" are not reserved words and so are not bracketed
-- below. 


-- Cleaning
-- ========
-- 
-- We need to:
-- Drop rows with null values in the Age column.
-- When analysing medal winners, we need to filter out nulls in the Medal column.


-- Mean Age of Male and Female Competitors
-- =======================================
--
-- We need to:
-- Select unique combinations of Year, Name, Age and Sex.
-- Group by Year and Sex, and aggregate by mean.

SELECT
  Year, Sex, AVG(Age) AS MeanAge
FROM
  (
    SELECT DISTINCT
      Year, Name, Age, Sex,
    FROM
      Athletes_summer_games
    WHERE
      Age IS NOT NULL
  )
GROUP BY
  Year, Sex
ORDER BY
  Year;


-- Mean Age of Male and Female Medal Winners
-- =========================================
--
-- We need to repeat the above analysis but filtering out non-medal winners.

SELECT
  Year, Sex, AVG(Age) AS MeanAge
FROM
  (
    SELECT DISTINCT
      Year, Name, Age, Sex,
    FROM
      Athletes_summer_games
    WHERE
      Age IS NOT NULL AND Medal IS NOT NULL
  )
GROUP BY
  Year, Sex
ORDER BY
  Year;