CREATE DATABASE BlinkIT_DB


USE BlinkIT_DB


SELECT * FROM BlinkIT_Data;


SELECT DISTINCT(Item_Fat_Content) FROM BlinkIT_Data;


UPDATE BlinkIT_Data
SET Item_Fat_Content=
CASE
WHEN Item_Fat_Content IN ('LF','low fat') THEN 'Low Fat'
WHEN Item_Fat_Content IN ('reg') THEN 'Regular'
ELSE Item_Fat_Content
END


SELECT SUM(Total_Sales) AS Total_Sales
FROM BlinkIT_Data
 

SELECT CAST(SUM(Total_Sales)/1000000 AS DECIMAL(10,2))  AS Total_Sales_In_Million
FROM BlinkIT_Data


SELECT AVG(Total_Sales) AS Avg_Sales
FROM BlinkIT_Data


SELECT CAST(AVG(Total_Sales) AS DECIMAL(10,1)) Avg_Sales
FROM BlinkIT_Data


SELECT COUNT(*) AS No_of_Data FROM BlinkIT_Data
 

SELECT CAST(AVG(Rating) AS DECIMAL(10,1)) Avg_Rating FROM BlinkIT_Data
WHERE Item_Fat_Content = 'Low Fat'


SELECT Item_Fat_Content,CAST(SUM(Total_Sales)/1000000 AS DECIMAL(10,2))  AS Total_Sales_In_Million
FROM BlinkIT_Data
GROUP BY Item_Fat_Content


SELECT Item_Fat_Content,CAST(AVG(Total_Sales) AS DECIMAL(10,1)) Avg_Sales
FROM BlinkIT_Data
GROUP BY Item_Fat_Content


SELECT Item_Fat_Content,
CAST(SUM(Total_Sales) AS DECIMAL(10,2))  AS Total_Sales_by_Item_Fat_Content,
CAST(AVG(Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
CAST(AVG(Rating) AS DECIMAL(10,0)) AS Avg_Ratings
FROM BlinkIT_Data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales_by_Item_Fat_Content DESC;


SELECT Outlet_Location_Type,
CAST(SUM(Total_Sales) AS DECIMAL(10,2))  AS Total_Sales_by_Item_Fat_Content,
CAST(AVG(Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
CAST(AVG(Rating) AS DECIMAL(10,0)) AS Avg_Ratings
FROM BlinkIT_Data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales_by_Item_Fat_Content;



SELECT Outlet_Location_Type, 
       ISNULL([Low Fat], 0) AS Low_Fat, 
       ISNULL([Regular], 0) AS Regular
FROM 
(
    SELECT Outlet_Location_Type, Item_Fat_Content, 
           CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
    FROM blinkit_data
    GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT 
(
    SUM(Total_Sales) 
    FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type;




SELECT Outlet_Location_Type, 
       ISNULL([Low Fat], 0) AS Low_Fat, 
       ISNULL([Regular], 0) AS Regular
FROM 
(
    SELECT Outlet_Location_Type, Item_Fat_Content, 
           CAST(AVG(Total_Sales) AS DECIMAL(10,1)) AS avg_sales
    FROM blinkit_data
    GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT 
(
    AVG(avg_sales) 
    FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type;




SELECT Outlet_Establishment_Year,
CAST(SUM(Total_Sales) AS DECIMAL(10,2))  AS Total_Sales_by_Item_Fat_Content,
CAST(AVG(Total_Sales) AS DECIMAL(10,1)) AS Avg_Sales,
CAST(AVG(Rating) AS DECIMAL(10,1)) AS Avg_Ratings,
COUNT(*) AS no_of_items
FROM BlinkIT_Data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year 




SELECT 
    Outlet_Size, 
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST((SUM(Total_Sales) * 100.0 / SUM(SUM(Total_Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;



SELECT Outlet_Location_Type,
CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC


SELECT Outlet_Type, 
CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
		CAST(AVG(Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating,
		CAST(AVG(Item_Visibility) AS DECIMAL(10,2)) AS Item_Visibility
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC
