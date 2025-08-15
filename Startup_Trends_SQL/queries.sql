-- Startup Trends SQL Case Study — Queries
-- Dialect: PostgreSQL

/*------------------------------------------------------------
1) Startup Landscape Analysis
   Count how many companies have closed.
------------------------------------------------------------*/
SELECT COUNT(*) AS closed_companies
FROM company
WHERE status = 'closed';


/*------------------------------------------------------------
2) Sector Analysis for US Investors (News)
   Show US news-related companies and how much they raised.
   Sorted by funding_total (desc).
------------------------------------------------------------*/
SELECT name,
       funding_total
FROM company
WHERE category_code = 'news'
  AND country_code  = 'USA'
ORDER BY funding_total DESC;


/*------------------------------------------------------------
3) Analyzing Cash Acquisitions (2011–2013)
   Sum of price_amount for cash deals during 2011–2013 (inclusive).
------------------------------------------------------------*/
SELECT SUM(price_amount) AS total_cash
FROM acquisition
WHERE term_code = 'cash'
  AND EXTRACT(YEAR FROM acquired_at) BETWEEN 2011 AND 2013;


/*------------------------------------------------------------
4) Identifying Industry Influencers
   People whose Twitter handle starts with 'Silver'.
------------------------------------------------------------*/
SELECT first_name,
       last_name,
       twitter_username
FROM people
WHERE twitter_username LIKE 'Silver%';


/*------------------------------------------------------------
5) Finding Finance Influencers
   People with 'money' in their Twitter handle and last name starts with 'K'.
------------------------------------------------------------*/
SELECT *
FROM people
WHERE twitter_username LIKE '%money%'
  AND last_name       LIKE 'K%';


/*------------------------------------------------------------
6) Geographic Investment Analysis
   Total amount raised by companies per country, desc by total.
------------------------------------------------------------*/
SELECT country_code,
       SUM(funding_total) AS total_raised
FROM company
GROUP BY country_code
ORDER BY total_raised DESC;


/*------------------------------------------------------------
7) Funding Round Volatility Analysis
   For each date, show highest & lowest raised_amount.
   Keep only rows where MIN > 0 and MIN <> MAX.
------------------------------------------------------------*/
SELECT funded_at,
       MAX(raised_amount) AS highest_amount,
       MIN(raised_amount) AS lowest_amount
FROM funding_round
GROUP BY funded_at
HAVING MIN(raised_amount) > 0
   AND MAX(raised_amount) <> MIN(raised_amount);


/*------------------------------------------------------------
8) Fund Activity Classification
   Add activity tier for funds based on invested_companies.
------------------------------------------------------------*/
SELECT id,
       name,
       founded_at,
       domain,
       twitter_username,
       country_code,
       investment_rounds,
       invested_companies,
       milestones,
       created_at,
       updated_at,
       CASE
         WHEN invested_companies >= 100 THEN 'high_activity'
         WHEN invested_companies BETWEEN 20 AND 99 THEN 'middle_activity'
         ELSE 'low_activity'
       END AS investment_activity
FROM fund;


/*------------------------------------------------------------
9) Investment Strategy by Fund Activity
   For each activity tier, average number of funding rounds participated in.
   Rounded to whole number; sort ascending by the average.
------------------------------------------------------------*/
SELECT
  CASE
    WHEN invested_companies >= 100 THEN 'high_activity'
    WHEN invested_companies BETWEEN 20 AND 99 THEN 'middle_activity'
    ELSE 'low_activity'
  END AS investment_activity,
  ROUND(AVG(investment_rounds), 0) AS avg_investment_rounds
FROM fund
GROUP BY investment_activity
ORDER BY avg_investment_rounds ASC;


/*------------------------------------------------------------
10) Employee Education Impact on Startup Success
    Average number of degrees per employee for companies that:
    - are closed, AND
    - had exactly one funding round (first AND last).
------------------------------------------------------------*/
SELECT AVG(t.total_degree_type) AS avg_degrees_per_employee
FROM (
  SELECT p.id,
         COUNT(e.degree_type) AS total_degree_type
  FROM people AS p
  JOIN education AS e
    ON p.id = e.person_id
  WHERE p.company_id IN (
    SELECT id
    FROM company
    WHERE id IN (
      SELECT company_id
      FROM funding_round
      WHERE is_first_round = 1
        AND is_last_round  = 1
    )
      AND status = 'closed'
  )
  GROUP BY p.id
) AS t;
