# 🚖 Zuber SQL Case Study

## 📌 Project Overview
This case study explores taxi ride data in Chicago for a fictional ride-sharing company, **Zuber**.  
The goal was to uncover usage patterns across cab companies and evaluate how **weather conditions** affect ride duration — specifically rides between the Loop and O'Hare Airport.  

The project was completed as part of the **TripleTen Business Intelligence Program** to practice SQL querying, multi-table joins, and business analysis.

---

## 🧠 Business Questions

### Part 1: Exploratory Ride Analysis
1. How many rides did each taxi company complete on **Nov 15–16, 2017**?  
2. How many rides were completed by companies containing **“Yellow” or “Blue”** from **Nov 1–7, 2017**?  
3. In November 2017, how did **Flash Cab** and **Taxi Affiliation Services** compare to all other companies combined?  

### Part 2: Weather & Ride Duration Analysis
1. How does ride duration from **Loop to O'Hare** differ on **rainy Saturdays** vs. other days?  
2. How do we classify “Bad” vs. “Good” weather conditions?  
3. Can we detect a measurable impact of weather on ride time?  

---

## 🗂 Dataset & Schema
The dataset consists of four relational tables:  

- **trips** — ride details (timestamps, distance, duration, pickup & dropoff IDs)  
- **cabs** — cab company and vehicle info  
- **neighborhoods** — neighborhood IDs mapped to names (e.g., Loop, O’Hare)  
- **weather_records** — timestamped weather descriptions and temperatures  

![Schema Diagram](schema_diagram.png)

---

## 🧾 SQL Query Files

| Filename | Description |
|----------|-------------|
| `01_exploratory_company_rides.sql` | Company ride counts for different November timeframes |
| `02_weather_conditions_flag.sql`  | Creates a weather condition label (`Good` vs `Bad`) using `CASE` |
| `03_loop_to_ohare_rainy_saturdays.sql` | Analyzes Loop→O'Hare ride durations by weather and weekend filters |

All queries are written in **PostgreSQL-compatible SQL** and include comments explaining the logic.

---

## 💡 Key Insights
- **Company activity:** Ride volumes vary significantly across companies, with major players like *Flash Cab* dominating November 2017 trips.  
- **Color-branded companies:** “Yellow” and “Blue” companies completed a sizable portion of rides in early November.  
- **Flash Cab vs. Taxi Affiliation Services:** Together, these two companies accounted for a large share of rides compared to the “Other” category.  
- **Weather classification:** Records were flagged as *Good* (clear) or *Bad* (rain/storm), enabling weather-based comparisons.  
- **Weather impact on Loop→O’Hare trips:** Average ride durations were noticeably longer on rainy Saturdays compared to clear days, suggesting adverse conditions slow travel.  

*(Exact values omitted here for brevity — they can be explored directly in the SQL queries.)*

---

## 🛠 Tools & Techniques
- **PostgreSQL** for querying  
- Joins across multiple tables (`JOIN`)  
- Conditional logic with `CASE`  
- Date/time extraction with `EXTRACT`  
- Aggregations (`COUNT`, `AVG`) and filtering  

---
