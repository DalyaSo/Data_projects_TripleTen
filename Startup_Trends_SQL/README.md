# Startup Trends SQL Case Study

## 📌 Project Overview
This project explores startup funding, acquisitions, and employee data through SQL queries.  
It was completed as part of the **TripleTen Business Intelligence Program** and simulates working as a junior analyst at *VentureInsight*, a research firm serving venture capital clients.

The goal was to answer 10 business questions using PostgreSQL, focusing on company performance, funding patterns, acquisitions, and employee backgrounds.  

---

## 🗂 Dataset & Schema
The case study is based on a Crunchbase-style database that includes:

- **company** – startup details (funding, status, location, category)  
- **funding_round** – investment round data (amount, round type, dates)  
- **fund** – venture fund information  
- **acquisition** – company acquisition data  
- **people** – founders, employees, and investors  
- **education** – educational background of individuals  

![Database ERD](screenshots/schema.png) <!-- optional if you include schema image -->

---

## 🔍 Analysis Tasks
The case study consisted of 10 questions, each requiring SQL queries with aggregations, joins, and subqueries.  

1. **Startup Landscape:** Count how many companies have closed.  
2. **Sector Analysis (US News):** Funding totals for news-related companies in the USA.  
3. **Cash Acquisitions (2011–2013):** Total value of acquisitions paid in cash.  
4. **Influencer Discovery (Twitter “Silver”):** People with Twitter handles starting with "Silver".  
5. **Finance Influencers (Twitter “money” + last name “K”):** More targeted influencer search.  
6. **Geographic Funding:** Total capital raised by country.  
7. **Funding Round Volatility:** Identify days with large variation between smallest and largest funding rounds.  
8. **Fund Activity Classification:** Categorize venture funds into *high*, *middle*, and *low activity*.  
9. **Investment Strategy by Activity:** Compare average number of funding rounds per activity category.  
10. **Employee Education vs. Startup Success:** Compare average degrees per employee at failed vs. successful startups.  

See the full SQL solutions in [`queries.sql`](queries.sql).

---

## 💡 Key Insights
- Thousands of companies in the dataset ended up **closed**, providing context for startup risk.  
- **US news startups** show wide funding variation, with a few massively funded players.  
- **Cash acquisitions** peaked in the post-recession period (2011–2013).  
- Countries like **USA, China, UK, and India** dominate total venture capital raised.  
- Fund activity analysis highlights differences between broad-network investors and niche specialists.  
- Education analysis showed how the **average number of degrees per employee** differs between failed and surviving startups — sparking debate on whether education correlates with success.  

---

## 🛠 Tools & Techniques
- **PostgreSQL** for querying  
- Subqueries, `JOIN`s, `CASE` statements, aggregation functions  
- Data cleaning through query logic (handling NULLs, filtering booleans vs. integers)  

---

