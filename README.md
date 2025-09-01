# P11_Supply Chain Analysis

**VERSION 1: DESCRIPTIVE ANALYSIS**

**A. Project Overview**

- This project analyzes Company X supply chain's performance and identify operational risks with actionable improvement plans.

![Dashboard Visualization](https://github.com/CallmeNavin/P11_Supply-Chain-Analysis/blob/main/Version%201/Visualization/Overview.png)
_Explore more insights in the full Power BI dashboard_

**B. Dataset Information**

**Source**

- Supply Chain DataSet (from Kaggle)

https://www.kaggle.com/datasets/amirmotefaker/supply-chain-dataset/data

**C. Methodoly**

- SQLit: Validated data completeness
    + Column types: No anomaly → Pass
    + %Blank/null: 0% for all columns --> Pass
    + %Zero Value for numeric columns: 0-1% for all columns → Pass
    + Outlier for numeric columns: Min - Max within reasonable range
- Power BI: Built dashboards to analyze .

**D. Key Findings & Actionable Plans**

- Profit Margin = 90.8% (well above 70% target) → performance is excellent  
- Costs are stable within expected thresholds  
- Inspection Results: Fail 23%, Pending 41% → product quality inconsistent, QC process too slow  
- Availability = 48.4% (industry benchmark 80–90%) → stock readiness is low.

**_Actionable Plans_**

- Inspection Improvement:
  + Standardize SOPs & QC checkpoints  
  + Enhance employee training  
  + Root cause analysis for failures  
  + Supplier reassessment.
- Inventory Optimization:
  + Apply demand forecasting (Version 2 of this Project with time-series data)
  + Collaborate with suppliers to reduce lead times.

**E. Lesson Learned**

- Not every dataset contains errors or anomalies, sometimes the data is already clean and the KPIs look strong.
- In such cases, the analyst’s role is to validate completeness, confirm stability, and provide transparency rather than “fixing” issues.
- Business value is not only about finding problems but also about confirming that operations are running well.
- Enhancements (scenario analysis, predictive modeling) should be driven either by specific business questions from stakeholders or by the analyst’s own initiative to explore further (predictive analysis - would be build in the next versions)

**VERSION 2: PREDICTIVE ANALYSIS**

**A. Project Overview**

- Extended the project with a demand forecasting model to support the action plan from Version 1 (Inventory Optimization), using time series sales data to predict future demand and improve stock availability.


_Explore more insights in the full Power BI dashboard_

**B. Dataset Information**

**Source**

- Since the original supply chain dataset did not contain time-series sales records, a new synthetic dataset with historical sales data was used to build and validate the forecasting model.
- Time Series Supply Chain Dataset (from Kaggle)

https://www.kaggle.com/datasets/philiphyde1/time-series-supply-chain-dataset/data?

**Period**

- Between 2020 to 202

_**About Me**_

Hi, I'm Navin (Bao Vy) – an aspiring Data Analyst passionate about turning raw data into actionable business insights.
I’m eager to contribute to data-driven decision making and help organizations translate analytics into business impact.
For more details, please reach out at:

🌐 LinkedIn: https://www.linkedin.com/in/navin826/

📂 Portfolio: https://github.com/CallmeNavin/
