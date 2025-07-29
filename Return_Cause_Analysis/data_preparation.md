# 🧹 Data Preparation – Return Cause Analysis

This document outlines the data cleaning, transformation, and merging steps used to prepare the dataset for Tableau analysis.

---

## 📁 Source Files

- `Orders` sheet — Contains order-level sales and shipping data
- `Returns` sheet — Contains a list of `Order ID`s that were returned
- Both sheets were extracted from the original `Superstore.xls` file

---

## 🔗 Join Strategy

### Objective:
To identify which orders were returned and calculate return-related metrics by product, customer, region, and time.

### Join Method:
- **Left Join**: `Orders` LEFT JOIN `Returns`  
  - Key field: `Order ID`
  - Purpose: Preserve all order records, even those not returned

---

## 🔧 Steps Taken (in Excel):

1. **Add a "Returned" Column** to the Orders sheet  
   - Used `XLOOKUP` to match `Order ID` from the Returns sheet  
   - Formula used:
     ```excel
     =XLOOKUP(A2, Returns!B:B, Returns!A:A, "No")
     ```
   - Replaced blank matches with `"No"` to indicate the order was not returned

2. **Create a Binary "Return Flag" Column**  
   - Formula:
     ```excel
     =IF(B2="Yes", 1, 0)
     ```
   - Used for numerical calculations in Tableau (e.g., return rate, total returns)

3. **Remove Irrelevant Columns**  
   - Dropped `Row ID` (Column A), which served no analytical purpose

4. **Final Save**  
   - Saved the cleaned and merged file as `Return_Cause_Analysis_Data.csv`

---

## 📌 Resulting Dataset Structure

| Column Name         | Description                               |
|---------------------|-------------------------------------------|
| Order ID            | Unique identifier for each order                           |
| Order Date          | Date the order was placed                                  |
| Ship Date           | Date the order was shipped                                 |
| Ship Mode           | Shipping method selected                                   |
| Customer ID         | Unique customer identifier                                 |
| Customer Name       | Name of the customer                                       |
| Segment             | Customer segment (e.g., Consumer, Corporate)               |
| Country/Region      | Country of purchase (typically "United States")            |
| City                | City where order was shipped                               |
| State               | State where order was shipped                              |
| Postal Code         | Zip/postal code                                            |
| Region              | Geographic region used for analysis                        |
| Product ID          | Unique identifier for each product                         |
| Category            | Top-level product category (e.g., Furniture, Technology)   |
| Sub-Category        | Product sub-category (e.g., Chairs, Phones)                |
| Product Name        | Full product name                                          |
| Sales               | Revenue from the sale                                      |
| Quantity            | Number of items sold                                       |
| Discount            | Discount applied                                           |
| Profit              | Profit generated from the sale                             |
| Returned            | "Yes" if returned, "No" if not (merged from Returns sheet) |
| Return Flag         | Binary flag: 1 = returned, 0 = not returned                |

---

## 💡 Notes

- The data was left in wide format for compatibility with Tableau
- No missing values were introduced during the merge
- Filters in Tableau are applied based on the merged output

---

*Prepared by: Dalya Sohl*  
*TripleTen Business Intelligence Program*
