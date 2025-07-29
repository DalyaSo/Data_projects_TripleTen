# 🛒 From Click to Churn: E-Commerce Funnel and Retention Study

## Overview
This project explores user behavior and retention trends through the lens of cohort analysis. Given raw user activity logs from an e-commerce platform, I cleaned and transformed the data in Excel to build a 3-stage conversion funnel and a 5-month customer retention matrix. The analysis reveals key bottlenecks in the purchasing journey and insights into customer churn.

## Objectives
1. Build a conversion funnel using raw website event logs
2. Segment customers into monthly acquisition cohorts
3. Calculate retention rates across a 5-month time span
4. Provide strategic recommendations to improve conversions and retention

---

## 📊 Key Results

### Funnel Conversion
- **Overall Purchase Conversion**: ~10% of users who view a product complete a purchase
- **Biggest Dropoff**: Only **36%** of users who added items to their cart went on to purchase  
  → *Improving cart UX and sending cart reminders could increase conversions.*

### Retention Insights
- **1-Month Retention**: Averages only **7%**, with steady decline in months 2–4
- **Possible Causes**:
  - Many purchases were one-off items (e.g., tech, appliances)
  - Short timeframe limits visibility into long-term repurchasing
- **Recommendations**:
  - Offer replenishment coupons and upsells (e.g. printer ink, accessories)
  - Launch referral codes to drive retention + new acquisition

---

## 🔧 Tools & Methods

### Tools Used
- **Excel (Google Sheets)**: Pivot tables, VLOOKUP, TEXT, DATEDIF functions, conditional formatting
- **Manual Data Preparation**: Event filtering, cohort group assignments, structured documentation

### Key Steps
- **Conversion Funnel**:
  - Counted unique users at each stage (View → Cart → Purchase)
  - Calculated both next-stage and total conversion percentages
- **Cohort Retention**:
  - Grouped users by first purchase month
  - Tracked returning purchasers month-by-month
  - Retention = returning users / initial cohort size

---

## 📂 Project Files

| File | Description |
|------|-------------|
| [`Raw_user_activity.csv`](./Raw_user_activity.csv) | Raw user log data with events |
| [`Cleaned_data_cohort analysis.csv`](./Cleaned_data_cohort%20analysis.csv) | Prepared data used for cohort retention |
| [`Executive_Summary_Final.pdf`](./Executive_Summary_Final.pdf) | Business-style writeup of results and recommendations |
| [`Cohort_Analysis_Conversion_Funnel.jpg`](./Cohort_Analysis_Conversion_Funnel.jpg) | Screenshot of 3-stage funnel |
| [`Cohort_Analysis-cohort_analysis_sheet.jpg`](./Cohort_Analysis-cohort_analysis_sheet.jpg) | Cohort user counts over time |
| [`Cohort_Analysis-retention_rates.jpg`](./Cohort_Analysis-retention_rates.jpg) | Final retention matrix visual |
| [`Cohort_Analysis- first_purchase_pivot.pdf`](./Cohort_Analysis-%20first_purchase_pivot.pdf) | Pivot used to calculate first purchase per user |

---

## ✏️ Highlights & Learnings
- Reinforced core spreadsheet skills like pivot tables, date formatting, and lookups

