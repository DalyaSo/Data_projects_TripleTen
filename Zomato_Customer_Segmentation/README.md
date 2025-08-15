# 🍽️ Zomato Customer Segmentation & Behavior Analysis | Tableau

## Overview
This project explores customer purchasing behavior and segmentation for Zomato, a multinational restaurant aggregator and food delivery service. Using RFM analysis and spend-based tiering, I developed a Tableau dashboard to uncover patterns in customer value, frequency, and recency. The goal is to support Zomato’s marketing and product teams in identifying high-value customer segments and personalizing outreach.

## Objectives
- Identify distinct customer segments using RFM (Recency, Frequency, Monetary) analysis
- Categorize customers into spending tiers and behavior-based cohorts
- Analyze how customer value varies across demographics and engagement patterns
- Visualize key findings through an interactive Tableau dashboard
- Provide actionable recommendations to improve retention and target high-value customers

*Customers were segmented using a combination of RFM scoring and behavior-based bins (recency buckets, frequency groups, age groups, and spend levels).

## Tools & Techniques
- **Tableau**: Dashboards, calculated fields, filters, heatmaps, customer cohorts
- **Excel**: Data cleaning, joining Users + Orders, derived spend buckets
- **Segmentation**:
  - RFM scoring: Recency, Frequency, and Monetary metrics
  - Customer Tier assignment: Low, Medium, High, VIP
  - Categorical breakdowns by Gender, Age, and Occupation

### Key Calculated Fields:
- `Recency`, `Frequency`, `Monetary`: Core RFM metrics calculated from user behavior
- `Recency Score`, `Frequency Score`, `Monetary Score`: Normalized scores (1–5) assigned to each customer based on their RFM values
- `RFM Segment Code`: Concatenated RFM score string used to identify customer segment (e.g., "455")
- `Bucket Recency`: Groups customers by recency intervals (e.g., 0–30 days, 31–60, etc.)
- `Order Frequency Bin`: Categorizes customers by number of orders placed
- `Clean Currency`: Standardized currency format for monetary values
- `Age (bin)`: Bucketed customer age groups
- `RFM_Occupation`: Blend of RFM score and occupation used for exploratory analysis

## Key Insights

### 🧩 Customer Segmentation
- **Majority of users** fall into low-to-mid RFM segments (e.g., 122, 123, 133), reflecting lower spending and less frequent ordering
- **High-value RFM segments** like 135, 144, and 145 are rare but critical — they contribute disproportionately to revenue
- **Opportunity segments** (e.g., 143, 134) show strong recency/frequency but moderate spend — ideal for upselling

### 📈 Customer Behavior
- **Most users place 20–30 orders**, but a small long-tail of loyal customers drives substantial revenue
- **Sales peaked in early 2018**, with no consistent seasonal trends after that
- **Weekday engagement is highest on Fridays and Mondays**, suggesting potential for weekday-based promotions

### 👥 Demographic Trends
- **Young adults (ages 20–28)** make up the core audience, with students driving the highest sales volume
- **Single users place more orders** than other marital groups
- **Male users spend more overall**, despite both genders being active



## 📊 Dashboard
🔗 [**View the Full Tableau Dashboard**](https://public.tableau.com/views/Final_Project_17551981797320/Dashboard2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
The dashboard includes:
- RFM scoring distribution
- Customer count by tier and spend bucket
- Gender, Age, and Occupation breakdowns
- Behavioral trends filtered by tier or demographic

> *Note: If the dashboard is slow to load, try clicking “Full View” or refreshing Tableau Public.*

## 📸 Dashboard Screenshots

- 📄 [Full Dashboard View](./Zomato_Project_Dashboard.pdf)  
  Overview of customer segmentation, demographic filters, and RFM breakdown

- 📄 [Weekday Sales View](./Zomato_Dashboard_Weekday_Sales_Screenshot.pdf)  
  Supplemental insight showing weekday sales distribution (left off main dashboard)


## Strategic Recommendations
- Launch loyalty programs for **High-Frequency, Mid-Tier customers**
- Offer re-engagement campaigns for **low-recency, low-spend segments**
- Target **VIP customers** with exclusive experiences or upsells
- Tailor marketing by **Occupation** and **Age group** to increase conversions

## 📂 Project Files
- 📄 `zomato_joined_data.csv` — Final cleaned & joined dataset (Users + Orders)
- 📊 [Dashboard on Tableau Public](https://public.tableau.com/app/profile/dalya.s/viz/ZomatoCustomerSegmentationDashboard/Dashboard2#1)
- 📑 [Zomato_Project_Slide_Presentation.pdf](./Zomato_Project_Slide_Presentation.pdf) — Final slide deck summarizing insights and recommendations
- 📄 [Zomato_Project_Dashboard.pdf](./Zomato_Project_Dashboard.pdf) — Full dashboard screenshot
- 📄 [Zomato_Dashboard_Weekday_Sales_Screenshot.pdf](./Zomato_Dashboard_Weekday_Sales_Screenshot.pdf) — Additional dashboard sheet
- 🧾 `README.md` — This summary file

## Connect With Me
- 📄 [Resume](https://docs.google.com/document/d/1__BjBZNdEdzZwglkZYnPurL69lSgW1B4-WJvTYCPRB4/edit?usp=sharing)
- 💼 [LinkedIn](https://www.linkedin.com/in/dalyasohl)
- 📊 [Tableau Portfolio](https://public.tableau.com/app/profile/dalya.s/vizzes)
- 📚 [Kaggle Profile](https://www.kaggle.com/dalyas)

---
