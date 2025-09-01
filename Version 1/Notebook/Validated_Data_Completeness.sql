-- I. Check Completeness
-- 1. Check type for each column
Pragma table_info(supply_chain_data);
-- 2. Check %blank/null
Select
	Count (*) as total_records
	,Sum(Case When [Product type] is Null or [Product type] = '' Then 1 Else 0 End)*100/Count(*) As pct_null_product_type
	,Sum(Case When SKU is Null or SKU = '' Then 1 Else 0 End)*100/Count(*) As pct_null_sku
	,Sum(Case When Price is Null or Price = '' Then 1 Else 0 End)*100/Count(*) As pct_price
	,Sum(Case When Availability is Null or Availability = '' Then 1 Else 0 End)*100/Count(*) As pct_availability
	,Sum(Case When [Number of products sold] is Null or [Number of products sold] = '' Then 1 Else 0 End)*100/Count(*) As pct_number_of_products_sold
	,Sum(Case When [Revenue generated] is Null or [Revenue generated] = '' Then 1 Else 0 End)*100/Count(*) As pct_revenue_generated
	,Sum(Case When [Customer demographics] is Null or [Customer demographics] = '' Then 1 Else 0 End)*100/Count(*) As pct_customer_demographics
	,Sum(Case When [Stock levels] is Null or [Stock levels] = '' Then 1 Else 0 End)*100/Count(*) As pct_stock_levels
	,Sum(Case When [Lead times] is Null or [Lead times] = '' Then 1 Else 0 End)*100/Count(*) As pct_lead_times
	,Sum(Case When [Order quantities] is Null or [Order quantities] = '' Then 1 Else 0 End)*100/Count(*) As pct_order_quantities
	,Sum(Case When [Shipping times] is Null or [Shipping times] = '' Then 1 Else 0 End)*100/Count(*) As pct_shipping_times
	,Sum(Case When [Shipping carriers] is Null or [Shipping carriers] = '' Then 1 Else 0 End)*100/Count(*) As pct_shipping_carriers
	,Sum(Case When [Shipping costs] is Null or [Shipping costs] = '' Then 1 Else 0 End)*100/Count(*) As pct_shipping_costs
	,Sum(Case When [Supplier name] is Null or [Supplier name] = '' Then 1 Else 0 End)*100/Count(*) As pct_supplier_name
	,Sum(Case When [Location] is Null or [Location] = '' Then 1 Else 0 End)*100/Count(*) As pct_location
	,Sum(Case When [Lead time] is Null or [Lead time] = '' Then 1 Else 0 End)*100/Count(*) As pct_lead_time
	,Sum(Case When [Production volumes] is Null or [Production volumes] = '' Then 1 Else 0 End)*100/Count(*) As pct_production_volumes
	,Sum(Case When [Manufacturing lead time] is Null or [Manufacturing lead time] = '' Then 1 Else 0 End)*100/Count(*) As pct_manufacturing_lead_time
	,Sum(Case When [Manufacturing costs] is Null or [Manufacturing costs] = '' Then 1 Else 0 End)*100/Count(*) As pct_manufacturing_costs
	,Sum(Case When [Inspection results] is Null or [Inspection results] = '' Then 1 Else 0 End)*100/Count(*) As pct_inspection_results
	,Sum(Case When [Defect rates] is Null or [Defect rates] = '' Then 1 Else 0 End)*100/Count(*) As pct_defect_rates
	,Sum(Case When [Transportation modes] is Null or [Transportation modes] = '' Then 1 Else 0 End)*100/Count(*) As pct_transportation_modes
	,Sum(Case When [Routes] is Null or [Routes] = '' Then 1 Else 0 End)*100/Count(*) As pct_routes
	,Sum(Case When [Costs] is Null or [Costs] = '' Then 1 Else 0 End)*100/Count(*) As pct_costs
from supply_chain_data;

-- 3. Check %Zero Values for Numeric Columns
Select
	Count(*) as total_records
	,Sum(Case When Price = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_price
	,Sum(Case When Availability = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_availability
	,Sum(Case When [Number of products sold] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_number_of_products_sold
	,Sum(Case When [Revenue generated] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_revenue_generated
	,Sum(Case When [Stock levels] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_stock_levels
	,Sum(Case When [Lead times] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_lead_times
	,Sum(Case When [Order quantities] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_order_quantities
	,Sum(Case When [Shipping times] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_shipping_times
	,Sum(Case When [Shipping costs] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_shipping_costs
	,Sum(Case When [Lead time] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_lead_time
	,Sum(Case When [Production volumes] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_production_volumes
	,Sum(Case When [Manufacturing lead time] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_manufacturing_lead_time
	,Sum(Case When [Manufacturing costs] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_manufacturing_costs
	,Sum(Case When [Defect rates] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_defect_rates
	,Sum(Case When [Costs] = 0 Then 1 Else 0 End)*100/Count(*) As pct_zero_costs
from supply_chain_data;
-- 4. Check Outliers for Numeric Columns
Select
	Min(Price) as min_price
	,Max(Price) as max_price
	,Min(Availability) as min_availability
	,Max(Availability) as max_availability
	,Min([Number of products sold]) as min_number_of_products_sold
	,Max([Number of products sold]) as max_number_of_products_sold
	,Min([Revenue generated]) as min_revenue_generated
	,Max([Revenue generated]) as max_revenue_generated
	,Min([Stock levels]) as min_stock_levels
	,Max([Stock levels]) as max_stock_levels
	,Min([Lead times]) as min_lead_times
	,Max([Lead times]) as max_lead_times
	,Min([Order quantities]) as min_order_quantities
	,Max([Order quantities]) as max_order_quantities
	,Min([Shipping times]) as min_shipping_times
	,Max([Shipping times]) as max_shipping_times
	,Min([Shipping costs]) as min_shipping_costs
	,Max([Shipping costs]) as max_shipping_costs
	,Min([Lead time]) as min_lead_time
	,Max([Lead time]) as max_lead_time
	,Min([Production volumes]) as min_production_volumes
	,Max([Production volumes]) as max_production_volumes
	,Min([Manufacturing lead time]) as min_manufacturing_lead_time
	,Max([Manufacturing lead time]) as max_manufacturing_lead_time
	,Min([Manufacturing costs]) as min_manufacturing_costs
	,Max([Manufacturing costs]) as max_manufacturing_costs
	,Min([Defect rates]) as min_defect_rates
	,Max([Defect rates]) as max_defect_rates
	,Min([Costs]) as min_costs
	,Max([Costs]) as max_costs
from supply_chain_data