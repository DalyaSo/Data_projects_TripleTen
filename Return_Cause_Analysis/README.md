# 📦 Return Cause Analysis | Tableau Dashboard

## Overview
This business intelligence project investigates the root causes of product returns at a fictional Superstore. Using Tableau, I built a dynamic dashboard and visual story that explores return trends across product categories, customer behavior, geographic locations, and seasonal patterns. The analysis is designed to help executives identify actionable strategies to reduce return volume and improve profitability.

## Objectives
- Identify which products, categories, or regions have the highest return rates
- Analyze customer return behavior, focusing on repeat returners
- Examine seasonal and regional trends in returns
- Recommend strategic actions to reduce unnecessary returns

## Tools & Techniques
- **Tableau**: Interactive dashboards, story points, filters, calculated fields
- **Excel**: Data cleaning, merging Orders and Returns tables, calculated return flags
- **Data Modeling**: Left join of Orders + Returns on `Order ID`, added binary return indicator

## 🧹 Data Preparation

For a detailed breakdown of how the dataset was cleaned, joined, and transformed, see the full [Data Preparation Guide](./data_preparation.md).


### Key Calculated Fields:
- `Return Flag`: `IF ISNULL([Returned]) THEN 0 ELSE 1 END`
- `Return Rate`: `AVG([Return Flag])`
- `Total Returns`: `SUM([Return Flag])`
- Filtered view of **repeat customers only** for deeper insight

## Key Insights
- **Product Categories**: Technology and Office Supplies showed the highest return rates relative to sales.
- **Sub-Category Trends**: Certain high-volume sub-categories such as Binders and Paper had disproportionate return behavior.
- **Customer Behavior**: A small subset of repeat customers accounted for a significant share of returns.
- **Geographic Patterns**: Return rates were notably higher in specific states and regions - with the West having an alarming amount of returns.
- **Seasonality**: Monthly analysis revealed spikes in returns following major shopping periods.

## Visuals
📊 [**View Full Tableau Dashboard & Story**](https://public.tableau.com/app/profile/dalya.s/viz/ReturnCauseAnalysisStory/ReturnStory)
> **Note:** Tableau workbook not available for download due to Tableau Public restrictions. Screenshots and live dashboard are provided for reference.

## 📸 Dashboard Preview

### 🧩 Product, Geographic & Customer Insights
![Dashboard Overview](./Product%2C%20Geographic%2C%20Customer%20Insights%20.jpg)

### 🔍 Multi-Factor Return Rate Drivers
![Multi-Factor View](./Multi-Factor%20Return%20Rate%20Drivers.jpg)

### 📚 Return Story (Presentation Mode)
![Return Story](./Return%20Story.jpg)


The interactive dashboard includes:
- Bar chart of return rate by category
- Scatterplot showing correlation between sales and returns
- Map visualizing regional return rates
- Line chart of monthly return trends
- Composite visualizations layering category, region, and time
- Filters for dynamic exploration by category, sub-category, region, and year

## Strategic Recommendations
- Reevaluate product quality or marketing for high-return sub-categories
- Flag frequent returners for personalized support or policy review
- Investigate supplier or fulfillment issues in high-return regions
- Adjust return window policies around peak return months
- Continue monitoring return behavior via the dashboard

## 📂 Project Files
- 📄 `Return_Cause_Analysis_Data.csv` — Cleaned dataset (Orders + Returns merged)
- 🖼️ `/screenshots/` — Dashboard screenshots
- 🧾 `README.md` — This summary file

## Connect With Me
- 📄 [Resume](https://docs.google.com/document/d/1__BjBZNdEdzZwglkZYnPurL69lSgW1B4-WJvTYCPRB4/edit?usp=sharing)
- 💼 [LinkedIn](https://www.linkedin.com/in/dalyasohl)
- 📊 [Tableau Portfolio](https://public.tableau.com/app/profile/dalya.s/vizzes)
- 📚 [Kaggle Profile](https://www.kaggle.com/dalyas)

---
