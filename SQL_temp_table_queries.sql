-- Created a temporary table for analysis
DROP TABLE IF EXISTS ScreenTime_Analysis;
CREATE TABLE ScreenTime_Analysis AS
SELECT Child_ID, age, gender, Urban_or_Rural,Avg_Daily_Screen_Time_hr, Educational_to_Recreational_Ratio, primary_device, exceeded_recommended_limit,
  
  -- Calculated educational screen time
  ROUND(Avg_Daily_Screen_Time_hr * (Educational_to_Recreational_Ratio), 2) AS Educational_Screen_Time_hr,
  
  -- Calculated recreational screen time
  ROUND(Avg_Daily_Screen_Time_hr * (1 - Educational_to_Recreational_Ratio), 2) AS Recreational_Screen_Time_hr
FROM Child;

-- Average educational vs recreational time by Age group
SELECT age, 
  ROUND(AVG(Educational_Screen_Time_hr), 2) AS avg_educational_time,
  ROUND(AVG(Recreational_Screen_Time_hr), 2) AS avg_recreational_time
FROM ScreenTime_Analysis
GROUP BY age
ORDER BY age;

-- Urban vs Rural – Average Educational vs Recreational Time
SELECT Urban_or_Rural,
  ROUND(AVG(Educational_Screen_Time_hr), 2) AS avg_educational_time,
  ROUND(AVG(Recreational_Screen_Time_hr), 2) AS avg_recreational_time
FROM ScreenTime_Analysis
GROUP BY Urban_or_Rural;

-- Device Type and Screen Usage Breakdown
SELECT primary_device,
  ROUND(AVG(Educational_Screen_Time_hr), 2) AS avg_educational_time,
  ROUND(AVG(Recreational_Screen_Time_hr), 2) AS avg_recreational_time
FROM ScreenTime_Analysis
GROUP BY primary_device
ORDER BY avg_recreational_time DESC;

-- Gender-Based Screen Time Analysis
SELECT gender,
  ROUND(AVG(Educational_Screen_Time_hr), 2) AS avg_educational_time,
  ROUND(AVG(Recreational_Screen_Time_hr), 2) AS avg_recreational_time
FROM ScreenTime_Analysis
GROUP BY gender;

-- Children with More Recreational than Educational Screen Time
SELECT COUNT(*) AS num_kids_more_recreational,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM ScreenTime_Analysis), 2) AS percentage
FROM ScreenTime_Analysis
WHERE 
Recreational_Screen_Time_hr > Educational_Screen_Time_hr;