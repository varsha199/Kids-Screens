SELECT * FROM child;
SELECT * FROM impact;
SELECT * FROM health_status_impact ORDER BY impact_ID desc;

-- query to fetch child_id, age and gender where age is 14 and gender is male
SELECT child_ID, age, gender FROM kids_screentime.child 
WHERE age = 14 AND gender = 'Male';

-- Fetching the columns of child table and calculation the education and recreational screen time from the 'Educational_to_Recreational_Ratio' column
SELECT Child_ID,age,gender,Urban_or_Rural,primary_device,Avg_Daily_Screen_Time_hr, Educational_to_Recreational_Ratio,
  -- Calculated educational screen time
  ROUND(Avg_Daily_Screen_Time_hr * (Educational_to_Recreational_Ratio / (Educational_to_Recreational_Ratio + 1)),2) AS Educational_Screen_Time_hr,
  -- Calculated recreational screen time
  ROUND(Avg_Daily_Screen_Time_hr * (1 / (Educational_to_Recreational_Ratio + 1)),2) AS Recreational_Screen_Time_hr
FROM Child;

-- Fetching the age, primary_device by using 'Having' clause and filtering by device as 'Smartphone'
SELECT age, primary_device, 
 ROUND(AVG(Avg_Daily_Screen_Time_hr * (Educational_to_Recreational_Ratio / (Educational_to_Recreational_Ratio + 1))),2) AS Educational_Screen_Time_hr ,
 ROUND(AVG(Avg_Daily_Screen_Time_hr * (1 / (Educational_to_Recreational_Ratio + 1))),2) AS Recreational_Screen_Time_hr
 FROM child 
 WHERE Avg_Daily_Screen_Time_hr > 5
 GROUP BY age, primary_device 
 HAVING Recreational_Screen_Time_hr > 4 
 

 