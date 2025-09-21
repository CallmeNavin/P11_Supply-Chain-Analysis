# P11_Supply Chain Analysis

**VERSION 1: DESCRIPTIVE ANALYSIS**

**A. Project Overview**

- This project analyzes Company X supply chain's performance and identify operational risks with actionable improvement plans.

![Dashboard Visualization](https://github.com/CallmeNavin/P11_Supply-Chain-Analysis/blob/main/Version%201/Visualization/Dashboard.png)
_Explore more insights in the full Power BI dashboard_

**B. Dataset Information**

**Source**

- Supply Chain DataSet (from Kaggle)

https://www.kaggle.com/datasets/amirmotefaker/supply-chain-dataset/data

**C. Methodoly**

- SQLit: Validated data completeness
    + Column types: No anomaly → Pass
    + %Blank/null: 0% for all columns → Pass
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
- Number of Pieces Predictive to become the base for optimizing inventory.

_Explore more insights in the full Power BI dashboard_

**B. Dataset Information**

**Source**

- Since the original supply chain dataset did not contain time-series sales records, a new synthetic dataset with historical sales data was used to build and validate the forecasting model.
- Time Series Supply Chain Dataset (from Kaggle)

https://www.kaggle.com/datasets/philiphyde1/time-series-supply-chain-dataset/data?

**Period**

- Between 2020 to 2025

**C. Methodology**

- Define forecast variable: NumberOfPieces, aggregated weekly
- Data preprocessing:
  + Convert type of WorkDate to datetime
  + Resample by week (main), also by day and month for comparison
  + Group by Customer & Location
- Split dataset into Train (2020–2024) and Test (2025)
- Baseline Models: Naive Forecast, Holt-Winters
- Time-series Models: SARIMA, Prophet

**D. Key Findings & Actionable Plans**

**_Key Findings_**
- Naive Forecast:
  + Forecast for the next period equals the last observed value.
  + While simple to implement, it ignores both trend and seasonality.
→ Naive forecast serves only as a baseline reference, useful for comparison but not reliable for decision-making.
- Holt-Winters:
  + Captured both trend and yearly seasonality by applying level, trend, and seasonal smoothing components.
  + It improved accuracy compared to Naive but lagged behind advanced models when data showed strong fluctuations and irregularities.
→ Holt-Winters provides a reasonable improvement over Naive and can be used for short-term forecasting, but it is less precise for complex supply chain patterns.
- SARIMA Result:
  + The SARIMA model was tuned through grid search and identified the best parameters as SARIMA(1,1,1)(1,1,0,52).
  + The model achieved an AIC of ~3092 and a MAPE of ~14% on the 2025 test set, indicating a reasonably accurate forecast.
  + Diagnostic checks confirmed that residuals have no significant autocorrelation, though they deviate from perfect normality, which is common in real-world time series.
→ SARIMA provides robust predictive performance, making it suitable for operational planning. With a forecast error of ~14%, it can guide inventory and supply chain decisions with high reliability.
- Prophet Result:
  + The Prophet model was trained on the same weekly data and produced forecasts for 2025 with a MAPE of ~19%.
  + Prophet visualizations highlighted a clear upward trend across years and seasonality patterns: demand typically dips around mid-year (May–July) and peaks at year-end (November–December).
  + The forecast intervals (yhat_lower, yhat_upper) provide transparency into uncertainty, which is valuable for risk-aware planning.
→ Prophet is highly effective for communicating trends and seasonality to stakeholders. It complements SARIMA by making forecasts more explainable and visually intuitive, even if the precision is slightly lower.

**_Actionable Plans_**

- Adopt **SARIMA** as the primary forecasting engine for inventory planning.  
- Use **Prophet** mainly for communication and visualization, helping management easily understand long-term trends and seasonality.  
→ Both methods are consistent: SARIMA ensures accuracy for operations, while Prophet enhances stakeholder engagement and explainability.

_**About Me**_

Hi, I'm Navin (Bao Vy) – an aspiring Data Analyst passionate about turning raw data into actionable business insights.
I’m eager to contribute to data-driven decision making and help organizations translate analytics into business impact.
For more details, please reach out at:

🌐 LinkedIn: https://www.linkedin.com/in/navin826/

📂 Portfolio: https://github.com/CallmeNavin/
